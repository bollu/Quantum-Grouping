from qiskit import *
from qiskit.compiler import transpile
from qiskit.visualization import plot_histogram
from qiskit.tools.visualization import *
from qiskit.tools.monitor import job_monitor
from qiskit.visualization import dag_visualization
from qiskit.converters import circuit_to_dag
import os
from ctypes import c_int, addressof
os.environ["PATH"] += os.pathsep + \
    '/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/graphviz'
# IBMQ.load_accounts()


ghz = QuantumCircuit.from_qasm_file("../3_17_13.qasm")
dag = circuit_to_dag(ghz)

def AccessNode(nodeId):
    counter = 1
    global dag
    for node in dag.topological_nodes():
        if (counter == nodeId):
            return node
            break
        counter += 1
# dag_drawer(dag, scale=0.7, filename='pic/3_17_13.png')

idDict = {} # _node_id to dag_id(starting from 0)

idDict2 = {} # _dag_id to inDegreeList_id(starting from 0)

groupResult = []

groupQargs = {}

dagList = []

inDegreeList = []
l1 = []
l2 = []
l3 = []
inDegreeList.append(l1)
inDegreeList.append(l2)
inDegreeList.append(l3)

print("inDegreeList's length is: " + str(len(inDegreeList)))

# 0:nd, 1:inDegree, 2:counter, 3:qargs, 4:successorList, 5:predecessorList

counter = 0
for nd in dag.topological_nodes():
    inDegree = len(list(dag.predecessors(nd)))
    successorList = list(dag.successors(nd)).copy()
    predecessorList = list(dag.predecessors(nd)).copy()
    tempList = [nd, inDegree, counter, nd.qargs, successorList, predecessorList]
    # update inDegreeList
    copyList = inDegreeList[inDegree]
    copyList.append(tempList)
    # update dagList
    dagList.append(tempList.copy())
    # update idDict
    idDict[nd._node_id] = counter
    # update idDict2
    index = len(copyList) - 1
    item = [inDegree, index]
    idDict2[counter] = item

    counter += 1

print("oooooooooooooooooooooooooooooooooooooooooooooooooooooooooo")
counter = 0
for nd in dagList:
    print(str(counter) + " " + nd[0].name + " " + str(nd[1]) )
    counter += 1
print("||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||")


counter = 0
for ls in inDegreeList:
    iterator = 0
    for sls in ls:
        print(str(counter) + " " + sls[0].name + " " + str(sls[1]) + " " + str(sls[2]) + " ", end = " " )
        print("qargs: ", end = " ")
        for qargs in sls[3]:
            print(str(qargs[1]), end = " ")
        print("sucessors: ", end = " ")
        for succ in sls[4]:
            print(succ.name + " " + str(succ._node_id), end = " ")
        print("predecessors: ", end = " ")
        for pred in sls[5]:
            print(pred.name + " " + str(pred._node_id), end = " ")
        print("position is: " + str(iterator))
        iterator += 1
    counter += 1

print("******************************************")
print("|||||||||||||all the tests are done|||||||")
print("|||||||||||||now starts|||||||||||||||||||")
print("******************************************")
# for ls in inDegreeList:
#     # subList stores a list of tempList/nodeObj = [nd, inDegree, counter, nd.qargs, successorList]
#     for subList in ls:

# stores the list of node obj with incoming degree 0
zeroList = inDegreeList[0]

# zeroList contains node(new_node) that has [0:nd, 1:inDegree, 2:counter(dagID), 3:qargs(list of qarg), 4:successorList(of DagNodes), 5:predecessorList(of DagNodes)]
iterator = 0
while iterator < 98:
    print("zeroList's size is: ", end = " ")
    print(len(zeroList), end = " ")  

    node = zeroList[iterator]
    print(str(iterator) + " " + str(node[2]), end = " ")
    predNodeList = node[5]
    indexList = []
     # for each predecessor:
    for predNode in predNodeList:
        dagID = idDict[predNode._node_id]
        index = 0
        # based on dagID, iterate groupResult to find connected components
        while index < len(groupResult):
            # if dagID belongs to a parent group
            if dagID in groupResult[index]:
                indexList.append(index)
                break
    print("correct until line 127", end = " ")
    if len(indexList) == 0:
        newList = []
        newList.append(node[2])
        groupResult.append(newList)
        index = len(groupResult) - 1
        # update groupQargs
        bitSet = set()
        for qarg in node[3]:
            bitSet.add(qarg[1])
        groupQargs[index] = bitSet
    elif len(indexList) == 1:
        index1 = indexList[0]
        copyList = groupResult[index1]
        copyList.append(node[2])
        # update groupQargs
        bitSet = set()
        for qarg in node[3]:
            bitSet.add(qarg[1])
        groupQargs[index1] = groupQargs[index1].union(bitSet)
    else: # len(indexList) == 2
        index1 = indexList[0]
        index2 = indexList[1]
        if (index1 == index2): # belong to the same group
            copyList = groupResult[index1]
            copyList.append(node[2])
        else: # belong to different groups
            # check whether exceeds 2 bits
            bitSet = set()
            for qarg in node[3]:
                bitSet.add(qarg[1])
            copyGroup1 = groupQargs[index1].copy()
            copyGroup2 = groupQargs[index2].copy()
            totalGroup = copyGroup1.union(copyGroup2)
            totalGroup = totalGroup.union(bitSet)
            # if not exceeds 2 bits
            if len(totalGroup) <= 2:
                # merge two group, discard index2   groupResult:[[dagid1, dagid2, dagid3.....],[],[]...] groupQargs:{{0, 1},{},{}...}
                newList = []
                newList.append(node[2])
                totalList = groupResult[index1] + groupResult[index2] + newList
                groupResult[index1] = totalList.copy()
                groupResult[index2].clear()
                groupQargs[index1] = totalGroup
                groupQargs[index2] = set()
            # if exceeds 2 bits
            else:
                copyGroup1 = copyGroup1.union(bitSet)
                copyGroup2 = copyGroup2.union(bitSet)
                if len(copyGroup1) <= 2 and len(copyGroup2) > 2:
                    copyList = groupResult[index1]
                    copyList.append(node[2])
                     # update groupQargs
                    bitSet = set()
                    for qarg in node[3]:
                        bitSet.add(qarg[1])
                    groupQargs[index1] = groupQargs[index1].union(bitSet)
                elif len(copyGroup2 <= 2) and len(copyGroup1) > 2:
                    copyList = groupResult[index2]
                    copyList.append(node[2])
                     # update groupQargs
                    bitSet = set()
                    for qarg in node[3]:
                        bitSet.add(qarg[1])
                    groupQargs[index2] = groupQargs[index2].union(bitSet)
                else: # cannot be grouped into either parent parent, start a new group
                    newList = []
                    newList.append(node[2])
                    groupResult.append(newList)
                    index = len(groupResult) - 1
                    # update groupQargs
                    bitSet = set()
                    for qarg in node[3]:
                        bitSet.add(qarg[1])
                    groupQargs[index] = bitSet
    
    print("number of succNode: " + str(len(node[4])), end = " ")
    # now updating incoming degree of successors
    for succNode in node[4]:
        succNodeId = succNode._node_id
        succNodeDagId = idDict[succNodeId]
        print("succNodeDagId is: " + str(succNodeDagId), end = " ")
        newSuccNode = dagList[succNodeDagId].copy()
        # print("correct succNode: ", end = " ")
        # print(newSuccNode, end = " ")
        succNodeInDegreeId = idDict2[succNodeDagId]
        # move the successor to the list of inDegree - 1
        # first remove it from list of inDegree
        inDegree = succNodeInDegreeId[0]
        index = succNodeInDegreeId[1]
        copyList = inDegreeList[inDegree]
       
        copyList[index].clear()
        # second add it to list of inDegree - 1
        inDegree = succNodeInDegreeId[0] - 1
        copyList2 = inDegreeList[inDegree]
        copyList2.append(newSuccNode)  
        # print("pwrong succNode: ", end = " ")
        # print(newSuccNode, end = " ")
        index = len(copyList2) - 1
        newPos = [inDegree, index]
        idDict2[succNodeDagId] = newPos
        print("new pos:", end = " ")
        print(newPos, end = " ")
        print("succNode position: " + str(inDegree) + " " + str(index), end = " ")
        # print("size of copyList2: " + str(len(copyList2)))
    # del zeroList[0]
    print("next: ", end = " ")
    print(zeroList[0])
    print()
    iterator += 1  


print(groupResult)
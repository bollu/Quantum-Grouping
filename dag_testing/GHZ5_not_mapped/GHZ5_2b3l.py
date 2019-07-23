from qiskit import *
from qiskit.compiler import transpile
from qiskit.visualization import plot_histogram
from qiskit.tools.visualization import *
from qiskit.tools.monitor import job_monitor
from qiskit.visualization import dag_visualization
from qiskit.converters import circuit_to_dag
import os
from ctypes import c_int, addressof
import networkx as nx
import matplotlib.pyplot as plt
from networkx.drawing.nx_pydot import write_dot
import networkx.algorithms.isomorphism as iso
os.environ["PATH"] += os.pathsep + \
    '/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/graphviz'
# IBMQ.load_accounts()
dist_table = []

dist_table_dict = {}

dist_file_dict = {}

basedir = '/home/haoqindeng/Desktop/Quantum-Grouping/dag_testing/examples'
filename_list = os.listdir(basedir)
for item in filename_list:
    path=os.path.join(basedir,item)
    file=os.path.splitext(item)
    filename,typen=file
    if typen == '.qasm':
        parentPath = '../examples/'
        parentPath = parentPath + filename + typen
        print(parentPath)

        ghz = QuantumCircuit.from_qasm_file(parentPath)
        dag = circuit_to_dag(ghz)

        # dag_drawer(dag, scale=0.7, filename='../pic/alu-v2_31.png')

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
            nodeType = nd.type
            tempList = [nd, inDegree, counter, nd.qargs, successorList, predecessorList, nodeType]
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
                print("position is: " + str(iterator), end = " ")
                print (sls[6])
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

        # zeroList contains node(new_node) that has [0:nd, 1:inDegree, 2:counter(dagID), 3:qargs(list of qarg), 4:successorList(of DagNodes), 5:predecessorList(of DagNodes), 6:type]
        iterator = 0
        while iterator < len(dagList) - 3:
            # print("zeroList's size is: ", end = " ")
            # print(len(zeroList), end = " ")  

            node = zeroList[iterator]
            # print(str(iterator) + " " + str(node[2]), end = " ")
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
                    index += 1
            # print("correct until line 127", end = " ")
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
                        elif len(copyGroup2) <= 2 and len(copyGroup1) > 2:
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
            
            # print("number of succNode: " + str(len(node[4])), end = " ")
            # now updating incoming degree of successors
            for succNode in node[4]:
                succNodeId = succNode._node_id
                succNodeDagId = idDict[succNodeId]
                # print("succNodeDagId is: " + str(succNodeDagId), end = " ")
                newSuccNode = dagList[succNodeDagId].copy()
              
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
               
                index = len(copyList2) - 1
                newPos = [inDegree, index]
                idDict2[succNodeDagId] = newPos
                # print("new pos:", end = " ")
                # print(newPos, end = " ")
                # print("succNode position: " + str(inDegree) + " " + str(index), end = " ")
              
            # print("next: ", end = " ")
            # print(zeroList[0])
            # print()
            iterator += 1  

        print(groupResult)

        # eliminate non-op gates

        newGroupResult = []

        for group in groupResult:
            newGroup = []
            for dagID in group:
                if dagList[dagID][6] == 'op':
                    newGroup.append(dagID)
            if len(newGroup) > 0:
                newGroupResult.append(newGroup)

        print(newGroupResult)

        # partition groups

        id_depth_dict = {} # stores dagID->depth

        # node(new_node) that has 
        # [0:nd, 1:inDegree, 2:counter(dagID), 3:qargs(list of qarg), 4:successorList(of DagNodes), 5:predecessorList(of DagNodes), 6:type]

        # mark depth within the group

        it = 0
        for group in newGroupResult:
            # print(it, end = ': ')
            first_dag_id = group[0]
            id_depth_dict[first_dag_id] = 1
            iterator = 1
            while iterator < len(group):
                # print(iterator, end = ' ')
                dag_id = group[iterator]
                node = dagList[dag_id]
                pred_list = node[5] 
                deepest_depth = 1
                # add restriction to pred to only op, also to already detected
                for pred in pred_list:
                    if (pred.type != 'op'):
                        continue
                    pred_node_id = pred._node_id
                    pred_dag_id = idDict[pred_node_id]
                    # print('pred_dag_id is: ' + str(pred_dag_id), end = ' ')
                    if pred_dag_id not in id_depth_dict:
                        continue
                    depth = id_depth_dict[pred_dag_id] + 1
                    if depth > deepest_depth:
                        deepest_depth = depth
                id_depth_dict[dag_id] = deepest_depth
                iterator += 1        
            it += 1
           
        # print(id_depth_dict)

        finalGroupingResult = []

        # divide depth

        for group in newGroupResult:
            iterator = 0
            depth_id_dict = {}
            for dag_id in group:
                depth = int((id_depth_dict[dag_id] + 2) / 3)
                if depth in depth_id_dict:
                    depth_id_dict[depth].append(dag_id)
                else:
                    new_list = []
                    new_list.append(dag_id)
                    depth_id_dict[depth] = new_list
            layer = 1
            while 1 == 1:
                if layer in depth_id_dict:
                    list_copy = depth_id_dict[layer].copy()
                    finalGroupingResult.append(list_copy)
                else:
                    break
                layer += 1

        print(finalGroupingResult)    
        print(id_depth_dict)

        # the format of subgraph: list1: [[0:dag_id, 1:name, 2:[q1, q2]], []], list2: []

        # node(new_node) that has 
        # [0:nd, 1:inDegree, 2:counter(dagID), 3:qargs(list of qarg), 4:successorList(of DagNodes), 5:predecessorList(of DagNodes), 6:type]



        # turn the group into networkx graph
        for group in finalGroupingResult:
            if len(group) <= 1:
                continue
            # reassign qarg values
            qarg_dict = {}
            value_index = 10
            for dag_id in group:
                node = dagList[dag_id]
                qargs = node[3]
                for qarg in qargs:
                    if qarg[1] not in qarg_dict:
                        qarg_dict[qarg[1]] = value_index
                        value_index += 1 
                        
            G = nx.Graph()
            G.clear()
            dumb_node = 'Z'
            for dag_id in group:
                if id_depth_dict[dag_id] % 3 == 1: # if on the first level
                    node = dagList[dag_id]
                    name = node[0].name + '_' + str(dag_id)
                    G.add_nodes_from([name], fill=node[0].name)
                    qargs = node[3]
                    for qarg in qargs:
                        new_qarg = qarg_dict[qarg[1]]
                        G.add_nodes_from([dumb_node], fill='dumb')
                        G.add_weighted_edges_from([(dumb_node, name, new_qarg)])
                        dumb_node = chr(ord(dumb_node) - 1)
                else: # if on the second or third level:
                    node = dagList[dag_id]
                    name = node[0].name + '_' + str(dag_id)
                    G.add_nodes_from([name], fill=node[0].name)
                    qargs = node[3]
                    pred_list = node[5]
                    index = 0
                    for qarg in qargs:
                        new_qarg = qarg_dict[qarg[1]]
                        if index >= len(pred_list):
                            continue
                        pred = pred_list[index]
                        pred_node_id = pred._node_id
                        pred_dag_id = idDict[pred_node_id]
                        pred_node = dagList[pred_dag_id]
                        pred_node_name = pred_node[0].name + '_' + str(pred_dag_id)
                        if pred_dag_id in group: # if in the group, connect them
                            G.add_weighted_edges_from([(name, pred_node_name, new_qarg)])
                        else: # if not in the group connect it to a dumb_node
                            G.add_nodes_from([dumb_node], fill='dumb')
                            G.add_weighted_edges_from([(dumb_node, name, new_qarg)]) 
                            dumb_node = chr(ord(dumb_node) - 1)
                        index += 1 
            # compare with known structures in table_list
        
            em = iso.numerical_edge_match('weight', 10)
            nm = iso.categorical_node_match('fill', 'dumb')
            
            index = 0
            found = False
            while index < len(dist_table):
                H = dist_table[index]
                if nx.is_isomorphic(G, H, node_match=nm, edge_match=em):
                    dist_table_dict[index] = dist_table_dict[index] + 1
                    found = True
                    break
                index += 1
            if not found: # add a new structure
                dist_table.append(G)
                pos = len(dist_table) - 1
                dist_table_dict[pos] = 1

                dist_file_dict[pos] = parentPath


iterator = 0
while iterator < len(dist_table):
    G = dist_table[iterator]
    suffix = str(iterator)
    file_name = '../structures_b2l3/structure_' + suffix
    edge_labels=dict([((u,v,),d['weight'])
                for u,v,d in G.edges(data=True)])
    pos = nx.spring_layout(G)
    nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels)
    nx.draw_networkx(G, pos)
    plt.savefig(file_name)
    plt.clf()
    iterator += 1

print(dist_table_dict)

print(dist_file_dict)

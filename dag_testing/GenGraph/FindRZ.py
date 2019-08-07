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

rz_list = []

# IBMQ.load_account()
reduced_highest_list = []

highest_qasm_list = []

highest_dist_dict = {}

dist_table = []

dist_table_dict = {}

dist_file_dict = {}

qasm_table = []

latency_table = []
# only for testing
i = 0
while i < 800:
    latency_table.append(i)
    i += 1


file_counter = 0

basedir = '/home/haoqindeng/Desktop/Quantum-Grouping/dag_testing/swapped_qasm'
filename_list = os.listdir(basedir)
for item in filename_list:
    path=os.path.join(basedir,item)
    file=os.path.splitext(item)
    filename,typen=file
    if typen == '.qasm':
        parentPath = '../swapped_qasm/'
        parentPath = parentPath + filename + typen
        print(parentPath)

        ghz = QuantumCircuit.from_qasm_file(parentPath)
        
        # device = IBMQ.get_backend('ibmq_16_melbourne')

        # trans_ghz = transpile(ghz, device)

        dag = circuit_to_dag(ghz)

        file_qasm_list = []

        file_qasm_dict = {}

        file_qasm_table = []

        dag_id_depth = {}

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

        # mark depth:


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

        # to be deleted!
        # counter = 0
        # for nd in dag.topological_nodes():
        #     nd.name = nd.name + ' ' + str(counter)
        #     counter += 1
        # dag_drawer(dag, scale=1.0, filename='ising.png')
        # rename nodes into rz, x, y, z, h, s, sdg, t, tdg
        name_dict = {}
        name_dict[0] = 'rz'
        name_dict[1] = 'x'
        name_dict[2] = 'y'
        name_dict[3] = 'z'
        name_dict[4] = 'h'
        name_dict[5] = 's'
        name_dict[6] = 'sdg'
        name_dict[7] = 't'
        name_dict[8] = 'tdg'
        counter = 0
        found_rz = False
        for nd in dag.topological_nodes():
            print(counter, end = ' ')
            if nd.name == 'u1':
                num = int(nd.op.params[0])
                print(num)
                # if (num <= 0):
                #     new_name = 'rz'
                # else:
                new_name = name_dict[num]
                nd.name = new_name
                if new_name == 'rz':
                    found_rz = True
            counter += 1
        if found_rz == True:
            rz_list.append(file_counter)
        file_counter += 1

print(rz_list)
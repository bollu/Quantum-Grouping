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

ghz = QuantumCircuit.from_qasm_file('../../examples2/3_17_13.qasm')
dag = circuit_to_dag(ghz)

counter = 0
for nd in dag.topological_nodes():
    nd.name = nd.name + ' ' + str(counter)
    counter += 1

dag_drawer(dag, scale=0.9, filename='swap_2bnl.png')
# swap_gate = 0

# basedir = '/home/haoqindeng/Desktop/Quantum-Grouping/dag_testing/swapped_qasm'
# filename_list = os.listdir(basedir)
# for item in filename_list:
#     path=os.path.join(basedir,item)
#     file=os.path.splitext(item)
#     filename,typen=file
#     if typen == '.qasm':
#         parentPath = '../../swapped_qasm/'
#         parentPath = parentPath + filename + typen
#         print(parentPath)

#         ghz = QuantumCircuit.from_qasm_file(parentPath)
        
#         # device = IBMQ.get_backend('ibmq_16_melbourne')

#         # trans_ghz = transpile(ghz, device)

#         dag = circuit_to_dag(ghz)

#         # dag_drawer(dag, scale=0.7, filename='../pic/alu-v2_31.png')

#         dag_id_depth = {}

#         idDict = {} # _node_id to dag_id(starting from 0)

#         idDict2 = {} # _dag_id to inDegreeList_id(starting from 0)

#         groupResult = []

#         groupQargs = {}

#         dagList = []

#         one_gate_list = []

#         # dag_id to group index:
#         id_group_index_dict = {}

#         swap_gate_list = []

#         groupIndex_to_distIndex = {}

#         inDegreeList = []
#         l1 = []
#         l2 = []
#         l3 = []
#         inDegreeList.append(l1)
#         inDegreeList.append(l2)
#         inDegreeList.append(l3)

#         print("inDegreeList's length is: " + str(len(inDegreeList)))

#         # mark depth:


#         # 0:nd, 1:inDegree, 2:counter, 3:qargs, 4:successorList, 5:predecessorList

#         counter = 0
#         for nd in dag.topological_nodes():
#             inDegree = len(list(dag.predecessors(nd)))
#             successorList = list(dag.successors(nd)).copy()
#             predecessorList = list(dag.predecessors(nd)).copy()
#             nodeType = nd.type
#             tempList = [nd, inDegree, counter, nd.qargs, successorList, predecessorList, nodeType]
#             # update inDegreeList
#             copyList = inDegreeList[inDegree]
#             copyList.append(tempList)
#             # update dagList
#             dagList.append(tempList.copy())
#             # update idDict
#             idDict[nd._node_id] = counter
#             # update idDict2
#             index = len(copyList) - 1
#             item = [inDegree, index]
#             idDict2[counter] = item

#             counter += 1

#             if nd.name == 'swap':
#                 swap_gate += 1

# print(swap_gate)
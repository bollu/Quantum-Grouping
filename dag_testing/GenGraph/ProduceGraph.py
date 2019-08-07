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

basedir = '/home/haoqindeng/Desktop/Quantum-Grouping/dag_testing/examples_big'
filename_list = os.listdir(basedir)
for item in filename_list:
    path=os.path.join(basedir,item)
    file=os.path.splitext(item)
    filename,typen=file
    print(filename)
    if typen == '.qasm':
        parentPath = '../examples_big/'
        parentPath = parentPath + filename + typen
        print(parentPath)

        ghz = QuantumCircuit.from_qasm_file(parentPath)
        
        # device = IBMQ.get_backend('ibmq_16_melbourne')

        # trans_ghz = transpile(ghz, device)

        dag = circuit_to_dag(ghz)

        output = '../Graphs/' + filename + '.png'
        dag_drawer(dag, scale=1.0, filename=output)
       
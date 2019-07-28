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

ghz = QuantumCircuit.from_qasm_file('../../examples2/0410184_169.qasm')
dag = circuit_to_dag(ghz)

counter = 0
for nd in dag.topological_nodes():
    nd.name = nd.name + ' ' + str(counter)
    counter += 1

dag_drawer(dag, scale=0.7, filename='for_latency.png')
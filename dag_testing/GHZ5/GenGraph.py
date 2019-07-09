from qiskit import *
from qiskit.compiler import transpile
from qiskit.visualization import *
from qiskit.tools.monitor import job_monitor
import qiskit
from qiskit.converters import circuit_to_dag
import os,sys
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
        # copied part
        ghz = QuantumCircuit.from_qasm_file(parentPath)
        dag = circuit_to_dag(ghz)
        fileName = '../pic/' + filename + '.png'
        # dag_drawer(dag, scale=1.0, filename = fileName)

        counter = 0
        for nd in dag.topological_op_nodes():
            nd.name = nd.name + " " + str(counter) + " " + str(nd._node_id)
            counter += 1
        fileName = '../pic2/' + filename + '.png'
        # dag_drawer(dag, scale=1.0, filename = fileName)
    else:
        print("THIS IS NOT QASM")

# ghz = QuantumCircuit.from_qasm_file("../examples/3_17_13.qasm")
# dag = circuit_to_dag(ghz)
# dag_drawer(dag, scale=1.0, filename = '../pic/dag_drawer.png')

# counter = 0
# for nd in dag.topological_op_nodes():
#     nd.name = nd.name + " " + str(counter) + " " + str(nd._node_id)
#     counter += 1
    
# dag_drawer(dag, scale=1.0, filename = '../pic/dag_drawer2.png')
# from qiskit import *
# from qiskit.tools.visualization import *
# from qiskit.converters import circuit_to_dag

# from qiskit.transpiler import PassManager
# from qiskit.transpiler.passes import CommutationAnalysis, CommutationTransformation, CXCancellation
# from qiskit.transpiler import transpile_dag

# qr = QuantumRegister(2, 'qr')
# circuit = QuantumCircuit(qr)
# circuit.cx(qr[0], qr[1]) 
# circuit.z(qr[0]) 
# circuit.cx(qr[0], qr[1]) 

# dag = circuit_to_dag(circuit)
# # circuit.draw(interactive=True, output='latex')

# dag_drawer(dag, scale=0.7, filename='before.png')
# pm = PassManager()
# pm.append([CommutationAnalysis(), CommutationTransformation(), CXCancellation()])

# dag = transpile_dag(dag, pass_manager=pm)
# dag_drawer(dag, scale=0.7, filename='after.png')

from qiskit import *
from qiskit.compiler import transpile
from qiskit.visualization import plot_histogram
from qiskit.tools.visualization import *
from qiskit.tools.monitor import job_monitor
from qiskit.visualization import dag_visualization
from qiskit.converters import circuit_to_dag
from qiskit import IBMQ

IBMQ.load_account()
qr = QuantumRegister(5,'qr')
cr = ClassicalRegister(5, 'cr')
ghz = QuantumCircuit(qr, cr, name='ghz')

ghz.h(qr[2])
ghz.cx(qr[2], qr[1])
ghz.cx(qr[1], qr[0])
ghz.cx(qr[2], qr[3])
ghz.cx(qr[3], qr[4])
ghz.barrier(qr)
ghz.measure(qr, cr)
print(ghz)
dag = circuit_to_dag(ghz)
dag_drawer(dag, scale=0.7, filename='trans_ghz_old.png')
device = IBMQ.get_backend('ibmq_16_melbourne')

trans_ghz = transpile(ghz, device)
print(trans_ghz)
dag = circuit_to_dag(trans_ghz)
dag_drawer(dag, scale=0.7, filename='trans_ghz.png')
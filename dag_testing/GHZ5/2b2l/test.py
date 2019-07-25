
# import xlrd  #引入模块
# # import pandas as pd
# # data = pd.read_csv("../latency_list_original/qasm_list_22.xlsx") 
# # print(data)
# workbook=xlrd.open_workbook("../latency_list_original/qasm_list_22.xlsx")  #文件路径

# worksheet=workbook.sheet_by_index(0)

# nrows=worksheet.nrows  #获取该表总行数
# print(nrows)  #32

# for i in range(nrows): #循环打印每一行
#     print(worksheet.row_values(i)[0])  #以列表形式读出，列表中的每一项是str类型

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
import xlrd  #引入模块

all_results = []

latency_table = []

workbook=xlrd.open_workbook("../latency_list_original/qasm_list_24.csv.xlsx")  #文件路径
worksheet=workbook.sheet_by_index(0)
nrows=worksheet.nrows  #获取该表总行数
for i in range(nrows): #循环打印每一行
    latency_table.append(worksheet.row_values(i)[0])  #以列表形式读出，列表中的每一项是str类型

one_gate_latency_list = ['cx', 't', 'tdg', 'x', 'rz', 'h']
one_gate_latency_dict = {}
one_gate_latency_dict['cx'] = 5.78125
one_gate_latency_dict['t'] = 4.21875
one_gate_latency_dict['h'] = 3.90625
one_gate_latency_dict['tdg'] = 3.90625
one_gate_latency_dict['x'] = 3.90625
one_gate_latency_dict['rz'] = 4.21875

# IBMQ.load_account()
dist_table = []

dist_table_dict = {}

dist_file_dict = {}

qasm_table = []

basedir = '/home/haoqindeng/Desktop/Quantum-Grouping/dag_testing/examples6'
filename_list = os.listdir(basedir)
for item in filename_list:
    path=os.path.join(basedir,item)
    file=os.path.splitext(item)
    filename,typen=file
    if typen == '.qasm':
        parentPath = '../../examples6/'
        parentPath = parentPath + filename + typen
        print(parentPath)

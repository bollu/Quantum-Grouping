
import xlrd  #引入模块
# import pandas as pd
# data = pd.read_csv("../latency_list_original/qasm_list_22.xlsx") 
# print(data)
workbook=xlrd.open_workbook("../latency_list_original/qasm_list_22.xlsx")  #文件路径

worksheet=workbook.sheet_by_index(0)

nrows=worksheet.nrows  #获取该表总行数
print(nrows)  #32

for i in range(nrows): #循环打印每一行
    print(worksheet.row_values(i)[0])  #以列表形式读出，列表中的每一项是str类型

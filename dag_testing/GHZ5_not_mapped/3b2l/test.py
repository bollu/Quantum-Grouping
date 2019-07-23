
import xlrd  #引入模块

workbook=xlrd.open_workbook("lat_2b2l_0.0.xlsx")  #文件路径

worksheet=workbook.sheet_by_index(0)

nrows=worksheet.nrows  #获取该表总行数
print(nrows)  #32

for i in range(nrows): #循环打印每一行
    print(worksheet.row_values(i)[2])  #以列表形式读出，列表中的每一项是str类型

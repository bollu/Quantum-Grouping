# f = open("../latency_list_original/qasm_list_22.txt","r")   #设置文件对象
# data = f.readlines()  #直接将文件中按行读到list里，效果与方法2一样
# f.close()  

data = []
f = open("../latency_list_original/qasm_list_22.txt","r")   #设置文件对象
line = f.readline()
line = line[:-1]
while line:             #直到读取完文件
    line = f.readline()  #读取一行文件，包括换行符
    line = line[:-1]     #去掉换行符，也可以不去
    print(type(line))
    data.append(float(line))
f.close() #关闭文件
print(data)
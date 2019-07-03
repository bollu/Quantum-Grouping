# list1 = [1, 2, 3, 4, 5, 6]
# list2 = [4, 5, 6]
# list3 = list1
# del list3[0]
# list3 = list2
# list3.append(4)
# print(list1)
# print(list2)
# while len(list1) > 0:
#     list1.pop()
#     if len(list1) > 0:
#         list1.pop()
#     list1.append(9)
#     print(list1[-1])
# list1 = []
# list11 = []
# list11.append(1)
# list11.append(2)
# list1.append(list11)
# list12 = []
# list12.append(3)
# list1.append(list12)
# for sublist in list1:
#     print(sublist)

# group = {}
# bitSet = {1, 2}
# bitSet2 = {3, 4}
# bitSet3 = {2, 3}
# group[1] = bitSet
# group[2] = bitSet2
# copyGroup = group[1].copy()
# copyGroup = copyGroup.union(bitSet3)
# print(group[1])

first_list = [1, 2, 2, 5]
second_list = [2, 5, 7, 9]
# result = first_list + second_list
# result = list(dict.fromkeys(result))
result = []
l1 = [1,2]
l2 = [3,4]
result.append(l1)
result.append(l2)
result[0].clear()
print(result)
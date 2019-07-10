# import os,sys
# basedir = '/home/haoqindeng/Desktop/Quantum-Grouping/dag_testing/examples'
# filename_list = os.listdir(basedir)
# for item in filename_list:
#     path=os.path.join(basedir,item)
#     file=os.path.splitext(item)
#     filename,typen=file
#     if typen == '.qasm':
#         print(item)
#     else:
#         print("THIS IS NOT QASM")
# node = 1
# if (node == 1) :
#     node = node + 1
# print(node)

# a = 3
# a = int(a / 2)
# print(a)

import networkx as nx
import matplotlib.pyplot as plt
from networkx.drawing.nx_pydot import write_dot
import networkx.algorithms.isomorphism as iso


G = nx.Graph()
# # G.add_edges_from(1, 3, {'weight' : 200})
# G.add_node(1)
# G.add_weighted_edges_from([(1, 2, 3.0), (1, 3, 7.5)])
# G.add_node("spam")        # adds node "spam"
# G.add_nodes_from("spam")  # adds 4 nodes: 's', 'p', 'a', 'm'
# G.add_edge(3, 'm')
G.add_nodes_from([1, 2, 3], fill='xxx')
G.add_nodes_from([4], fill='yyy')
G.add_weighted_edges_from([(1, 2, 1)])
G.add_weighted_edges_from([(1, 3, 2)])


H = nx.Graph()
H.add_nodes_from(['A', 6, 7], fill='xxx')
H.add_nodes_from([8], fill='yyy')
H.add_weighted_edges_from([('A', 6, 1)])
H.add_weighted_edges_from([('A', 7, 2)])

em = iso.numerical_edge_match('weight', 1)

nm = iso.categorical_node_match('fill', 'xxx') 

print(G.number_of_nodes())

print(list(G.nodes))

print('...........................................')

print(nx.is_isomorphic(G, H, node_match=nm, edge_match=em))



pos = nx.spring_layout(G)

nx.draw_networkx_edge_labels(G, pos, edge_labels={(1, 2):"1, 2", (1, 3):"1, 3"})
nx.draw_networkx(G)
plt.savefig("path.png")

x = 'Z'
x = chr(ord(x) - 1)
print(x)
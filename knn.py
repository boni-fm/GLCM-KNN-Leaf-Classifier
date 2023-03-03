import pandas as pd
import networkx as nx
import matplotlib.pyplot as plt

df = pd.read_csv('/Users/mamer/Downloads/test.csv')
graph_bitcoin2 = nx.from_pandas_edgelist(df, source='source', target='target', edge_attr='edge')


options = {
    "font_size": 5,
    "node_size": 100,
    "node_color": "pink",
    "edgecolors": "black",
    "linewidths": 0.5,
    "width": 0.5,
}
nx.draw_networkx(graph_bitcoin2, **options)

# Set margins for the axes so that nodes aren't clipped
ax = plt.gca()
ax.margins(0.20)
plt.axis("off")
plt.show()
# Tensor Product

Suppose rather than a square matrix, we had a cubic latice, and thus needed three loop variables, $i$, $j$, $k$ to address each element. We can picture this as a cube and write its elements as $A_{ijk}$ (we have arbitrarily used [subscript indices](./tensors-indices.md) - that distinction is irrelevant here).

We can make the outer product $\otimes$ (also known as the tensor product) between this cube and a square matrix $B_{pq}$ by pairing up every combination of their elements and multiplying them.

$$C_{ijkpq} = A_{ijk}B_{pq}$$

This means that $C$ is a 5-dimensional object which seems difficult to picture at first, but there is a completely obvious way to think about it: imagine a square grid addressed by $p$, $q$, and in each cell is a small cube of numbers addressed by $i$, $j$, $k$. So the full address of each number requires five numbers, $p$ and $q$ to find a grid cell and then $i$, $k$, $k$ to locate a cell of the cube found within that grid cell. The number in each piece of a cube (and that cube sitting a grid cell) is the product of the corresponding cells in the original $A$ cube and the $B$ grid.

By the way, we avoid calling it 5-dimensional (even though that is an accurate description of the structure) because we already use dimension to refer to the range of each index: $i \in \set{1, 2, 3}$ would mean three dimensions, even though we have 5 indices like that. So we say the number of indices is the _rank_ of the tensor.

Note that in geometrical tensors we are frequently only interested in index variables that are all of the same dimension: squares, cubes, and so on, because they relate to the dimensionality of the geometric space.

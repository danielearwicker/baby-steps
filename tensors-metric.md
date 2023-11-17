# Metric tensor

To define the distance between two points in space, we can think of a vector reaching from one point to the other. So we just want to compute the length of that delta-vector, $\boldsymbol{D}$ from its coordinates.

In Euclidean space with an orthonormal basis, we use Pythagoras's theorem, which just means that we take the dot product of the vector with itself to get the squared length.

But the dot product is a contraction of rank-2 tensor resulting from the tensor product of the vector with itself. If we don't do the contraction, we get the square matrix $\boldsymbol{S}$:

$$S_{ij} = D_iD_j$$

The diagonal of $\boldsymbol{S}$ is just the squares of the coordinates, the ingredients needed for Pythagoras. The other elements are all possible combinations of the coordinates. We can use a matrix $g_{ij}$ to pick out the ingredients we want to include in our sum:

$$s = g_{ij}S^{ij}$$

So $g_{ij}$ is an example of a [tensor being used as a function](./tensors-as-functions.md), specifically a scalar-valued function of two vectors. If we give it two different vectors it gives us the [inner product](./vectors-inner-product.md) of them, and if we give it the same vector twice, it gives us the square of the magnitude of that vector.

In Euclidean space, $g_{ij}$ is simply the [kroneker delta](./kronecker-delta.md), so that only the diagonal elements are included in the sum. In curved space it has other values.

Note that there is much redundancy in such a matrix because $D_1D_2$ is the same as $D_2D_1$. For example, in a 4-dimensional space there are 16 matrix elements but only 10 are needed (the 4 of the diagonal and 6 from either side of the diagonal).

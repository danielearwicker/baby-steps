# Vectors as geometric objects

What is a two dimensional vector? A common starting point is to say it's two numbers, and we very often casually refer to a column like this as a vector:

$$
\begin{bmatrix}3 \\ 2\end{bmatrix}
$$

But for the purposes of physics (classical physics at least), vectors are primarily geometric objects. They can be described with numeric coordinates, but there is no preferred coordinate basis.

To understand what we are giving up, it may help to initially visualise the space of plane vectors as having some intrinsic coordinate grid built into it, so every vector in that space "knows" its own numeric coordinates, being fixed to that grid.

But to think about vectors in an abstract way, it's best not to assume anything about their nature except that they meet the requirements of a [vector space](./vectors-spaces.md).

For some unknown vector space that we assert to be two dimensional, a pair of numbers only describes a vector if we have a basis $\begin{bmatrix}\vec{e}_1 & \vec{e}_2\end{bmatrix}$ to multiply by:

$$
\begin{bmatrix}\vec{e}_1 & \vec{e}_2\end{bmatrix}
\begin{bmatrix}3 \\ 2\end{bmatrix}
= 3\vec{e}_1 + 2\vec{e}_2
$$

A property of a vector is that you can multiply it by a scalar to get another vector (unless you multiply by 1, in which case you get the same vector), and another property is that you can add two vectors (placing them end to end) to get another vector. So an expression such as:

$$3\vec{e}_1 + 2\vec{e}_2$$

describes a new vector that we have produced by mixing together two basis vectors. Any vector in the space can be described in this way. And therefore any vector can be decomposed into coordinates, but only once you have chosen some basis vectors.

It's not necessarily possible to say anything numerically about a single vector, because it can't be described numerically without introducing basis vectors to measure it against. A vector has a length and a direction, but these things can only be measured in relation to other vectors.

A vector space is a set of vectors, and we can if we like think of the vectors in the space as having an absolute existence, but we cannot say that there is one correct perspective to view those vectors from, any more than we can assume the North Pole is the "top" of the Earth, nor one correct scale to measure them by.

All we can say is that there is some angle between two vectors, or some ratio between the lengths of two vectors.

It follows that we cannot meaningfully communicate our choice of basis to anyone in terms of that basis alone. The coordinates of our two chosen basis vectors, if we express them in terms of our basis itself, are always:

$$e_1 = \begin{bmatrix}1 & 0\end{bmatrix}$$

$$e_2 = \begin{bmatrix}0 & 1\end{bmatrix}$$

That is, $\vec{e}_1$ contains 1 unit of itself and nothing of $\vec{e}_2$, and the reverse situation for $\vec{e_2}$. This is like saying "it is what it is." It looks like the identity matrix (this is not a coincidence):

$$
\begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix}
$$

The realisation of this relativistic nature of vectors can produce confusion, just as may occur when we first encounter the idea that position in physical space is not absolute, velocity is not absolute, etc. It just has to be accepted. But we can suppose the existence of an intrinsic hidden absolute basis, a coordinate grid, and use this as a mental crutch to stabilise ourselves, while gradually developing an understanding that this crutch is not necessary.

The question remains: how do we identify a set of basis vectors? If we have an [inner product](./vectors-inner-product.md) then we can pick an orthonormal basis, because we can make sure each basis vector is of unit length (inner product with self is $1$) and all are mutually orthogonal (inner product is $0$).

## See also

-   [Standard basis](https://en.wikipedia.org/wiki/Standard_basis)

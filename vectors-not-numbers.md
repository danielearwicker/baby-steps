# Vectors are not collections of numbers

What is a two dimensional vector? It's tempting to say it's two numbers, and we very often casually refer to a column like this as a vector:

$$
\begin{bmatrix}3 \\ 2\end{bmatrix}
$$

To get a foothold in thinking about vectors it may help to visualise the space of plane vectors as having some intrinsic coordinate grid built into it, so every vector in that space "knows" its own numeric coordinates, being fixed to that grid.

But the numbers only describe a vector if we have a basis $\begin{bmatrix}\vec{e}_1 & \vec{e}_2\end{bmatrix}$ to multiply by:

$$
\begin{bmatrix}\vec{e}_1 & \vec{e}_2\end{bmatrix}
\begin{bmatrix}3 \\ 2\end{bmatrix}
= 3\vec{e}_1 + 2\vec{e}_2
$$

A property of vector is that you can multiply by a scalar to get another vector (unless you multiply by 1, in which case you get the same vector), and another property is that you can add two vectors (placing them end to end) to get another vector. So an expression such as:

$$3\vec{e}_1 + 2\vec{e}_2$$

describes a new vector that we have produced by mixing together two basis vectors. Any vector in the space can be described in this way. And therefore any vector can be decomposed into coordinates, but only once you have chosen some basis vectors.

Numbers alone do not make a vector. You have to assume the prior existence of some basis vectors $\vec{e}_n$.

It's not possible to say anything numerically about a single vector. A vector has a length and a direction, but these things can only be measured in relation to other vectors.

A vector space is the set of all possible vectors, and we can if we like think of the vectors in the space as having an absolute existence, but we cannot say that there is one correct perspective to view those vectors from, any more than we can assume the North Pole is the "top" of the Earth, nor one correct scale to measure them by.

All we can say is that there is some angle between two vectors, or some ratio between the lengths of two vectors.

It follows that we cannot meaningfully communicate our choice of basis to anyone in terms of that basis alone. The coordinates of our two chosen basis vectors, if we express them in terms of our basis itself, are always:

$$e_1 = \begin{bmatrix}1 & 0\end{bmatrix}$$

$$e_2 = \begin{bmatrix}0 & 1\end{bmatrix}$$

That is, $\vec{e}_1$ contains 1 unit of itself and nothing of $\vec{e}_2$, and the reverse situation for $\vec{e_2}$. This is like saying "it is what it is." It looks like the identity matrix (this is not a coincidence):

$$
\begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix}
$$

The realisation of this relativistic nature of vectors can produce confusion, just as may occur when we first encounter the idea that position in physical space is not absolute, velocity is not absolute, etc. It just has to be accepted. But we can suppose the existence of an intrinsic hidden absolute basis, a coordinate grid, and use this as a mental crutch to stabilise ourselves, while gradually developing an understanding that this crutch is not necessary.

## See also

-   [Standard basis](https://en.wikipedia.org/wiki/Standard_basis)

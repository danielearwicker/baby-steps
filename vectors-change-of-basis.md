# Change of Basis

A matrix can be used to:

-   map vectors to a new length and direction in the same basis, or
-   perform a coordinate conversion on vectors so they remain the same vectors but expressed in different numerical coordinates.

The mathematical machinery is identical.

Viewed as an operator, the matrix may have eigenvectors only in some directions. The operator is therefore a geometrical object just as a vector is, and the matrix elements may be numerically different depending on the basis, just as the coordinates of a vector may differ depending on the basis, despite describing the very same objects regardless of the basis chosen.

Viewed as a coordinate converter, the matrix effectively depends on two bases, the one being converted from and the one being converted to.

## Effect of change of basis on vectors

A plane vector $\vec{v}$ in some basis can be expressed in coordinates as a column matrix $V$:

$$V = \begin{bmatrix}3 \\ 4\end{bmatrix}$$

And with the basis as a row matrix:

$$E = \begin{bmatrix}\vec{e_1} & \vec{e_2}\end{bmatrix}$$

Matrix multiplication builds the vector:

$$\vec{v} = EV = 3\vec{e_1} + 4\vec{e_2}$$

We can create a matrix that will double the length of the basis vectors:

$$G = \begin{bmatrix}2 & 0 \\ 0 & 2\end{bmatrix}$$

By the rules of matrix multiplication the bases needs to be on the left:

$$E' = EG = \begin{bmatrix}2\vec{e_1} & 2\vec{e_2}\end{bmatrix}$$

What coordinates would $\vec{v}$ have in this new basis $E'$? Intuitively the coordinates need to be halved to refer to the same vector. So we need the inverse of $G$, written as $G^{-1}$, which shrinks the coordinates, so we'll call it:

$$S = G^{-1} = \begin{bmatrix}0.5 & 0 \\ 0 & 0.5\end{bmatrix}$$

And so our vector's coordinates become:

$$V' = SV = \begin{bmatrix}1.5 \\ 2\end{bmatrix}$$

This is the same vector as before, just in different coordinates:

$$\vec{v} = EV = E'V'$$

We say that vectors are _contravariant_ under a change of basis.

## Dot product

The [dot product](./vectors-dot-product.md) depends on the lengths of two vectors and the angle between them. If the vectors are represented as coordinates in some basis, then a change of basis will change the coordinates. Will the dot product change too? It depends.

If the basis vectors are only rotated or reflected, this preserves both lengths and angles, so the dot product will be unaffected.

If the basis vectors are scaled, the lengths implied by the coords will change and so the dot product will change. To take the above example, we grow the basis vectors with $G$, having the equivalent effect on the coordinates to shrinking the input vectors with $S$ to half their original length, and so the dot product will be $\frac{1}{4}$ of its original value.

If the basis vectors are skewed, this will have the equivalent effect on the coordinates of skewing the input vectors, changing the angle between them.

## Covectors

A covector is a scalar-valued linear function of a vector that performs the dot product using a pre-determined other vector.

$$f_n(\vec{v}) = \vec{e_n} \cdot \vec{v}$$

In other words, every vector has a corresponding covector which extracts a coordinate along the direction of that vector.

It can be expressed as a row matrix with scalar components. For example the coordinates of a basis vector $\vec{e_n}$ could be written as a row matrix:

$$E_n = \begin{bmatrix}1 & 0\end{bmatrix}$$

This is a covector, distinguished by being a row rather than a column. So to apply the covector is just matrix multiplication:

$$E_nV$$

where $V$ is the column matrix of the coordinates of the input vector $\vec{v}$.

We can construct such a function for all $n$ basis vectors, and these form a basis in the so-called dual space of all possible covectors, which is itself a vector space, each covector being defined by only by a set coordinates.

Following the above narrative our $\vec{v}$ is now expressed as $V'$, having been shrunk by $S$ to work in basis $E'$. We now want evaluate $F_n$ on $V'$, but there is an incompatibility of basis, because $F_n$ has the $n$-th basis vector of $E$ in its definition.

Or to put it simply, the coordinates in $V'$ have been shrunk, whereas $F_n$ only works correctly with unshrunk coordinates.

We can fix this by pre-converting the input vector:

$$E_nGV$$

This new covector applies matrix $G$ to the input, growing it so it becomes compatible with $E_n$. But as can be easily verified, it makes no difference to the result whether we evaluate $GV$ or $E_nG$ first; this is the beauty of linear functions. Thus we can produce an amended row-matrix based on the original:

$$E'_n = E_nG$$

It has a built-in "growth factor", and so is compatible with vectors that have been shrunk.

This means that under a change of coordinate systems, where the basis vectors have had $G$ applied to them, covectors must also have $G$ applied to them. This is the opposite of what has to happen to vectors.

As a result we say covectors are _covariant_ (this is the source of the name covector).

## Operators

We began by discussing how a matrix can be interpreted as a way to convert coordinate vectors from one basis to another, preserving the same meaning, or as a way to produce a different vector in the same basis.

Considering the latter use, i.e. linear [operators](./vectors-operators.md) that transform vectors, what effect does a change of basis have on an operator?

An operator that performs only scaling (e.g. $G$ and $S$) is symmetrical, treating all directions equivalently. So under a change of basis that is a pure rotation, there is no need to amend the operator's matrix representation.

But some operators are biased with regard to direction. To characterise the behaviour of an operator we can consider those vectors which are scaled by it without their direction being altered; that is, the effect of the operator is to multiply some inputs by a scalar (if the scalar is negative, the resulting vector is co-linear with the input vector, which we regard as not a significant change!) Such vectors are called the _eigenvectors_ of the operator, and the corresponding scalar values are the _eigenvalues_.

So in the case of $S$ and $G$, all input vectors are eigenvectors: all inputs get only scaled, and always by the same eigenvalue.

But a reflection is different (call it $M$ for mirror):

$$M = \begin{bmatrix}1 & 0 \\ 0 & -1\end{bmatrix}$$

If we take the first coordinate to be horizontal and the second vertical, this flips the input vector to point up rather than down, or vice versa. So it seems that all vectors have their direction changed and are not eigenvectors, but there are exceptions: vectors that lie on the horizontal axis and have no vertical component will be unaffected, i.e. they will be eigenvectors with eigenvalue 1. So within the space of input vectors, there is a subspace (the _eigenspace_) of eigenvectors, and $M$ has an intrinsic orientation, as there is a particular line around which reflection occurs.

A rotation, e.g. by a right-angle anti-clockwise:

$$R_A = \begin{bmatrix}0 & -1 \\ 1 & 0\end{bmatrix}$$

or clockwise:

$$R_C = \begin{bmatrix}0 & 1 \\ -1 & 0\end{bmatrix}$$

has no eigenvectors, as it uniformly changes the direction of every vector (note that the zero vector is not considered a candidate for an eigenvector; regardless of the operator, it goes from length zero to length zero, so an eigenvalue cannot be deduced.)

If we apply $R_A$ to our basis vectors, all our non-zero vectors' coordinates will need to change (while still being the same vectors, of course.) This means, just as we had to fix our covector, we now need to come up with the matrix $M'$ that mirrors around the same line as $M$ did in the un-rotated basis. We say that $M'$ and $M$ represent the same operator in different coordinate systems.

This time it will be a three step process:

-   adjust the input vector so it is expressed in $M$-compatible ("pre-rotation") coordinates
-   apply $M$ to the pre-rotation coordinates, to get the reflected vector in pre-rotation coordinates
-   adjust the reflected vector into post-rotation coordinates

As we applied $R_A$ to the basis vectors, that means we must have applied $R_C$ to all the column matrices representing our vectors in coordinate form (clockwise rotation being the inverse of anti-clockwise rotation). So the three steps appear to the left of our input $V$:

$$M'V = R_CMR_AV$$

In English, reading from the right, take the input $V$, rotate it anti-clockwise (to undo the clockwise rotation we assume has been performed on it), then apply the original $M$ matrix for reflection, then rotate clockwise.

As with the covector example, we can ditch the example input $V$ and just compute the matrix by itself for later use with any $V$:

$$M' = R_CMR_A$$

So the matrix $M'$ represents the same operator as $M$ in the anti-clockwise rotated coordinate system.

When it comes to classifying this as covariant or contravariant, we have a puzzle. It was necessary to perform both kinds of coordinate transformation here.

There is a general pattern to these examples, vectors, covectors and operators, which is captured in the notion of a [tensor](./tensors-product.md).

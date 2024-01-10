### Effect of change of basis on vectors

## Dot product

### Effect of change of basis on dot product

## Covectors

### Effect of change of basis on covectors

## Two meanings of a square matrix

-   shift of basis for same vector
-   map to another vector in same basis

### Effect of change of basis on linear operator

## Eigenvectors of an operator

-   relative to a given operator $\hat{O}$, there may be some vectors that are just multiplied by a scalar called the eigenvalue of that eigenvector.

-   some operators are symmetric e.g. scaling, so have no intrinsic orientation, all vectors are eigenvectors.

-   Others are not symmetric and therefore only pick out certain directions as eigenvectors. The operator has an orientation of its own.

-   Generally therefore operators captured as a matrix consist of numbers that depend on the choice of basis.

## Complex vectors

-   complex conjugation

-   why we have to do conjugate a vector to get the dot product to work correctly

-   hermitian matrices, their implications

## Operators have a direction

Represent the basis vectors as row matrices using coordinates relative to the basis defined by the basis vectors themselves. We can even define them as a matrix, the row index $i$ identifying the basis vector and the column $j$ identifying one of its coordinates:

$$e_{ij} = \begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix}$$

We can generalise this to any number of dimensions using the Kroneker delta:

$$
\delta_{ij} = \begin{cases}
0 &\text{if } i \neq j,   \\
1 &\text{if } i=j.   \end{cases}
$$

And so

$$
\hat{A}\vec{v} =
\sum_{ij}\delta_{ij}{A_{ij}v_j} =
$$

Forgetting our previous use of the indicies $i, j$ and now interpreting them as:

-   $i$ tells us which vector: $\vec{e_i}$
-   $j$ tells us which coordinate, so $e_{ij}$ is a scalar, the $j$-th coordinate of the $i$-th vector.

Then the coordinates of the basis are given by the Kroneker delta:

$$e_{ij} = \delta_{ij}$$

It's a matrix arranged so that each row is a vector, and each column is a coordinate, and it is the identity matrix.

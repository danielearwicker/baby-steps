# Summation and indices

The term $x_n$ can refer to any countable set of elements, each element associated with a unique integer.

We can define an operator $+$ that combines two values, but we need to be clear about what it accepts and returns. We can take elements $x_1$ and $x_2$ and add them to get $x_1 + x_2$, but that result may not correspond to any member of our subset $x_n$.

So the values of $x_n$ will generally be drawn from a larger set. For example, the elements could be real numbers, but $x_n$ could not represent the entire set of real numbers, even if $n$ goes on forever, because there are more real numbers than there are integers, so it is not possible to label every real number with a unique integer.

Having calculated $x_1 + x_2$, we can then add to that $x_3$, and so on until we've reduced it to a single element that is the sum of all the elements. The shorthand for this is:

$$\sum_n{x_n} = x_1 + x_2 + x_3 + \dots + x_n$$

In school we learn to label cartesian coordinates as $x$, $y$, $z$, and basis vectors $\vec{i}$, $\vec{j}$, $\vec{k}$. The labels are arbitrary and confusing; it is not immediately clear that $x$ belongs with $i$, $y$ belongs with $j$, that they pair up in a specific way. Also what if we want more than three dimensions?

All this is avoided if we use an index to refer to each dimension, so our coordinates are $x_n$ and our basis vectors are $e_n$. It's obvious how they pair up, and that $n$ can go up to any number of dimensions we require.

Any vector $\vec{v}$ is a linear combination (a weighted sum) of basis vectors, which we can now write as:

$$\vec{v} = \sum_n{x_n e_n}$$

We can also define a set of values that depends on more than one index, e.g. $A_{ij}$ has a different value for each combination of the indices $i$ and $j$. With two indices we can lay out all the values in a two-dimensional grid, e.g. suppose both $i$ and $j$ can take the values $\set{1, 2}$:

$$\hat{A} = \begin{bmatrix}A_{11} & A_{12} \\ A_{21} & A_{22}\end{bmatrix}$$

And if we have a column vector $\vec{v} = \begin{bmatrix}v_1 \\ v_2\end{bmatrix}$ we can now say what it means to multiply it by the matrix:

$$
\hat{A}\vec{v} =
\begin{bmatrix}A_{11} & A_{12} \\ A_{21} & A_{22}\end{bmatrix}
\begin{bmatrix}v_1 \\ v_2\end{bmatrix}
$$

We can say that each row $i$ of the resultant column vector is given by:

$$
v_i = \sum_j{A_{ij} v_j}
$$

But this is a set of summations, one per row. How can we capture the result in a single summation? By using basis vectors, $e_n$. As we saw, our vector $\vec{v}$ is a linear combination of the basis vectors, so:

$$
\hat{A}\vec{v} =
\hat{A}\sum_{i}e_i v_i =
\sum_{ij}e_i{A_{ij}v_j}
$$

The basis vectors allow us to combine several scalar values into a single geometrical object without loss of information. $e_1$ represents a unit of horizontal movement (say), and $e_2$ a unit of vertical movement, and the combination $x_1e_1 + x_2e_2$ is a single vector that incorporates movement both horizontally and vertically, and we can extract back from it the component motions.

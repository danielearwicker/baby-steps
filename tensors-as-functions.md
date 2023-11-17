# Tensors as functions

Sometimes a tensor is defined as a scalar valued function of vectors. It might be more accurate to say that any tensor _can be employed_ as such, i.e. a function that accepts $n$ vectors (given by its rank, $n$) and produces a scalar. However, in the same way, supposing its rank is high enough, it can be employed as a function that accepts $n-1$ vectors and produces a vector, or accepts $n-2$ vectors and produces a matrix, etc.

If $\boldsymbol{T}$ is a rank-3 tensor with coordinates $T_{ijk}$, and if we have three rank-1 tensors (vectors) with coordinates $A^i$, $B^j$ and $C^k$ we can evaluate $\boldsymbol{T}$ by [summation notation](./tensors-einstein.md):

$$
\boldsymbol{T(A,B,C)}
= T_{ijk}A^iB^jC^k
= \sum_i\sum_j\sum_kT_{ijk}A^iB^jC^k
$$

This is not purely the [tensor product](./tensors-product.md) - we've also chosen to perform [contraction](./tensors-contraction.md) three times, by repeating each of the three indices.

What happens if we only have two vectors available to us at the moment? We can partially apply the tensor:

$$
\boldsymbol{T(\_,B,C)}
= T_{ijk}B^jC^k
= \sum_j\sum_kT_{ijk}B^jC^k
= V_i
$$

Note that in the component summation, the index $i$ is not summed over - it's unbound, or free, and so the expression is a way to compute the $i$-th component of a vector $\boldsymbol{V}$. So in a sense, we have treated the rank-3 tensor as a vector-valued function of two vectors. Or if you prefer, a function of two vectors that produces a function of one vector.

But we can "finish the job" whenever we obtain $\boldsymbol{A}$:

$$
\boldsymbol{V(A)}
= V_{i}A^i
= \sum_i{V_iA^i}
$$

And we have no free indices, so the result is a scalar. This freedom to apply $\boldsymbol{T}$ to $\boldsymbol{B}$ and $\boldsymbol{C}$ first, and then apply the result of that to $\boldsymbol{A}$, shuffling the order of operations, is part of the essence of tensors. Ultimately all we are doing is multiplying sets of numbers, and then summing them up, so the order in which we do these things is up to us; it makes no difference to the result, _as long as we are consistent_ in matching [subscript indices to superscript indices](./tensors-indices.md).

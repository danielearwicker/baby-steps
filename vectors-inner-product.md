# Inner Product

An inner product is a scalar-valued operator between two vectors:

$$\langle \vec{p},\vec{q}\rangle$$

A vector space equipped with such an operator is called an _inner product space_.

The most well known example is the [dot product](./vectors-dot-product.md).

To qualify as an inner product an operator must satisfy certain properties. It must be commutative:

$$\langle \vec{p},\vec{q}\rangle = \langle \vec{q},\vec{p}\rangle$$

This is obviously true for the dot product as we simply multiply matched components and then sum them. Denoting the $i$-th component by $p_i$ and $q_i$:

$$\sum_i p_i q_i = \sum_i q_i p_i$$

We also require:

$$\langle \vec{p}+\vec{r},\vec{q}\rangle = \langle \vec{p},\vec{q}\rangle + \langle \vec{r},\vec{q}\rangle$$

Again this is obviously true as it's just multiplying out each term of the summation:

$$\sum_i (p_i + r_i)q_i = \sum_i p_iq_i + r_iq_i$$

The inner product notation is simply telling what is true of each term.

The next requirement ($\alpha$ being some scalar constant) is therefore no surprise:

$$\langle \alpha \vec{p},\vec{q}\rangle = \langle \vec{p},\alpha \vec{q}\rangle = \alpha \langle \vec{p},\vec{q}\rangle$$

and so we are always just summing the product $\alpha p_i q_i$ and the order makes no difference to the result.

There are further requirements that are discarded in some contexts:

$$\langle \vec{p},\vec{p}\rangle \geq 0$$

For the Euclidean dot product we're squaring the coordinates $p_i$ so the result must be positive. But in Relativity we allow negative ("spacelike") intervals, which is why this requirement is not always applied.

Finally, $\langle \vec{p},\vec{p}\rangle = 0$ if and only if $\vec{p}$ is the zero vector. Again this could be untrue in Relativity if the time and space contributions cancel out ("lightlike").

Generalising on the dot product, we can introduce a second summation index $j$ and make all the combinations $p_iq^j$, and then decide how much of a contribution to the sum each combination should make by controlling it with a matrix $A^i_j$ and now [per Einstein](./tensors-einstein.md) we can say:

$$p_i A^i_j q^j$$

Which is equivalent to putting the transpose of $\vec{p}$ on the left, the matrix $\mathbf{A}$ in the middle and $\vec{q}$ on the right and doing matrix multiplication (and it doesn't matter how we group the operations):

$$\vec{p}^\intercal\mathbf{A}\vec{q}$$

Indeed, the above requirements on an inner product effectively mean that any inner product must be expressible in this form.

In the standard dot product, we are only interested in the diagonal combinations, $p_i q_j$ where $i=j$, but this is equivalent to saying that $\mathbf{A}$ is the identity matrix or the [kroneker delta](./kronecker-delta.md).

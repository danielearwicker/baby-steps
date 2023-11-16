# Vector operators

An operator $\hat{O}$ is a function that maps from vectors to vectors. That is, the input is a vector and so is the output. It may change the length or direction of the vector.

We are particularly interested in [linear](/linarity.md) operators, for which:

$$\hat{O}(x\vec{i} + y\vec{j}) = x\hat{O}\vec{i} + y\hat{O}\vec{j}$$

Why? Because if you have chosen your basis $\vec{i}, \vec{j}$ and so you can express all vectors in coordinates $(x, y)$, i.e. as simple "weighted sums" of your two basis vectors, $x\vec{i} + y\vec{j}$, then to apply $\hat{O}$ to a vector, all you need to know is $\hat{O}\vec{i}$ and $\hat{O}\vec{j}$.

By applying the operator to the basis vectors, you discover two new basis vectors:

$$\vec{i'} = \hat{O}\vec{i}$$
$$\vec{j'} = \hat{O}\vec{j}$$

The coordinates you would use to express an input vector:

$$\vec{v} = x\vec{i} + y\vec{j}$$

can be used to mix these new basis vectors and get the result of applying the operator to the input vector:

$$\hat{O}\vec{v} = \hat{O}(x\vec{i} + y\vec{j}) = x\vec{i'} + y\vec{j'}$$

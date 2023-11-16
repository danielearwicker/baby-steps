# Dot Product

> Also known as the scalar product (an exact synonym), sometimes as "the inner product" (not an exact synonym, as there are other ways to define an [inner product](./vectors-inner-product.md)).

The dot product is a scalar-valued operator between two vectors, $\vec{p}\cdot\vec{q}$. It has the same scalar value under a change of coordinate system, as long as the basis vectors remain the same length and orthogonal (i.e. under rotation or reflection).

If the two vectors $\vec{p}$ and $\vec{q}$ are separated by angle $\theta$, and we know the magnitude (length) of each vector, e.g. $\|\vec{p}\|$, then

$$
\vec{p}\cdot\vec{q} =
\|\vec{p}\| \|\vec{q}\|\cos{\theta}
$$

Aside from the immediately obvious fact that it is commutative (swapping the vectors makes no difference), the behaviour of $\cos$ has some implications.

First, as $\cos{0} = 1$, for vectors pointing in the same direction we just multiply their magnitudes. Further, the dot product of a vector with itself is the square of the magnitude:

$$\vec{p}\cdot\vec{p} = \|\vec{p}\|^2$$

And of course if its a unit vector, the result is $1^2 = 1$.

Second, as $\cos{\pi} = -1$, for vectors pointing in opposite directions, the result is the same but negative: $-\|\vec{p}\| \|\vec{q}\|$.

Third, as $\cos(\pi/2) = \cos(3\pi/2) = 0$ orthogonal vectors have dot product equal to zero. So given a Euclidean basis (a set of orthonormal basis vectors) $\vec{e_n}$:

$$\vec{e_i} \cdot \vec{e_j} = \delta_{ij} $$

(See [Kronecker delta](./kronecker-delta.md))

Note that this is an observation about a set of orthonormal vectors, so even though we've used indices to label directions, we aren't talking about coordinates _yet_.

## Finding coordinates

It's also interesting to consider the dot product of any vector $\vec{p}$ with a unit vector, such might make a suitable basis vector $\vec{e_n}$. If $\vec{p}$ is in the same direction as $\vec{e_n}$, the dot product is just $\|\vec{p}\|$. If orthogonal, it's zero.

For angles between, consider the right triangle, where:

$$\cos \theta = \frac{adjacent}{hypotenuse}$$

So if the hypotenuse is our vector $\vec{p}$, hence of length $\|\vec{p}\|$ and the side adjacent to $\theta$ is a vector in the same direction as one of our unit basis vectors $\vec{e_n}$ scaled by some factor we will call $p_n$, which is therefore the magnitude of that vector and the length of the adjacent side:

$$\cos \theta = \frac{p_n}{\|\vec{p}\|}$$

Then:

$$
\vec{p}\cdot\vec{e_n}
= \|\vec{p}\| \|\vec{e_n}\|\cos{\theta}
= \|\vec{p}\| \|\vec{e_n}\|\frac{p_n}{\|\vec{p}\|}
= \|\vec{e_n}\|p_n
$$

But $\vec{e_n}$ is a unit vector so $\|\vec{e_n}\|$ is 1, and therefore:

$$
\vec{p}\cdot\vec{e_n} = p_n
$$

So it is the _projection_ of $\vec{p}$ on to $\vec{e_n}$, which is to say it is the $n$-th coordinate, $p_n$ of $\vec{p}$. Thus we can reconstitute $\vec{p}$ by summation:

$$
\vec{p}
= \sum_n{\vec{e_n} p_n}
= \sum_n{\vec{e_n} \left( \vec{p} \cdot \vec{e_n} \right)}
$$

That is, $\vec{p}$ is the sum of its component vectors, each of which is a basis vector scaled by a coordinate, that coordinate being the result of the dot product between $\vec{p}$ and the basis vector.

## Homogeneous

Intuitively, a triangle scales linearly. If the hypotenuse is scaled by some factor $k$, the adjacent side will also scale by $k$:

$$
k(\vec{p}\cdot\vec{e_n})
= (k\vec{p})\cdot\vec{e_n}
$$

So the dot product is _homogeneous_.

## Distributive

Vector addition also has a useful simplifying property. Consider two vectors $\vec{q}$ and $\vec{r}$. Each has a component along basis vector $\vec{e_n}$, so:

$$\vec{q} \cdot \vec{e_n} = q_n$$
$$\vec{r} \cdot \vec{e_n} = r_n$$

If we picture $\vec{q}$ and $\vec{r}$ laid head to tail, the total distance travelled in the direction of $\vec{e_n}$ is $q_n + r_n$, or:

$$
\vec{p} \cdot (\vec{q} +\vec{r} )
= \vec{p} \cdot \vec{q} +\vec{p} \cdot \vec{r}
$$

This means the dot product is _distributive_ over vector addition.

## Do not interchange scalar and dot product

It may be worth drawing attention to a tempting manipulation that is not valid:

$$
\vec{p} \left( \vec{q} \cdot \vec{r} \right) \ne \vec{q} \left( \vec{p} \cdot \vec{r} \right)
$$

Each side multiplies either $\vec{p}$ or $\vec{q}$ by a scalar. It doesn't matter that the scalar is obtained from the dot product; it's just a scalar. Multiplying a vector by a scalar will not change its direction, so there is no reason the results will be in the same direction.

## Using coordinates

Having done the hard work (computing $\cos$) in order to obtain the coordinates, things subsequently become much easier. Given a basis $\vec{e_n}$ and a pair of vectors, $\vec{p}$ and $\vec{q}$, with coordinates $p_n$ and $q_n$, so:

$$\vec{p} = \sum_n \vec{e_n}p_n$$
$$\vec{q} = \sum_n \vec{e_n}q_n$$

For the dot product, using the coordinate form of $\vec{p}$:

$$
\vec{p}\cdot\vec{q} =
\left[ \sum_n{\vec{e_n}p_n} \right] \cdot \vec{q}
$$

As the dot product is distributive over addition, that means we can move it inside the summation:

$$
\vec{p}\cdot\vec{q} =
\sum_n \left[ \vec{e_n} p_n \cdot \vec{q} \right]
$$

And because it is homogeneous, we can gather the vectors:

$$
\vec{p}\cdot\vec{q} =
\sum_n p_n \left[ \vec{q} \cdot \vec{e_n} \right]
$$

But $\vec{q} \cdot \vec{e_n}$ is the projection of $\vec{q}$ on to $\vec{e_n}$, that is, it is the coordinate $q_n$ of $\vec{q}$ in the direction of $\vec{e_n}$, so:

$$
\vec{p}\cdot\vec{q} = \sum_n p_nq_n
$$

And so for two vectors expressed as coordinates in a common basis, we just multiply their corresponding coordinates and sum the results, which is ridiculously simple (no $\cos$ at all), and which is why the coordinate approach is so attractive for calculation.

In the case where $\vec{p} = \vec{q}$:

$$
\vec{p}\cdot\vec{p} = \sum_j {p_j}^2
$$

Which is Pythagorus's theorem, agreeing with our earlier claim that the dot product of a vector with itself is the square of the magnitude.

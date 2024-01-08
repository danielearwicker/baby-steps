Starting with the familiar Euclidean metric:

$$r^2 = x^2 + y^2$$

We want to express this in terms of $x$ and $y$ in "first order" (that is, not squared). We can square-root both sides:

$$r = \sqrt{x^2 + y^2}$$

But it's not distributive so we're stuck on the RHS. Let's assume there are some magical objects $A$ and $B$ such that:

$$r = Ax + By$$

Of course there will be suitable numerical values for $A$ and $B$ given some specific pair of $x$, $y$ values but the challenge here is to find $A$ and $B$ for all possible $x$ and $y$, producing the same value as the square root of the sum of their squares.

To find out more about them, we can square both sides:

$$r^2 = (Ax + By)^2$$

And we've defined $r^2$ as the sum of the squares of $x$ and $y$, so:

$$x^2 + y^2 = (Ax + By)^2$$

Multiplying out the RHS, it has four terms:

$$
x^2 + y^2
= AAx^2 + ABxy + BAxy + BBy^2
$$

Note that we've been careful not to assume $A$ and $B$ are commutative, as they are magical objects of a kind unknown to us so far (where as $x$ and $y$ are ordinary numbers).

And indeed, from the above we can see some obvious constraints on them by pairing up the terms with the LHS:

-   $AA$ and $BB$ must both be $1$.
-   $AB$ and $BA$ must either both be zero, or have equal magnitude and opposite sign (anti-commutative).

The second one is worth emphasising: we cannot assume that AB and BA are both zero just because they don't appear in the LHS, only that they sum to zero. It's possible but not necessary for them each to be zero.

Note that the dot product of a unit vector with itself is 1, while the dot product of two orthogonal vectors is zero. It's no surprise these objects fit the bill, given that they are the two short sides of a right triangle, of which the sum is the vector lying on the hypotenuse. This is not quite right however:

$$r = \vec{i}x + \vec{j}y$$

because $r$ is not a vector; we intended it to be the magnitude of a vector. We can fix the equation by introducing a unit vector $\vec{h}$ in the direction of the hypotenuse, whatever that might be (it's of no interest to us as we're not doing trigonometry today):

$$\vec{h}r = \vec{i}x + \vec{j}y$$

$$(\vec{h}r)^2 = (\vec{i}x + \vec{j}y)^2$$

$$\vec{h}^2 r^2 = \vec{i}^2x^2 + 2\vec{i}\vec{j}xy + \vec{j}^2y^2$$

$$r^2 = x^2 + y^2$$

It's like we're saying that all scalars can be thought of as the length of some vector whose direction we don't presently care about. But as noted, we've just come full circle (or triangle).

We can also meet these requirements with matrices:

$$A = \begin{bmatrix}1 & 0 \\ 0 & -1\end{bmatrix}$$

$$
B = \begin{bmatrix}0 & 1 \\ 1 & 0\end{bmatrix}
$$

So that:

$$AB = \begin{bmatrix}0 & 1 \\ -1 & 0\end{bmatrix}$$

$$BA = \begin{bmatrix}0 & -1 \\ 1 & 0\end{bmatrix}$$

which means:

$$BA = -AB$$

and:

$$AA = BB = \begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix} = I$$

Technically we're getting the identity matrix $I$ instead of 1, so we've actually found that:

$$Ir = Ax + By$$

which is again close enough (this time we're saying that any apparently ordinary number can instead be thought of as the matrix you get from multiplying $I$ by that number - a "scaled" identity matrix).

Not all situations are as simple as the Euclidean case. Consider Minkowski spacetime:

$$s^2 = t^2 - x^2$$

This defines the [interval](./relativity.md) $s$ as the time measured by a clock travelling inertially between two events that an inertial observer measures as being separated by time $t$ and distance $x$. Suddenly we're taking the difference rather than the sum which complicates matters considerably. Repeating the above exercise to find an $A$ and $B$ such that:

$$s = At + Bx$$

and doing the same business of squaring both sides and substituting the definition on the LHS:

$$t^2 - x^2 = (At + Bx)^2$$

And multiplying out:

$$
t^2 - x^2
= AAt^2 + ABtx + BAtx + BBx^2
$$

So this time we require that:

-   as before, $AA$ must be $1$.
-   but now, $BB$ must $-1$.
-   as before, $AB$ and $BA$ must either both be zero, or have equal magnitude and opposite sign (anti-commutative).

It's like we need to be able to "program" the system in a general way to be able to produce the right behaviour. Using matrices gives us ample flexibility:

$$A = \begin{bmatrix}-1 & 0 \\ 0 & 1\end{bmatrix}$$

$$
B = \begin{bmatrix}0 & -1 \\ 1 & 0\end{bmatrix}
$$

So that:

$$AB = \begin{bmatrix}0 & 1 \\ 1 & 0\end{bmatrix}$$

$$BA = \begin{bmatrix}0 & -1 \\ -1 & 0\end{bmatrix}$$

$$BA = -AB$$

and:

$$AA = \begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix} = I$$

but:

$$BB = \begin{bmatrix}-1 & 0 \\ 0 & -1\end{bmatrix} = -I$$

So all requirement met, we have matrices $A$ and $B$ such that:

$$Is = At + Bx$$

> Is this right? Does linearity mean that if the matrices meet the requirements then they work?

# Complex vector spaces

Any vector space is defined over a _field_. This is unrelated to the physics meaning of "field", a value defined at each point in a space. Here a field is any set of objects with binary operators for addition, subtraction, multiplication and division that behave like those of the real numbers, so $\mathbb{R}$ is a field.

But as complex numbers meet this criterion therefore $\mathbb{C}$ is also a field, and therefore a vector space may be complex, and have complex coordinates.

Even the simplest non-trivial example, $\mathbb{C^2}$, is not directly imaginable, because although each vector requires two coordinates, each of those is a complex number incorporating a real and imaginary part, so each vector requires four real numbers to describe it, and so $\mathbb{C^2}$ can be mapped to $\mathbb{R^4}$, which is impossible to visualise directly.

Even so, concepts applicable to real vector spaces also work for complex, although with some modifications. The main issue is determining the modulus, for which we must introduce an [inner product](./vectors-inner-product.md).

If we use the usual dot product definition then we have a problem because we naturally expect the modulus to be a positive real number. Summing the squares of the components of a complex vector could well produce a negative result, and then we need to take the square root to get the modulus, so the modulus wouldn't even be a real number.

To ensure $\langle \vec{u}, \vec{v} \rangle$ is real and positive, we amend the inner product so that we first take the complex conjugate of one its arguments:

$$
\langle \vec{u}, \vec{v} \rangle
=
\vec{u}^* \cdot \vec{v}
$$

This has the complicating side-effect that commutativity:

$$
\langle \vec{u}, \vec{v} \rangle
=
\langle \vec{v}, \vec{u} \rangle
$$

no longer applies. But who says it needs to? We instead make the requirement be:

$$
\langle \vec{u}, \vec{v} \rangle
=
\left[ \langle \vec{v}, \vec{u} \rangle \right]^*
$$

This is sometimes called conjugate symmetry. If all the components are real then complex conjugation makes no difference and commutativity is restored, so the nice thing is that we've amended the rule in a way that is "backward compatible" with real vectors.

This does mean that when taking the inner product of two different complex vectors, it matters which one we take the complex conjugate of. In physics the convention is to take the conjugate of the LHS vector.

The general form of the inner product, where we supply a matrix to control how to pair up and weight the coordinates, is similarly amended.

We use the dagger $^\dagger$ symbol to mean conjugate transpose, where we transpose a matrix (so turn a column vector into a row) and also take the complex conjugate of every element. It's equivalent to applying both $^\intercal$ and $^*$.

$$
\langle \vec{u}, \vec{v} \rangle
=
u^\dagger \mathbf{M} v
$$

As usual if $\mathbf{M}$ is [$\delta$](./kronecker-delta.md) then this reduces to the first definition given above. It should at least be be self-adjoint or Hermitian, which is to say that:

$\mathbf{M}^\dagger = \mathbf{M}$

It follows that every element is the complex conjugate of its diagonally opposing element, and that therefore elements on the diagonal are real (they aren't moved by the transposition and so must equal their own complex conjugates).

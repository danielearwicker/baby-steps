## Vectors Spaces

If [vectors are not collections of numbers](./vectors-geometric.md) it's important to be clear what they are. A vector space is a set of objects that meet certain abstract criteria. As soon as we can identify a way of meeting all the criteria, the set of objects is a vector space and the objects are vectors.

It may be worth throwing out any preconceptions about vectors based on picturing arrows drawn on grid paper and just say that there is a set of mysterious "objects" of which we will state some abstract properties, but leave anything else unspecified.

## They can be added

There is an operator $+$ that takes two objects from the set and returns another from the same set (so it's a closed operator).

This operator is commutative:

$$\vec{u} + \vec{v} = \vec{v} + \vec{u}$$

and associative:

$$\vec{u} + (\vec{v} + \vec{w}) = (\vec{v} + \vec{u}) + \vec{w}$$

There is a special object called $0$, which makes no difference when added to any object from the set:

$$\vec{v} + 0 = \vec{v}$$

Also every object has an opposite, known as its additive inverse, so they pair up. The inverse of $\vec{v}$ is written as $-\vec{v}$, and:

$$\vec{v} + (-\vec{v}) = 0$$

The above can written as $\vec{v} - \vec{v}$.

## They can be scaled

There is an associated set of objects called scalars, typically restricted to real or complex numbers. Our objects can be multiplied by a scalar to get another object. Scaling them by $1$ makes no difference. Scaling them by $-1$ discovers the additive inverse.

Given two scalars $a$ and $b$, we can compute $c = ab$ and then scale an object $\vec{v}$ by it, or we can separate scale the object first by $a$ and then by $b$, and the result is the same:

$$(ab)\vec{v} = a(b\vec{v})$$

Scaling is distributive over addition of objects:

$$a(\vec{u} + \vec{v}) = a\vec{u} + a\vec{v}$$

And also over addition of scalars:

$$(a + b)\vec{v} = a\vec{v} + b\vec{v}$$

## The Field

A vector space's set of scalars is known as its field. It can be any sort of object for which we can define addition, subtraction, multiplication and division, so real or complex numbers usually serve this purpose, but there exist vectors that cannot serve as a field of scalars for other vector spaces. For example, familiar geometric vectors cannot be multiplied and divided in a way that is closed.

## Examples

Any set of objects for which we can define these operations is a vector space. This means that the real numbers $\mathbb{R}$ and complex numbers $\mathbb{C}$ themselves qualify as vector spaces.

Ordered pairs of real numbers, $\mathbb{R^2}$, clearly also qualify, because addition can add the first and second pair members separately, scaling can scale both of the members, and then all the other requirements follow automatically.

In [quantum wave mechanics](./quantum-continuous.md) the vectors are functions that associate a complex value with each point in space, so in a simplified one-dimensional picture, $\mathbb{R} \mapsto \mathbb{C}$. Although these building blocks deal with a continuum, once we think of them as vectors we cease to think about the continuous nature of $\mathbb{R}$, because we just identify a _countable_ ($\mathbb{Z}$-like) infinity of basis vectors and then build all other vectors by weighted sums of the basis vectors. Thus every vector is described by a countable collection of (complex) weightings, which are the coordinates of the vector.

# Tensors as geometric objects

The point of tensors is to produce the same value from a computation regardless of the coordinate system chosen. This means the tensor is a geometric object: its description in terms of coordinates is not fundamental. It has magnitude and direction (if rank-2 it has two directions, and so on.)

It also means that for a tensor there is a rule governing how its coordinates must change under a [change of basis](./vectors-change-of-basis.md). The whole point of this rule is to ensure that the change of basis does not affect the result.

If we treat a rank N tensor as a scalar-valued function of N vectors, some changes of basis will make no difference to the result, but others will. Those transformations to the basis under which the scalar value of a tensor is invariant are commonly known as rotations, although they also include mirroring.

A well known example of a scalar valued function of two vectors is the dot product, which depends on the length of the two vectors and the angle between them. A rotation changes none of these factors. Whereas a scale change will change the number used to measure each vector's length, and so must change the output. It's no different from deciding to work in yards rather than metres.

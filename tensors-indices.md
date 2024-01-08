# Superscript and Subscript Indices

When considering matrices (which is to say, rank-2 tensors) we think of the superscript index as the row and the subscript as the column. So a column vector's coordinates are superscripted, whereas a row vector's are subscripted. And so a matrix can be thought of as a set of column vectors side by side, or a set of row vectors stacked in layers.

This is not a meaningful rule with higher rank tensors.

In fact the true rule is that a contravariant index is superscript while a covariant index is subscript. And then the convention with matrices is that rows are covariant and columns are contravariant. This matches up with our convention of writing ordinary vectors (contravariant) as columns and covectors (covariant) as rows.

A matrix can be thought of as a stack of row vectors. Each row defines a function for extracting a coordinate from a column vector, relative to a basis vector.

We can quite happily produce a [tensor product](./tensors-product.md) mess such as:

$$C^{ip}_{jkq} = A^{i}_{jk}B^{p}_{q}$$

In the tensor product, if an index is superscript in a source tensor, it remains a superscript in the output tensor, and the same for subscripts.

The various indices have each been arbitrarily thrown into one of the two available locations. In terms of the arithmetical machinery they all behave identically, but preserving these two types ensures that the resulting tensor will be transformable under a change of basis.

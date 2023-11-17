# Tensor Contraction

In the [tensor product](./tensors-product.md) there are no repeated indices in the terms so [Einstein notation](./tensors-einstein.md) tells us there is no [summation](./summation.md).

To introduce summation will mean collapsing cells together, reducing the rank of the structure. This allows us to arrive at the [dot product](./vectors-dot-product.md) in a roundabout, two-stage process.

If we do the tensor product on two rank-1 tensors, $A_i$ and $B^j$, the result $C^j_i$ is a a rank-2 tensor (a matrix).

$$A \otimes B = C^j_i = A_iB^j$$

> We've been careful here to follow a convention in assigning [superscript and subscript indices](./tensors-indices.md) so $A_i$ is a row and $i$ denotes the column within that row, and $B^j$ is a column and $j$ denotes the row within that column. We then always place the row on the left and the column on the right.

To obtain the dot product, we throw away everything but the main diagonal of that grid, all the elements where $i=j$, and we sum those elements. The [Kroneker delta](./kronecker-delta.md) expresses this:

$$A \cdot B = \sum_i\sum_j{A_iB^j\delta_{ij}}$$

But equally, thanks to Einstein notation, we can think of this as using a single index variable:

$$A \cdot B = A_iB^i$$

Because _i_ appears twice in the term (once each as a subscript and a superscript), this is a summation of the diagonal elements.

The result is a single scalar value, also known as a rank-0 tensor. So the above process (known as _contraction_) has reduced the rank by 2, and this in fact is what always happens regardless of the rank of the tensors involved.

The only rule is that the contraction must involve one subscript and one superscript index. The arithmetic will blindly work if this rule is broken, but the result will not have [geometrical](./tensors-geometric.md) meaning.

We can arrive at [matrix multiplication](./matrix-multiplication.md) in the same way. If we do the tensor product on two rank-2 tensors (matrices), $A^i_j$ and $B^p_q$, the result $C^{ip}_{jq}$ is a rank-4 tensor (a grid of grids?)

$$A \otimes B = C^{ip}_{jq} = A^i_jB^p_q$$

Let's perform contraction C by replacing $p$ with $j$ (this is a valid thing to do because $j$ is a subscript and $p$ is a superscript, so they are the opposite kinds of index; we could have chosen $i$ and $q$ instead).

$$C^i_q = A^i_jB^j_q$$

As $j$ is now a repeated (dummy) index, this is a summation. We're doing something similar to taking the diagonal of a matrix, and we can reorganise our visualisation $C^{ip}_{jq}$ to something much simpler than a hypercube, via the trick of thinking about nested grids.

Picture a square grid addressed by $i$, $q$, and in each of its cells there is another grid of numbers, addressed by $j$, $p$, and those numbers are each the product $A^i_jB^p_q$. So when we say that $p = j$, we're literally taking a diagonal of each of the nested grids, to get a set of numbers $A^i_jB^j_q$ that we sum together, so we end up with a single number in each cell of the outer grid, and it becomes merely a square grid of numbers, $C^i_q$.

Note how once again the raw tensor product saw its rank fall by two, from four to two. Also note that the combination of tensor product between two rank-2 tensors, followed by a contraction, to get a new rank-2 tensor, is arithmetically equivalent to matrix multiplication. We can even (although this is rarely applicable) relax the rule that all the indices must be of the same dimension, and only require the indices that we contract to be the same dimension (as of course they must be, otherwise how would they pair up?)

So we've found a generalisation of the dot product and matrix multiplication that extends to tensors of any rank.

Note that in the definition of matrix multiplication, we combine the tensor product and reduction into a single operation, which saves some effort, but it also disguises something: it appears we never have to choose which indices to eliminate in the contraction. Matrix multiplication has a built-in decision to eliminate two specific indices.

This comes from the fact that the matrix indices are classified as either rows (superscript) or columns (subscript), and one matrix is on the left and the other on the right. So multiplying two square matrices $\boldsymbol{A}$ and $\boldsymbol{B}$, to obtain $\boldsymbol{C}$ we use the same index for the subscript on the left and the superscript on the right:

$$C^i_j = A^i_nB^n_j$$

To spell this out:

$$
\begin{bmatrix}C^1_1 & C^1_2 \\ C^2_1 & C^2_2\end{bmatrix}
= \begin{bmatrix}A^1_nB^n_1 & A^1_nB^n_2 \\ A^2_nB^n_1 & A^2_nB^n_2\end{bmatrix}
= \begin{bmatrix}A^1_1B^1_1 + A^1_2B^2_1 & A^1_1B^1_2 + A^1_2B^2_2 \\ A^2_1B^1_1 + A^2_2B^2_1 & A^2_1B^1_2 + A^2_2B^2_2\end{bmatrix}
$$

If we instead used the same index for the left superscript and the right subscript, we wouldn't get the same answer.

$$A^n_iB^j_n \ne A^i_nB^n_j$$

But if we then reverse the order of the matrices, which does not affect the answer, we restore the "left subscript, right superscript" rule:

$$A^n_iB^j_n = B^j_nA^n_i$$

And this is exactly what we find with matrix multiplication. By interchanging the two input matrices, we effectively change the decision as to which indices to eliminate in the contraction, and that is why matrix multiplication is noncommutative.

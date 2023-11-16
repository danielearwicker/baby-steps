# Einstein Notation

Where we sum over terms where the summation variable (in this case $n$) appears twice, once as superscript and once as subscript, which happens a lot, Einstein got tired of writing the summation symbol so many times and so adopted the convention of omitting it:

$$C^i_j = A^i_nB^n_j$$

Note that where we apply this to transformations on a geometric space, the number of dimensions determines the range of every loop variable. So in 3 dimensions, $i$, $j$ and $n$ are all $\in\set{1, 2, 3}$.

Also bear in mind that the distinction between subscript and superscript indices is going to be important, and in Einstein's summation notation the repeated variable in a term must appear once as a subscript and once as a superscript index, as will become clear later on.

The summation loop variable $n$ (known as a _bound_ or _dummy_ variable) is clearly different from the other two variables. We are not summing over $i$ or $j$, because we are preserving separate matrix cell values $C^i_j$ in the output, not mixing them together.

Einstein's notation always makes it unambigious what operations we are performing. if there are no repeated indices, there is no summation: we're doing the tensor product.

$$C^i_j = A^iB_{j}$$

This literally just tells us how to compute the element $(i, j)$ of $\bold{C}$, by multiplying the $i$-th element of $\bold{A}$ and the $j$-th element of $\bold{B}$.

If there is at least one repeated element, we're doing contraction, i.e. summation:

$$E^i = C^i_jD^j$$

This is telling us how to compute the $i$-th element of $\bold{E}$, by summing over $j$ the element $(i, j)$ of $\bold{C}$ multiplied by the $j$-th element of $\bold{D}$.

So there's never any ambiguity, but also it's not necessary to say whether you're doing the tensor product or contraction.

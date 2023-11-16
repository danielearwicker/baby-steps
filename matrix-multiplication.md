# Matrix multiplication

The right side matrix is pushed up (out of the way) to make room for the output matrix, the shape of which is given by projecting the rows of the left matrix to the right, and the columns of the right (upper) matrix down. Where these projections intersect we place the output matrix cells. Then we pair of the columns of the left and the rows of the right to create the terms that are added to fill each output cell.

Therefore the entire operation involves three nested loops. The outer two loops allow us to visit each output cell. The innermost loop pairs up left columns and right rows. So if we're multiplying $A$ and $B$ to get $C$:

$$C = AB$$

In summation notation, with (to begin with) superscripts meaning rows and subscripts meaning columns, we can define the cell at row $i$ and column $j$ of $C$ as follows:

$$C^i_j = \sum_n{A^i_nB^n_j}$$

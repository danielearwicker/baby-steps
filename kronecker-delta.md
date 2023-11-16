## Kronecker Delta

This is a compact way of referring to the identity matrix in [summations](./summation.md). The diagonal elements are 1, all others are zero, which is awkward to represent in a stretchy way:

$$
\hat{I} = \begin{bmatrix}
1 & 0 & 0 & \dots & 0 \\
0 & 1 & 0 & \dots & 0 \\
0 & 0 & 1 & \dots & 0 \\
\vdots & \vdots & \vdots & \ddots & \vdots\\
0 & 0 & 0 & \dots & 1
\end{bmatrix}
$$

So instead we define the Kroneker delta, which has two indices representing row and column (the order is not important due to the symmetry of the identity matrix):

$$
\delta_{ij} = \begin{cases}
0 &\text{if } i \neq j,   \\
1 &\text{if } i=j.   \end{cases}
$$

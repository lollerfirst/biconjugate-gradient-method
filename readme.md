# Biconjugate Gradient Method

The BiConjugate Gradient (BiCG) method is a numerical technique used for solving linear systems of equations of the form  $A\mathbf{x} = \mathbf{b}$ , where **A** is a square, nonsingular matrix, and **b** is a known vector. BiCG is an iterative method, belonging to the family of Krylov subspace methods, and is particularly useful when dealing with large sparse matrices. It is often employed in various scientific and engineering applications, including computational fluid dynamics, finite element analysis, and image processing.

The BiCG method is designed to solve complex and non-symmetric linear systems efficiently, and it converges to the solution much faster than traditional methods, such as the Gaussian elimination or LU decomposition, especially for large systems. It operates by iteratively refining an initial guess for the solution until a satisfactory approximation is reached.

## Why Use the BiCG Method?

The BiCG method has several advantages that make it a valuable tool in scientific computing:

* **Applicability:** BiCG can handle a wide range of linear systems, including those that are non-symmetric, ill-conditioned, and large-scale.
* **Memory Efficiency:** It is suitable for problems with sparse matrices, as it does not require storing the entire matrix in memory.
* **Convergence:** The method often converges rapidly, reducing the number of iterations needed to find a solution.
* **Parallelism:** It can be parallelized, taking advantage of modern multi-core processors and distributed computing environments.

## Convergence Graph

The following plot represents the log-scaled error norm of the residual vector with respect to the iterations:
![](https://raw.githubusercontent.com/lollerfirst/biconjugate-gradient-method/main/Screenshot%20from%202023-10-14%2021-11-48.png?token=GHSAT0AAAAAACH6LNWB35ENJTYLIG3S52YEZJLUCNQ)

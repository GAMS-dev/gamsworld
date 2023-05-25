# Principle Component Analysis
Given L data points in R^n (z_l, l=1,2,...,L), the problem is to find an n-m dimensional hyperplane that best represents the data points. Mathematically, the problem is to find an mxn matrix A whose rows are orthonormal to each other and an n vector a that minimizes sum_l || A(z_l - a) ||^2.

The "robust" model is a robust version of the PCA model. That is, it minimizes the sum of the Euclidean distances rather than the sum of their squares.


https://vanderbei.princeton.edu/ampl/nlmodels/pca/index.html

Total number of models:   3

| Name   | Type | #Eqns | #Vars | #NZ  | #NNZ |
|--------|------|------:|------:|-----:|-----:|
| pca    | NLP  | 5     | 10    | 28   | 27   |
| pca2   | NLP  | 50    | 99    | 1282 | 1281 |
| robust | NLP  | 10    | 25    | 130  | 129  |

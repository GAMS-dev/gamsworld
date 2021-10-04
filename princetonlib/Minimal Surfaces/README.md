# Minimal Surfaces

https://vanderbei.princeton.edu/ampl/nlmodels/minsurf/index.html

Given a domain D on the plane and a real-valued height function defined on the boundary of D, the problem is to find the surface that has the given boundary values and that minimizes the surface area. This problem is convex and can be easily converted to a second-order cone optimization problem.

The specific problem coded in the models below takes D to be a square and the boundary height function to be concave quadratic on each of the four sides.

Total number of models:   4

| Name              | Type | #Eqns | #Vars | #NZ   | #NNZ | Bestknown Objective |
|-------------------|------|-------|-------|-------|------|---------------------|
| minsurf           | NLP  | 1     | 1090  | 1090  | 1089 | 7.61984638          |
| minsurf_exp       | NLP  | 2049  | 3138  | 10241 | 8192 | 13.45527365         |
| minsurf_nonconvex | NLP  | 2049  | 3138  | 10241 | 8192 | 13.59792547         |
| minsurf_socp      | NLP  | 2049  | 3138  | 10241 | 6144 | 10.65215101         |

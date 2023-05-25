# Stengel Problems

https://vanderbei.princeton.edu/ampl/nlmodels/stengel/index.html

The problems here are taken from examples in R.F. Stengel, "Optimal Control and Estimization", Dover.

The first four problems involve moving a resting cart 10m in 10s using as little total applied acceleration as possible.

In ex3.3.1a, the acceleration is assumed to be constant. The constraint on final position is replaced with a quadratic penalty term in the objective function.

In ex3.3.1b, the acceleration is assumed to vary linearly with time.

In ex3.3.1c, the final velocity is not required to be zero. Instead a quadratic penalty term is added to the objective function.

Ex3.4.1 is a variant of ex3.3.1b. In it, no assumption on the form of the acceleration is made. It is discovered that the assumption of linearity in ex3.3.1b was in fact optimal.


Total number of models:   5

| Name     | Type | #Eqns | #Vars | #NZ  | #NNZ |
|----------|------|------:|------:|-----:|-----:|
| ex3_3_1a | NLP  | 1600  | 1603  | 4800 | 2    |
| ex3_3_1b | NLP  | 2399  | 2403  | 7995 | 800  |
| ex3_3_1c | NLP  | 2399  | 2403  | 7996 | 801  |
| ex3_4_1  | NLP  | 1600  | 2402  | 5599 | 801  |
| ex3_5_1  | NLP  | 897   | 1200  | 3283 | 994  |

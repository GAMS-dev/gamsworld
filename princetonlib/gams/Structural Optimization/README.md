# Structural Optimization

The structural optimization models in this directory are based on various equivalent formulations of the minimum compliance structural optimization problem as described in in "Optimization methods for truss geometry and topology design", Bendsoe, Ben-Tal, and Zowe, Structural Optimization, 141-159, 7, 1994.
https://vanderbei.princeton.edu/ampl/nlmodels/structure/index.html


Total number of models:   10

| Name                  | Type | #Eqns | #Vars | #NZ   | #NNZ | Bestknown Objective |
|-----------------------|------|-------|-------|-------|------|---------------------|
| structure             | NLP  | 480   | 3651  | 8446  | 0    | 0.00000000          |
| structure2            | NLP  | 2664  | 535   | 8521  | 0    | 75.10582011         |
| structure3            | NLP  | 1507  | 535   | 4607  | 3914 | 75.10582011         |
| structure4            | NLP  | 735   | 1527  | 5696  | 5680 | 0.03090083          |
| structure5            | NLP  | 50    | 120   | 439   | 364  | 331.74262795        |
| structure6            | NLP  | 197   | 457   | 1774  | 1512 | 0.00000000          |
| structure7            | NLP  | 226   | 498   | 1997  | 1740 | 0.45690000          |
| structure8            | NLP  | 5     | 948   | 984   | 956  | 0.00000000          |
| structure9            | NLP  | 257   | 555   | 2258  | 1984 | -0.06604800         |
| structure_socp_vareps | NLP  | 1904  | 5135  | 11681 | 4629 | 0.01000000          |
# Power Flow Optimization

How to dispatch electric power system variables in order to minimize an operation criteria, while attending load and feasibility.
https://vanderbei.princeton.edu/ampl/nlmodels/power/index.html

Total number of models:   7

| Name   | Type | #Eqns | #Vars | #NZ   | #NNZ  | Bestknown Objective |
|--------|------|-------|-------|-------|-------|---------------------|
| aopf4  | NLP  | 1445  | 1773  | 2466  | 1021  | 22611367.85641560   |
| dcopf2 | NLP  | 736   | 1569  | 5222  | 0     | 25422.42000000      |
| dcopf4 | DNLP | 3456  | 3384  | 19525 | 0     | 6.84114075          |
| dcopf  | NLP  | 34    | 49    | 242   | 0     | 1.27100000          |
| opf4   | NLP  | 7476  | 9730  | 41759 | 33521 | 2726.93826941       |
| pf4    | NLP  | 3     | 239   | 583   | 580   | 0.12695404          |
| ropf4  | DNLP | 420   | 768   | 2301  | 1677  | 0.06359695          |
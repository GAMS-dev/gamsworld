* rosenbr.mod   OUR2-AN-2-0
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Rosenbrock function

* Ref.: J. J. More', B. S. Garbow, K. E. Hillstrom, "Testing Unconstrained
* Optimization Software", ACM Transactions on Mathematical Software,
* vol.7, no.1, 1981, pp. 17-41.

* Original reference:
* H. H. Rosenbrock, "An Automatic Method for Finding the Greatest or Least
* Value of a Function", Computer J., v. 3, 1960, pp. 175-184.

* Number of variables:  2
* Number of constraints:  0
* Objective nonseparable, nonconvex

SET  I /1*2/;

Variable X[I],
         f1
         f2
         norm;

Equation first ,
         second,
         Defobj;

first..  f1 =e= 10*(x['2'] - sqr(x['1']));
second.. f2 =e= 1 - x['1'];
Defobj.. norm=e=sqr(f1) + sqr(f2);

x.l['1']=  -1.2 ;
x.l['2']=   1.0 ;

Model rosenbr /all/;
Solve rosenbr  using nlp minimize norm;
display norm.l;

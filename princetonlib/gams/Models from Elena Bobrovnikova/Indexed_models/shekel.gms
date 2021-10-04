* shekel.mod    OUR2-AN-4-8
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, p. 39 (problem "S5").

* Shekel function

* Number of variables:  4
* Number of constraints:  8

* The global minimum is Fsh = -10.1532,
* x = (4.00004, 4.00013, 4.00004, 4.00013).

* There are 5 local minima with f ~ -1/c[i] and x approximately at a[i,*].

* Objective nonseparable nonconvex
* Simple bound constraints

Set I /1*5/;
Set J /1*4/;
parameter c[I] / 1 0.1,2 0.2,3 0.2,4 0.4,5 0.4 / ;
table a[I,J]
          1   2   3   4
    1     4   4   4   4
    2     1   1   1   1
    3     8   8   8   8
    4     6   6   6   6
    5     3   7   3   7   ;

Positive Variable x[j] ;
Variable Fsh           ;
Equation Defobj        ;
Defobj.. Fsh=e=-sum{I,(1/(sum{J,(sqr(x[j]-a[i,j]) )}+c[i]))};

x.lo[j] = 0;
x.up[j] = 10;
x.l[j]  =ord(j);

Model shekel  /all/;
Solve shekel  using nlp minimize Fsh;

display Fsh.l;

* weapon.mod    OLR2-MN-100-147
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Weapon assignment problem

* Ref.: D. M. Himmelblau, Applied Nonlinear Programming,
* McGraw-Hill Book Company, New York, 1972.  Problem 23.

* Number of (integer) variables:  100
* Number of constraints: 112 (147 after presolve adds more bounds)
* Objective nonseparable
* Objective nonconvex
* Linear constraints

$Set N   5
$Set M  20

set I /1*%N%/;
set J /1*%M%/;

set K(j) /1,6,10,14,15,16,20/;

parameter  b[j] /1 30  ,6 100 ,10 40 ,14 50 ,15 70 ,16 35, 20 10 /;

parameter  c[I] /1 -200,2 -100,3 -300,4 -150,5 -250              /;

parameter  u[j]  / 1  60, 5  40,   9  25,  13 125,  17 100,
                   2  50, 6  60,  10 150,  14 200,  18 100,
                   3  50, 7  35,  11  30,  15 200,  19 100,
                   4  75, 8  30,  12  45,  16 130,  20 150 /;
table a[i,j]
   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
1  1  .95  1   1   1  .85 .90 .85 .80  1   1   1   1   1   1   1   1  .95  1   1
2 .84 .83 .85 .84 .85 .81 .81 .82 .80 .86  1  .98  1  .88 .87 .88 .85 .84 .85 .85
3 .96 .95 .96 .96 .96 .90 .92 .91 .92 .95 .99 .98 .99 .98 .97 .98 .95 .92 .93 .92
4  1   1   1   1   1   1   1   1   1  .96 .91 .92 .91 .92 .98 .93  1   1   1   1
5 .92 .94 .92 .95 .95 .98 .98  1   1  .90 .95 .96 .91 .98 .99 .99  1   1   1   1  ;

Positive Variable x[I,J];
         Variable f     ;

Equation  cc[j]  ,
          bb[i]  ,
          defobj ;

defobj..      f=e= sum{j,u[j]*(prod{i,(exp(log(a[i,j])*x[i,j]))}-1)};
cc[j]$K(j)..  sum{i,(x[i,j])} =g= b[j];
bb[I]..      -sum{j,(x[i,j])} =g= c[i];

Model weapon /all/;
Solve weapon using nlp minimize f;

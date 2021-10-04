* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;
$Set M 8
Set J /1*%M%/;

parameter c[J]   ; c[J] = 1;
table a[J,I]
        1       2       3
1       0       0       0
2       10      0       0
3       10      10      0
4       0       10      0
5       0       0       10
6       10      0       10
7       10      10      10
8       0       10      10 ;

Positive Variable  X[I]   ;
         Variable  f      ;

Equation Eq_1,Def_obj;

Eq_1..     30 - 3*x['1'] - 3*x['3'] =g= 0;
Def_obj..  f =e= sum{J,(c[J]*sqrt(sum{I,sqr(a[J,I]-x[I]) } )) } ;

x.lo[I]  =   0 ;
x.up[I]  =  42 ;

x.l['1'] =   0 ;
x.l['2'] =   2 ;
x.l['3'] =   0 ;

Model s253 /all/;

Solve s253 using nlp minimize f;

display x.l;
display f.l;

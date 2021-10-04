* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;
$Set M 4
Set j /j1*j%M%/;

parameter   b(i) / i1 0.0401   ,i2 0.010085 /;

table a(i,j)
          j1      j2      j3       j4
    i1    4       2.25    1        0.25
    i2    0.16    0.36    0.64     0.64  ;

Variable x[j]  ,  obj ;

Equation constr(i) ,
         Def_obj    ;

constr(i)..  sum{j,a[i,j]/x[j] } =l= b[i] ;
Def_obj..    obj  =e=  1 + sum{j, x[j] }  ;

x.up[j]   = (5-ord(j))*100000 ;
x.lo[j]   = 0.001             ;

x.l['j1'] = 1     ;
x.l['j2'] = 1     ;
x.l['j3'] = 1     ;
x.l['j4'] = 1     ;

*printf "optimal solution as starting point \n";
*x.l['j1'] = 193.4071 ;
*x.l['j2'] = 179.5475 ;
*x.l['j3'] = 185.0186 ;
*x.l['j4'] = 168.7062 ;


Model hs072  /all/;

Solve hs072 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  - 727.67937;
display obj.l               ;

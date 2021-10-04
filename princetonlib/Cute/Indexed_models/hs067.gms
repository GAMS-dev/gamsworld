* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

$Set M 14
Set j /j1*j%M%/;
Set Left(j)  /j1*j7/;
Set Right(j) /j8*j%M%/;


parameter a[j] / j1    0    , j2    0  , j3    85  ,  j4   90   , j5    3 ,
                 j6    0.01 , j7  145  , j8  5000  ,  j9 2000   , j10  93 ,
                j11   95    , j12  12  , j13    4  , j14  162    / ;

Variable x1, x2, x3, y[j]  ,
                      obj  ;

Equation
          constr1(j) ,
          constr2(j) ,
          constr3 ,
          constr4 ,
          constr5 ,
          constr6 ,
          constr7 ,
          constr8 ,
          constr9 ,
         Def_obj  ;

constr1(j)$Left(j)..   y[j+1]  =g= a[j];
constr2(j)$right(j)..  y[j-6]  =l= a[j];
constr3..              y['j3'] =e= 1.22*y['j2'] - x1;
constr4..              y['j6'] =e= (x2+y['j3'])/x1;
constr5..              y['j2'] =e= 0.01*x1*(112 + 13.167*y['j6'] - 0.6667*sqr(y['j6']));
constr6..              y['j5'] =e= 86.35 + 1.098*y['j6'] - 0.038*sqr(y['j6']) +0.325*(y['j4']-89);
constr7..              y['j8'] =e= 3*y['j5'] - 133;
constr8..              y['j7'] =e= 35.82 - 0.222*y['j8'];
constr9..              y['j4'] =e= 98000*x3/(y['j2']*y['j7'] + 1000*x3);

Def_obj..              obj     =e= -(0.063*y['j2']*y['j5'] - 5.04*x1 -
                                     3.36*y['j3'] - 0.035*x2 -10*x3    ) ;


x1.lo = 1.0e-5 ;   x1.up =  2.0e+3 ;
x2.lo = 1.0e-5 ;   x2.up =  1.6e+4 ;
x3.lo = 1.0e-5 ;   x3.up =  1.2e+2 ;

x1.l  =  1745  ;
x2.l  = 12000  ;
x3.l  =   110  ;

*x1.l = 1728.371286   ;
*x2.l =16000.         ;
*x3.l =   98.14151402 ;

Model hs067  /all/;

Solve hs067 using nlp minimize obj;

display   x1.l              ;
display   x2.l              ;
display   x3.l              ;

obj.l = obj.l + 1162.036507 ;
display obj.l               ;

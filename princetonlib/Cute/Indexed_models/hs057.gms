* Cute AMPL model  (translation to GAMS)
*
$Set M 44
Set j /j1*j%M%/;

$Set N 2
Set i /i1*i%N%/;

parameter a[j] / j1   8 ,  j2   8 ,  j3  10 ,  j4  10 ,  j5  10 ,
                 j6  10 ,  j7  12 ,  j8  12 ,  j9  12 , j10  12 ,
                j11  14 , j12  14 , j13  14 , j14  16 , j15  16 ,
                j16  16 , j17  18 , j18  18 , j19  20 , j20  20 ,
                j21  20 , j22  22 , j23  22 , j24  22 , j25  24 ,
                j26  24 , j27  24 , j28  26 , j29  26 , j30  26 ,
                j31  28 , j32  28 , j33  30 , j34  30 , j35  30 ,
                j36  32 , j37  32 , j38  34 , j39  36 , j40  36 ,
                j41  38 , j42  38 , j43  40 , j44  42   /;

parameter b[j] / j1 0.49,  j2 0.49,  j3 0.48,  j4 0.47,  j5 0.48,
                 j6 0.47,  j7 0.46,  j8 0.46,  j9 0.45, j10 0.43,
                j11 0.45, j12 0.43, j13 0.43, j14 0.44, j15 0.43,
                j16 0.43, j17 0.46, j18 0.45, j19 0.42, j20 0.42,
                j21 0.43, j22 0.41, j23 0.41, j24 0.40, j25 0.42,
                j26 0.40, j27 0.40, j28 0.41, j29 0.40, j30 0.41,
                j31 0.41, j32 0.40, j33 0.40, j34 0.40, j35 0.38,
                j36 0.41, j37 0.40, j38 0.40, j39 0.41, j40 0.38,
                j41 0.40, j42 0.40, j43 0.39, j44 0.39  /;

Variable x[i]  ,  obj ;

Equation constr1 ,
         Def_obj  ;

constr1.. 0.49*x['i2'] - x['i1']*x['i2'] =g= 0.09;
Def_obj.. obj=e=sum{j,sqr(b[j]-x['i1']-(0.49-x['i1'])*exp(-x['i2']*(a[j]-8)))};

x.lo['i1'] =  0.4 ;
x.lo['i2'] = -4   ;

*x.l['i1']  = 0.42        ;
*x.l['i2']  = 5.00        ;

*printf "optimal solution as starting point \n";
*x.l['i1']  = 0.419952675 ;
*x.l['i2']  = 1.284845629 ;


Model hs057  /all/;

Solve hs057 using nlp minimize obj;

display   x.l                ;

obj.l = obj.l - 0.02845966972;
display obj.l                ;

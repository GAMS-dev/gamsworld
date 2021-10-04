$Set N 14
$Set M  7
$Set P  8

Set I /i1*i%N%/;
Set left(i)  /i1*i%M%/;
Set right(i) /i%P%*i%N%/;

Parameter a(i) / i1        0 ,  i2          0  , i3       85 ,  i4       90 ,
                 i5        3 ,  i6        0.01 , i7      145 ,  i8     5000 ,
                 i9     2000 , i10         93  , i11      95 , i12       12 ,
                i13        4 , i14        162  / ;

Variable x1 , x2 , x3 , y(i) , Obj ;
Equation  constr1(i) , constr2(i) , constr3 , constr4 , constr5 , constr6 , constr7 , constr8 , constr9 ,
          Def_obj ;

constr1(i)$left(i)..   y[i+1] =g= a[i];
constr2(i)$right(i)..  y[i-6] =l= a[i];
constr3.. y['i3'] =e= 1.22*y['i2'] - x1;
constr4.. y['i6'] =e= (x2+y['i3'])/x1;
constr5.. y['i2'] =e= 0.01*x1*(112 + 13.167*y['i6'] - 0.6667*sqr(y['i6']));
constr6.. y['i5'] =e= 86.35 + 1.098*y['i6'] - 0.038*sqr(y['i6']) +0.325*(y['i4']-89);
constr7.. y['i8'] =e= 3*y['i5'] - 133;
constr8.. y['i7'] =e= 35.82 - 0.222*y['i8'];
constr9.. y['i4'] =e= 98000*x3/(y['i2']*y['i7'] + 1000*x3);

Def_Obj.. obj=e= -(0.063*y['i2']*y['i5'] - 5.04*x1 - 3.36*y['i3'] - 0.035*x2 -10*x3);

x1.l =  1745 ;
x2.l = 12000 ;
x3.l =   110 ;

*x1.l = 1728.371286;
*x2.l = 16000;
*x3.l = 98.14151402;

x1.lo=  1.0e-5 ; x1.up = 2.0e+3;
x2.lo=  1.0e-5 ; x2.up = 1.6e+4;
x3.lo=  1.0e-5 ; x3.up = 1.2e+2;

Model hs067 /all/;

Solve hs067 using nlp minimazing obj ;

obj.l = obj.l + 1162.036507;

display obj.l;

********************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file batch1.mos
*   ```````````````
*   Looping in the Mosel program over optimization runs
*   coupled with data in- and output.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "batch 1"

Set R / r1*r10 / ;
Set I   /i1*i3/;

Parameter a[R] ;
Parameter b[R] ;
Parameter RESULTS[I] ;


Scalar LIM / 100 /;
Scalar TEMP / 0 /;

Binary Variable x[R] ;
Variable Obj ;

Equation Eq_ctr , Def_Obj ;

Eq_ctr..
    Sum{R, b[R]*x[R] } =l= LIM + 10*(TEMP) ;

Def_Obj..
    Obj =e= Sum{R, a[R]*x[R] } ;

Model batch_1 / all / ;

Loop(I,
TEMP = ord(i) - 1 ;

if (ord(i)=1,
a['r1']  =  2 ; a['r2']  =  4 ; a['r3']  =  6 ; a['r4']  =  8 ;
a['r5']  = 10 ; a['r6']  =  9 ; a['r7']  =  7 ; a['r8']  =  5 ;
a['r9']  =  3 ; a['r10'] =  1 ;

b['r1']  =  9 ; b['r2']  =  7 ; b['r3']  =  5 ; b['r4']  =  3 ;
b['r5']  =  1 ; b['r6']  =  2 ; b['r7']  =  4 ; b['r8']  =  6 ;
b['r9']  =  8 ; b['r10'] = 10 ;                                );

if (ord(i)=2,
a['r1']  =  3 ; a['r2']  =  6 ; a['r3']  =  9 ; a['r4']  = 22 ;
a['r5']  =  4 ; a['r6']  =  6 ; a['r7']  = 16 ; a['r8']  = 12 ;
a['r9']  =  8 ; a['r10'] = 11 ;

b['r1']  =  9 ; b['r2']  =  7 ; b['r3']  =  5 ; b['r4']  =  3 ;
b['r5']  =  1 ; b['r6']  =  2 ; b['r7']  =  4 ; b['r8']  =  6 ;
b['r9']  =  8 ; b['r10'] = 10 ; Loop(R,b[R] = b[R] +1 ;);      );

if(ord(i)=3,
a['r1']  =  7 ; a['r2']  =  5 ; a['r3']  =  3 ; a['r4']  =  1 ;
a['r5']  = 10 ; a['r6']  = 12 ; a['r7']  = 14 ; a['r8']  = 25 ;
a['r9']  = 20 ; a['r10'] = 15 ;

b['r1']  = 10 ; b['r2']  =  8 ; b['r3']  =  6 ; b['r4']  =  4 ;
b['r5']  =  2 ; b['r6']  =  3 ; b['r7']  =  5 ; b['r8']  =  7 ;
b['r9']  =  9 ; b['r10'] = 11 ; Loop(R,b[R] = b[R] +1 ;);      );

* Solve the problem
Solve batch_1 using MIP maximazing Obj ;

Display Obj.l ;
RESULTS[I] = Obj.l ;

);

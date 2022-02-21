********************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file batch2.mos
*   ```````````````
*   Looping over program executions coupled with
*   parameterized data in- and output.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "batch 2"

Set R / r1*r10 / ;

Parameter a[R] ;
Parameter b[R] ;
Scalar LIM / 100 /;

a['r1']  =  2 ; a['r2']  =  4 ; a['r3']  =  6 ; a['r4']  =  8 ;
a['r5']  = 10 ; a['r6']  =  9 ; a['r7']  =  7 ; a['r8']  =  5 ;
a['r9']  =  3 ; a['r10'] =  1 ;

b['r1']  =  9 ; b['r2']  =  7 ; b['r3']  =  5 ; b['r4']  =  3 ;
b['r5']  =  1 ; b['r6']  =  2 ; b['r7']  =  4 ; b['r8']  =  6 ;
b['r9']  =  8 ; b['r10'] = 10 ;

Binary Variable x[R] ;
Variable Obj ;

Equation Eq_ctr , Def_Obj ;

Eq_ctr..
    Sum{R, b[R]*x[R] } =l= LIM  ;

Def_Obj..
    Obj =e= Sum{R, a[R]*x[R] } ;

Model batch_2 / all / ;

* Solve the problem
Solve batch_2 using MIP maximazing Obj ;

Display Obj.l ;
********************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file indices.mos
*   ````````````````
*   Index subsets.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Indices"

Set I / i1*i4 / ;
Set J / j1*j10 / ;

Parameter II[I] / i1 2 , i2 5 , i3 8 , i4 10 / ;

Binary Variable x[J] ;

       Variable y[I] ,
                Obj  ;

Equation Eq_1    ,
         Eq_2(I) ,
         Def_Obj ;
Eq_1..
    Sum{J, x[J] } =l= 5 ;

Eq_2(I)..
    Sum{J$(ord(J) eq II[I] ),x[J] } =e= y[I] ;

Def_Obj..
    Obj =e= Sum{J,x[J]} + Sum{i, y[I] } ;

Model Indices / all / ;

* Solve the problem
Solve Indices using MIP minimazing Obj ;

Display Obj.l ;
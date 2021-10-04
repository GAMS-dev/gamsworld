********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file expl3.mos
*  ``````````````
*  Small infeasible problem from BCL User Guide.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke
**********************************************************

* model Expl3


$Set NN  2
Set N /n1,n%NN%/;

Integer Variable x[N]   ;

        Variable MinObj ;

Equation C1      ,
         C2      ,
         Def_Obj ;

C1..
    2*x['n1'] + 3*x['n2'] =g= 41 ;
C2..
    x['n1'] + 2*x['n2']   =e= 13  ;

Def_Obj..
    MinObj =e= Sum{N, x[N] } ;


x.up[N] = 100 ;
x.lo[N] =   0 ;

*Solve the MIP
Model Expl3 / all / ;

Solve Expl3 using MIP minimazing MinObj ;

Display MinObj.l ;
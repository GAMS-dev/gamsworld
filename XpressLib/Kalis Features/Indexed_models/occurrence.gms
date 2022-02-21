*****************************************************************
*   CP example problems
*   ===================
*
*   file occurrence.mos
*   ```````````````````
*   Cardinality (=occurrence) constraints.
*
*   (c) 2005 Artelys SA and Dash Associates
*
*****************************************************************
* model "Cardinality"
* uses "kalis"

Set R / r1*r6 / ;
Set S /s1*s10 / ;

Positive Variable
         x[R] ,
         y[S] ,
         a    ,
         b    ,
         c    ;

Variable
         Obj  ;

Equation
         Def_Obj ;

Def_Obj..
    Obj =e= 1 ;

x.lo[R]$(ord(R) le 3) =  1 ;
x.up[R]$(ord(R) gt 3) = 10 ;

y.lo[S] =     ord(S)  ;
y.up[S] = 2 * ord(S)  ;

c.up = 15 ;
c.fx = 6 ;

Model Cardinality / all / ;
Solve Cardinality using NLP maximazing Obj ;
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Source: a very simple box-constrained quadratic
*   SIF input: Nick Gould, June 1996
*   classification QUR2-AN-2-0
*   Solution

Parameter   one;    one  = 1.0;
Parameter theta;  theta  = 1.0e10;
Parameter  beta;   beta  = ((1.0/(1.0e10)) * (1.0/(1.0e10)))*(1.0/(1.0e10));
Parameter beta2;  beta2  = ((1.0) / (1.0e10)) * ((1.0) / (1.0e10));

Variable x1 , x2 , obj ;
Equation Def_obj ;

Def_obj..  obj =e= 0.5*(1.0e10*x1)*(1.0e10*x1) + 0.5*(x2)*(x2);

x1.l = 1.0e-30 ;
x2.l = 1.0     ;

Model nasty /all/ ;

Solve nasty  using nlp minimazing obj ;

     display obj.l;
     display x1.l;
     display x2.l;

*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   A mistake in writing Hock and Schittkowski problem 108.
*   Source:
*   Ph. Toint.
*   classification QQR2-AY-9-13
*   SIF input: Ph. Toint, Apr 1990.
*   Number of variables
*   Parameters
*   Objective Function
*   Constraint function
*   Solution
$Set N 9
Variable x1 , x2 , x3 , x4 , x5 , x6 , x7 , x8 , x9 , obj ;
Equation  c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, Def_obj ;

 c1.. 0 =g= x3 * x3 + x4 * x4 - 1.0;
 c2.. 0 =g= x5 * x5 + x6 * x6 - 1.0;
 c3.. 0 =g= x9 * x9 - 1.0;
 c4.. 0 =g= x1 * x1 + (x2-x9) * (x2-x9) - 1.0;
 c5.. 0 =g= (x1-x5) * (x1-x5) + (x2-x6) * (x2-x6) - 1.0;
 c6.. 0 =g= (x1-x7) * (x1-x7) + (x2-x8) * (x2-x8) - 1.0;
 c7.. 0 =g= (x3-x5) * (x3-x5) + (x4-x6) * (x4-x6) - 1.0;
 c8.. 0 =g= (x3-x7) * (x3-x7) + (x4-x8) * (x4-x8) - 1.0;
 c9.. 0 =g= x7 * x7 + x8 * x9 - 1.0;
c10.. 0 =l= x8 * x9;
c11.. 0 =l= x5 * x8 - x6 * x7;
c12.. 0 =l= x1 * x4 - x2 * x3;
c13.. 0 =g= -x5 * x9;

Def_obj..  obj=e=-0.5*x1*x4+0.5*x2*x3-0.5*x3*x9+0.5*x5*x9-0.5*x5*x8+0.5*x6*x7;

x9.lo = 0 ;
x6.up= 0.6;

x1.l = 1 ;
x2.l = 1 ;
x3.l = 1 ;
x4.l = 1 ;
x5.l = 1 ;
x6.l = 1 ;
x7.l = 1 ;
x8.l = 1 ;
x9.l = 1 ;

* AMPL solution below

*x1.fx= 0.803552;
*x7.fx= 0.68984181;
*x8.fx= 1.610708;
*x9.fx= 0.02196;

Model mistake /all/ ;

Solve mistake  using nlp minimazing obj ;

     display x1.l;
     display x2.l;
     display x3.l;
     display x4.l;
     display x5.l;
     display x6.l;
     display x7.l;
     display x8.l;
     display x9.l;
     display obj.l;

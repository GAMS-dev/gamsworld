*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   A nonlinear minmax problem.
*   Source:
*   E. Polak, J.E. Higgins and D. Mayne,
*   "A barrier function for minmax problems",
*   Mathematical Programming, vol.54(2), pp. 155-176, 1992.
*   SIF input: Ph. Toint, April 1992.
*   classification LOR2-AN-3-2
*   Solution

Variable x1 , x2 , u , obj ;

Equation c1 , c2 , Def_obj ;

c1..   0 =l= -(x1-(sqrt((x1*x1)+(x2*x2)))*
                  cos((sqrt((x1*x1)+(x2*x2))))) *
         (x1-(sqrt((x1*x1)+(x2*x2)))*
                  cos((sqrt((x1*x1)+(x2*x2))))) -
                  0.0050*x1* x1 -0.0050*x2 * x2 + u ;

c2..   0 =l= -(x2-(sqrt((x1*x1)+(x2*x2)))*
                  sin((sqrt((x1*x1)+(x2*x2))))) *
         (x2-(sqrt((x1*x1)+(x2*x2)))*
                  sin((sqrt((x1*x1)+(x2*x2))))) -
                  0.0050*x1* x1 -0.0050*x2 * x2 + u ;

Def_obj..  obj =e= u ;

x1.l =  1.41831 ;
x2.l = -4.79462 ;
 u.l =  1.0     ;

Model spiral / all / ;

Solve spiral using nlp minimazing obj ;

display  x1.l ;
display  x2.l ;
display   u.l ;
display obj.l ;

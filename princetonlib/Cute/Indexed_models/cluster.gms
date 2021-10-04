* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Source:  problem 207 in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.
*   SIF input: Ph. Toint, Dec 1989.
*   classification NOR2-AN-2-2
*   Solution

Variable  x1, x2, obj;

Equation Eq_1, Eq_2, Def_obj ;
Eq_1..    ((x1-x2*x2) * (x1-sin(x2)))     =e= 0;
Eq_2..    (((cos(x2))-x1) * (x2-cos(x1))) =e= 0;
Def_obj.. obj=e=0;

Model cluster /all/;

Solve cluster using nlp minimize obj;

display x1.l;
display x2.l;
display obj.l;

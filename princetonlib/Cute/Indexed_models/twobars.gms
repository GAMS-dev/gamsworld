*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem:
*   ********
*   Structureal analysis of the simplest two bar scheme.  The structure has
*   the following simple symmetric shape
*                                *
*                               / \
*                              /   \
*                             /     \
*                           """     """
*   and a force is applied at the top node.  The unknown are the distance
*   of the left and right feet wrt to the projection of the top node and the
*   weight of the bars.
*   Source:
*   an example in a talk by W.K. Zhang and C. Fleury, LLN, 1994.
*   SIF input: Ph. Toint, November 1994
*   classification OOR2-MN-2-2
*   Solution

Variable x1 , x2 , obj ;

Equation cons1 , cons2 ,  Def_obj ;

cons1.. 0 =g= 0.124*(sqrt((1.0+x2*x2))) * ((8.0/x1)+1.0/(x1*x2)) - 1.0 ;

cons2.. 0 =g= 0.124*(sqrt((1.0+x2*x2))) * ((8.0/x1)-1.0/(x1*x2)) - 1.0 ;

Def_obj..  obj=e= x1 * (sqrt((1.0+x2*x2)));

x1.lo = 0.2 ; x1.up = 4.0 ; x1.l = 1.0 ;
x2.lo = 0.1 ; x2.up = 1.6 ; x2.l = 1.0 ;

Model twobars /all/ ;

Solve twobars  using nlp minimazing obj ;

display x1.l ; display x2.l ; display obj.l ;

*MPL Model Library MPL Model Library
*Nonlinear Constraint, Example 13.2-1, Hillier and Lieberman
*   {  Exmpl13.2-1_NonlinearConstraint.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Example Chapter 13.2,  Nonlinear constraint,  Size: 2x2,  Page 659  }

* TITLE WyndorGlass;

* OPTIONS ModelType=Nonlinear

Set product / Door , Window / ;

Scalar TimeAvail / 4 / ;

Parameter ProdTime[product] / Door 1 , Window 0 / ;

Parameter Profit[product]   / Door 3 , Window 5 / ;

Variables  Produce[product] , TotalProfit ;

Equation TimeCapacity , NLConstr , Def_obj ;

TimeCapacity.. Sum{product,ProdTime[product]*Produce[product]} =l= TimeAvail  ;
*-> TimeCap:
NLConstr..     9 * Sqr(Produce['Door']) + 5 * Sqr(Produce['Window']) =l= 216  ;

Def_obj..      TotalProfit =e= Sum{product, Profit[product]*Produce[product]} ;

* MPL solutions
* Produce.fx['Door']   = 2 ;
* Produce.fx['Window'] = 6 ;

Model m13_2_1_NonlinearConstraint / all / ;

Solve m13_2_1_NonlinearConstraint using nlp maximazing TotalProfit ;

Display TotalProfit.l ;
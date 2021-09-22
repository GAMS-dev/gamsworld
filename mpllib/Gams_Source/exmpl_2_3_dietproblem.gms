*MPL Model Library MPL Model Library
*Diet Problem,  Example 2.3,  Murty
*   {  Exmpl2.3_DietProblem.mpl  }
*   {  Murty, Operations Research, Deterministic Optimization Models  }
*   {  Chapter 2,  Example 2.3,  Diet Problem,  Size: 3x2,  Page 31  }

* TITLE  DietProblem;

Set grain / g1,g2 /  ;
Set nutri / Starch , Protein , Vitamins / ;

Table NutriUnits[nutri,grain]
                g1  g2
     Starch      5   7
     Protein     4   2
     Vitamins    2   1  ;

Parameter MinDailyReq[nutri] / Starch 8 , Protein 15 , Vitamins 3 / ;
Parameter GrainCost[grain]   / g1 0.60 , g2 0.35 / ;

Variables  Amount[grain] ,
           TotalCost     ;
*Kg
Equation Requirement(nutri) ,
         Def_obj            ;

Requirement(nutri)..
    Sum{grain, NutriUnits[nutri,grain] * Amount[grain]} =g= MinDailyReq[nutri] ;

Def_obj..
    TotalCost =e= SUM{grain, GrainCost[grain] * Amount[grain]};

Amount.lo[grain] = 0 ;
* MPL model solution
*Amount.fx['g1']       =   3.7500 ;
*Amount.fx['g2']       =   0.0000 ;

Model m2_3_DietProblem / all / ;

Solve m2_3_DietProblem using lp minimazing TotalCost ;

Display TotalCost.l ;
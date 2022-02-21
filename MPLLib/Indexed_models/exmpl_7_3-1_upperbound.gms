*MPL Model Library MPL Model Library
*Upper Bound, Example 7.3-1, Hillier and Lieberman
*   {  Exmpl_7.3-1_UpperBound.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 7.3,  Example 1,  Upper Bound Technique,  Size: 2x3,  Page 319  }

*TITLE Upper_Bound;


Set activity   / Activity1   , Activity2   , Activity3 / ;
Set constraint / Constraint1 , Constraint2 / ;

Parameter ResourceAvail[constraint] / Constraint1 12 , Constraint2 4 / ;
Table ResourceUse[constraint, activity]
                       Activity1  Activity2  Activity3
      Constraint1              4          1          0
      Constraint2             -2          0          1  ;

Parameter UnitProfit[activity] / Activity1  2 , Activity2  1 , Activity3  2 / ;
Parameter UpperBound[activity] / Activity1  4 , Activity2 15 , Activity3  6 / ;

Variables Produce[activity] , TotalProfit ;
*-> Prod;
Equation TimeCapacity[constraint] , Def_obj ;

TimeCapacity[constraint]..
        SUM{activity,ResourceUse[constraint,activity]*Produce[activity]} =l=
                                                      ResourceAvail[constraint];
*-> TimeCap:

Def_obj..
        TotalProfit =e= SUM(activity,UnitProfit[activity]*Produce[activity]);
Produce.lo[activity]  = 0.0 ;
Produce.up[activity]  = UpperBound[activity] ;

Model m7_3_1_UpperBound / all / ;

Solve m7_3_1_UpperBound using nlp maximazing TotalProfit ;

Display TotalProfit.l ;
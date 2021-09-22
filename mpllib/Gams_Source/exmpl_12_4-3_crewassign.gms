*MPL Model Library MPL Model Library
*Crew Assignments, Example 12.4-3, Hillier and Lieberman
*   {  Exmpl12.4-3_CrewAssign.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 12.4,  Example 3, Set Covering, Size 12x12, Page 598  }

* TITLE CrewAssignments;

Set       j / j1*j12 / ;
Set flights / f1*f11 / ;

Parameter Cost[j] /  j1 2 ,  j2 3 ,  j3 4 ,
                     j4 6 ,  j5 7 ,  j6 5 ,
                     j7 7 ,  j8 8 ,  j9 9 ,
                    j10 9 , j11 8 , j12 9  / ;

Table Feas[flights,j]
            j1  j2  j3  j4  j5  j6  j7  j8  j9 j10 j11 j12
       f1    1   0   0   1   0   0   1   0   0   1   0   0
       f2    0   1   0   0   1   0   0   1   0   0   1   0
       f3    0   0   1   0   0   1   0   0   1   0   0   1
       f4    0   0   0   1   0   0   1   0   1   1   0   1
       f5    1   0   0   0   0   1   0   0   0   1   1   0
       f6    0   0   0   1   1   0   0   0   1   0   0   0
       f7    0   0   0   0   0   0   1   1   0   1   1   1
       f8    0   1   0   1   1   0   0   0   1   0   0   0
       f9    0   0   0   0   1   0   0   1   0   0   1   0
      f10    0   0   1   0   0   0   1   1   0   0   0   1
      f11    0   0   0   0   0   1   0   0   1   1   1   1   ;

Binary Variable x[j] ;

Variable TotCost ;

Equation Sched(flights) ,  Numb , Def_obj ;

Sched(flights).. Sum{j , Feas[flights,j] * x[j] } =g= 1 ;

Numb..           Sum{j , x[j] } =e= 3 ;

Def_obj..        TotCost =e= Sum{j, Cost[j] * x[j] };

* MPL solutions:
*  x.fx['j1'] = 0 ;
*  x.fx['j2'] = 0 ;
*  x.fx['j3'] = 1 ;
*  x.fx['j4'] = 1 ;
*  x.fx['j5'] = 0 ;
*  x.fx['j6'] = 0 ;
*  x.fx['j7'] = 0 ;
*  x.fx['j8'] = 0 ;
*  x.fx['j9'] = 0 ;
* x.fx['j10'] = 0 ;
* x.fx['j11'] = 1 ;
* x.fx['j12'] = 0 ;


Model m12_4_3_CrewAssign / all / ;

Solve m12_4_3_CrewAssign using mip minimazing TotCost ;

Display TotCost.l ;
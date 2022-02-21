*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin  file h5budget.mos
*   `````````````````
*   Planning the family budget
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "H-5 Family budget"
Set MONTHS / m1*m12 / ;
* Time period
Set ITEMS / Living      , Rent , Telephone ,
            Electricity ,  Car , Tax        /;

* Set of shops

Scalar INCOME / 1900 / ;
Scalar  ALLOW /  150 / ;
* Monthly income and allowance
Scalar   HMIN /  165 / ;
* Min. amount required for hobbies

Parameter EXPENSE[ITEMS] / Living       550 ,
                           Rent         630 ,
                           Telephone    135 ,
                           Electricity  850 ,
                           Car          340 ,
                           Tax          100  / ;

* Expenses
Parameter FREQ[ITEMS] / Living         1 ,
                        Rent           1 ,
                        Telephone      2 ,
                        Electricity    6 ,
                        Car            1 ,
                        Tax            4  / ;

* Frequency (periodicity) of expenses

Variable hobby[MONTHS],
* Money to spend for leisure/hobbies
         save[MONTHS] ,
* Savings
         Leisure       ;

Equation Eq_1(MONTHS) ,
         Def_Obj       ;

* Monthly balances
Eq_1(MONTHS)..
  Sum{ITEMS$(mod(ord(MONTHS),FREQ[ITEMS]) = 0), EXPENSE[ITEMS] } +
                                               hobby[MONTHS] +
                                               save[MONTHS]     =l=
  INCOME + ALLOW + save[MONTHS-1]$(ord(MONTHS) gt 1) ;

* Objective: money for hobby
Def_Obj..
 Leisure =e= Sum{MONTHS, hobby[MONTHS] } ;

hobby.lo[MONTHS] = HMIN ;
save.lo[MONTHS]  =    0 ;
* Solve the problem
Model H_5_Family_budget / All / ;

Solve H_5_Family_budget using LP maximazing Leisure ;

Display Leisure.l ;







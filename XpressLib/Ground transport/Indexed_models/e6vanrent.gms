*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file e6vanrent.mos
*   ``````````````````
*   Fleet planning for van rental
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "E-6 Van rental"

$Set NM  6
Set MONTHS / m1*m%NM% / ;
* Months
Alias(MONTHS,MONTHS1);
Set CONTR  / c3*c5    / ;
* Contract types
Set NAMES / Jan , Feb , Mar , Apr , May , Jun / ;

Parameter REQ[MONTHS] / m1 430 , m2 410 , m3 440 , m4 390 , m5 425 , m6 450 / ;
* Monthly requirements
Parameter COST[CONTR] / c3 1700 , c4  2200 , c5 2600 / ;
* Cost of contract types
Scalar NINIT / 200 / ;
* Vans rented at beginning of plan

Parameter Temp_max[MONTHS,CONTR] , Temp_min[MONTHS,CONTR] , A , B ;

Loop((MONTHS,CONTR),
     A = ord(MONTHS) - (ord(CONTR)+2) +1 ;
     Temp_max[MONTHS,CONTR] = Max(1,A) ;

     A = card(MONTHS) - (ord(CONTR)+2) +1 ;
     B = ord(MONTHS) ;
     Temp_min[MONTHS,CONTR] = Min(B,A) ;
    );

Variable rent[CONTR,MONTHS] ,
* New rentals every month
         Total_Cost         ;

Equation Eq_1_1(MONTHS) ,
         Eq_1_2(MONTHS) ,
         Def_obj        ;
* Fulfill the monthly requirements

Eq_1_1(MONTHS)$(ord(MONTHS) le 2 )..
    NINIT +  Sum{(CONTR,MONTHS1)$((ord(MONTHS1) ge Temp_max[MONTHS,CONTR]) and
                                  (ord(MONTHS1) le Temp_min[MONTHS,CONTR])),
                                rent[CONTR,MONTHS1] } =g= REQ[MONTHS] ;

Eq_1_2(MONTHS)$(ord(MONTHS) gt 2 )..
             Sum{(CONTR,MONTHS1)$((ord(MONTHS1) ge Temp_max[MONTHS,CONTR]) and
                                  (ord(MONTHS1) le Temp_min[MONTHS,CONTR])),
                                rent[CONTR,MONTHS1] } =g= REQ[MONTHS] ;

* Objective: total cost
Def_obj..
    Total_Cost =e= Sum{(CONTR,MONTHS),COST[CONTR]*rent[CONTR,MONTHS] } ;

rent.lo[CONTR,MONTHS] = 0 ;
* Xpress solution
*rent.fx['c3','m1'] = 230 ;
*rent.fx['c3','m4'] = 240 ;
*rent.fx['c4','m3'] = 210 ;



* Solve the problem
Model E_6_Van_rental / All  / ;

Solve E_6_Van_rental using LP minimazing Total_Cost ;

Display Total_Cost.l ;



*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file i2nurse.mos
*   ````````````````
*   Work schedule for nurses
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "I-2 Scheduling nurses"

$Set NT 12
$Set NT_1 11

* Number of time periods
Set TIME  /t0*t%NT_1%/ ;
Alias(TIME,TIME1);
Set Period  /p1*p4/ ;

Parameter WORK[Period] / p1 0 , p2 -1 , p3  -3 , p4 -4 / ;
* Nurses started in other time periods
* that are working during a period

Parameter REQ[TIME] / t0 15 , t1 15 ,  t2 15 ,  t3 35 ,
                      t4 40 , t5 40 ,  t6 35 ,  t7 30 ,
                      t8 30 , t9 35 , t10 30 , t11 20  / ;
* Required number of nurses per time period

Scalar NUM / 80 / ;

Integer Variable start[TIME]  ;
* Nurses starting work in a period
Variable         overt[TIME] ,
                 TotalOvert  ,
                 Total        ;
Equation Eq_1(TIME),
         Eq_2(TIME),
         Eq_add    ,
         Def_Obj_1 ,
         Def_Obj_2
  ;

* Nurses working per time period
Eq_1(TIME)..
Sum{TIME1$(mod([ord(TIME)-1+12],12) eq (ord(TIME1))),start[TIME1]} +
Sum{TIME1$(mod([ord(TIME)-1+11],12) eq (ord(TIME1))),start[TIME1]} +
Sum{TIME1$(mod([ord(TIME)-1+ 9],12) eq (ord(TIME1))),start[TIME1]} +
Sum{TIME1$(mod([ord(TIME)-1+ 8],12) eq (ord(TIME1))),start[TIME1]} =g= REQ[TIME];

*** Second problem: minimize overtime with given staff level ****

* Nurses working per time period
Eq_2(TIME)..
Sum{TIME1$(mod([ord(TIME)-1+ 7],12) eq (ord(TIME1))),overt[TIME1]} +
Sum{TIME1$(mod([ord(TIME)-1+12],12) eq (ord(TIME1))),start[TIME1]} +
Sum{TIME1$(mod([ord(TIME)-1+11],12) eq (ord(TIME1))),start[TIME1]} +
Sum{TIME1$(mod([ord(TIME)-1+ 9],12) eq (ord(TIME1))),start[TIME1]} +
Sum{TIME1$(mod([ord(TIME)-1+ 8],12) eq (ord(TIME1))),start[TIME1]} =g= REQ[TIME];

* Objective: total personnel required
Def_Obj_1..
 Total =e= Sum{TIME, start[TIME] } ;

Eq_add..
  Sum{TIME, start[TIME] } =l= NUM ;

* Objective: total overtime worked
Def_Obj_2..
 TotalOvert =e= Sum{TIME, overt[TIME] } ;

start.lo[TIME] = 0 ;
overt.lo[TIME] = 0 ;

* Solve the problem
Model I_2_Scheduling_nurses_1 / Eq_1 , Def_Obj_1 / ;
Solve I_2_Scheduling_nurses_1 using MIP minimazing Total ;
Display Total.l ;

Model I_2_Scheduling_nurses_2 / Eq_2 , Eq_add ,Def_Obj_2 / ;
Solve I_2_Scheduling_nurses_2 using MIP minimazing TotalOvert ;
Display TotalOvert.l ;
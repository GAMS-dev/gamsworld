********************************************************
*  * Mosel Example Problems                              *
*  * ======================                              *
*  *                                                     *
*  * file fstns.mos                                      *
*  * ``````````````                                      *
*  * Example for the use of the Mosel language           *
*  * (Firestation siting problem)                        *
*  *                                                     *
*  * (c) 2001 Dash Associates                            *
*  *     author: S. Heipcke                              *
*  *******************************************************!)

* model Firestns                    ! Start a new model


* Range of towns
Set RTown / R1*R6 / ;
Alias(RTown,RTown1);
* Max. time allowed to reach any town
Scalar TIMELIMIT / 20 / ;

* Time taken between each pair of towns
Table TIME[RTown,RTown1]
           R1   R2   R3  R4  R5  R6
      R1    0   15   25  35  35  25
      R2   15    0   30  40  25  15
      R3   25   30    0  20  30  25
      R4   35   40   20   0  20  30
      R5   35   25   35  20   0  19
      R6   25   15   25  30  19   0 ;

Set SERVE(RTown,RTown1) ;
Loop{(RTown,RTown1)$(TIME[RTown,RTown1] le TIMELIMIT),
    SERVE(RTown,RTown1) = Yes ;
    };

* true if time within limit, false
* otherwise (default)


Binary Variables
* 1 if ambulance at town; 0 if not
       openst[RTown] ;
       Variables
       MinSta        ;
Equation Eq_Serve(RTown) ,
         Def_Obj         ;
* This sets SERVE(t,s) to true if the time between the two towns is
*   within the time limit. We can then use SERVE to define a set of
*   constraints (see below). It is as well possible not to use the array
*   SERVE and move the test directly into the definition of the constraints.

* Serve each town t by an open station s
Eq_Serve(RTown)..
     Sum{RTown1$SERVE(RTown,RTown1), openst[RTown1] } =g= 1 ;

* Objective: minimize number fire stations
Def_Obj..
 MinSta =e= Sum{RTown, openst[RTown]} ;

* Solve the MIP-problem
Model Firestns / all / ;

Solve Firestns using MIP minimazing MinSta ;

Display MinSta.l ;


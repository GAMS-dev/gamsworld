*****************************************************************
*   CP example problems
*   ===================
*
*   file producer_consumer_alt.mos
*   ``````````````````````````````
*   Resource-constrained project planning problem (construction of
*   a house) modeled with a producer-consumer constraint.
*
*   (c) 2007 Artelys SA and Dash Associates
*
******************************************************************
* model "Cumulative Scheduling"
*  uses "kalis"

* Declaration of tasks
Set TASKS / Masonry  , Carpentry , Roofing  ,
            Windows  , Facade    , Garden   ,
            Plumbing , Ceiling   , Painting ,
            MovingIn / ;

Set Time  / t1*t100 / ;

Alias(Time,Time1) ;

* Task indices
Parameter Task_indices[TASKS] ;
Loop{TASKS, Task_indices[TASKS] = ord(TASKS) };


Scalar InitialPayment / 11 / ;
Scalar SecondPayment  / 12 / ;

* Setting durations of building tasks
Parameter duration[TASKS] ;
duration['Masonry']   = 7 ;
duration['Carpentry'] = 3 ;
duration['Roofing']   = 1 ;
duration['Windows']   = 1 ;
duration['Facade']    = 2 ;
duration['Garden']    = 1 ;
duration['Plumbing']  = 8 ;
duration['Ceiling']   = 3 ;
duration['Painting']  = 2 ;
duration['MovingIn']  = 1 ;


Alias(TASKS,TASKS1);

* Precedence constraints among building tasks
Set Order(TASKS,TASKS1)
       /  Carpentry.Masonry,
          Roofing.Carpentry,
          Windows.Roofing  ,
          Facade.Roofing   ,
          Garden.Roofing   ,
          Plumbing.Masonry ,
          Ceiling.Masonry  ,
          Painting.Ceiling ,
          MovingIn.Windows ,
          MovingIn.Facade  ,
          MovingIn.Garden  ,
          MovingIn.Painting / ;

* Setting task consumptions
Parameter consumes[TASKS] ;
 consumes['Masonry']   =  7 ;
 consumes['Carpentry'] =  3 ;
 consumes['Roofing']   =  1 ;
 consumes['Windows']   =  1 ;
 consumes['Facade']    =  2 ;
 consumes['Garden']    =  1 ;
 consumes['Plumbing']  =  8 ;
 consumes['Ceiling']   =  3 ;
 consumes['Painting']  =  2 ;
 consumes['MovingIn']  =  1 ;

* Find the optimal schedule (minimizing the makespan)
Variable
         Start[TASKS]       ,
         Finish[TASKS]      ;

Variable
         Position[TASKS,Time] ,
         Timeperiod           ;


Equation
         Eq_1_a(TASKS)        ,
         Eq_1_b(TASKS,TASKS1) ,
         Eq_2(TASKS,Time)     ,
         Eq_3_initial         ,
         Eq_3_finishing       ,
         Def_Obj(TASKS)       ;

Eq_1_a(TASKS)..
    Finish[TASKS] - Start[TASKS] =e= Duration[TASKS] ;

Eq_1_b(TASKS,TASKS1)$(Order(TASKS,TASKS1))..
     Start[TASKS] =g= Finish[TASKS1]  ;

Eq_2(TASKS,Time)..
    Position[TASKS,Time] =e=  (1-SIGN{SQR(Start[TASKS]-ord(Time))-0.01 })/2    ;

Eq_3_initial..
     20 -Sum{Time1$(ord(Time1) lt 11),
         Sum{TASKS,(Position[TASKS,Time1]*consumes[TASKS])}
             }                                     =g= 0 ;

Eq_3_finishing..
      9 -Sum{Time1$(ord(Time1) ge 11),
         Sum{TASKS,(Position.l[TASKS,Time1]*consumes[TASKS])}
            }                                      =g= 0 ;



* Find the optimal solution
Def_Obj(TASKS)..
    Timeperiod =g= Finish[TASKS] ;

Start.lo[TASKS]  =  1 ;

Start.lo[TASKS]$(ord(TASKS) eq 7)  =  13 ;

Finish.lo[TASKS] = 1 ;

Position.lo[TASKS,Time] = 0 ;
Position.up[TASKS,Time] = 1 ;

Model Cumulative_Scheduling / all / ;
Solve Cumulative_Scheduling using DNLP minimazing Timeperiod ;

Display Timeperiod.l ;

Parameter aaa , bbb ;
aaa =

     Sum{Time1$(ord(Time1) lt 13),

     Sum{TASKS,(Position.l[TASKS,Time1]*consumes[TASKS])}

        } ;

bbb =

     Sum{Time1$(ord(Time1) ge 13),

     Sum{TASKS,(Position.l[TASKS,Time1]*consumes[TASKS])}

        } ;
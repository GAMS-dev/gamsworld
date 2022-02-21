*****************************************************************
*   CP example problems
*   ===================
*
*   file producer_consumer.mos
*   ``````````````````````````
*   Resource-constrained project planning problem (construction of
*   a house) modeled with task and resource objects.
*
*   (c) 2007 Artelys SA and Dash Associates
*
******************************************************************!)
* model "Producer Consumer"
*  uses "kalis"

* Declaration of tasks
Set TASKS / Masonry  , Carpentry , Roofing  ,
            Windows  , Facade    , Garden   ,
            Plumbing , Ceiling   , Painting ,
            MovingIn / ;
Set Time  / t1*t100 / ;

Alias(Time,Time1) ;

* Resource declaration
Parameter Money_available[Time] ;
* Limit resource availability to 20$ in the time interval [1,15]
          Money_available[Time]$(ord(Time) le  15) = 20 ;
* 'money_available' is a cumulative resource with max. amount of 29$
          Money_available[Time]$(ord(Time) gt 15)  = 29 ;

* Setting the task durations and predecessor sets
Parameter Duration[TASKS] ;

 Duration['Masonry'  ] = 7 ;
 Duration['Carpentry'] = 3 ;
 Duration['Roofing'  ] = 1 ;
 Duration['Windows'  ] = 1 ;
 Duration['Facade'   ] = 2 ;
 Duration['Garden'   ] = 1 ;
 Duration['Plumbing' ] = 8 ;
 Duration['Ceiling'  ] = 3 ;
 Duration['Painting' ] = 2 ;
 Duration['MovingIn' ] = 1 ;

Alias(TASKS,TASKS1);

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

* Setting the resource consumptions
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
         Eq_3(Time)           ,
         Def_Obj(TASKS)       ;

Eq_1_a(TASKS)..
    Finish[TASKS] - Start[TASKS] =e= Duration[TASKS] ;

Eq_1_b(TASKS,TASKS1)$(Order(TASKS,TASKS1))..
     Start[TASKS] =g= Finish[TASKS1]  ;

Eq_2(TASKS,Time)..
    Position[TASKS,Time] =e=  (1-SIGN{SQR(Start[TASKS]-ord(Time))-0.01 })/2    ;

Eq_3(Time)..
    Money_available[Time] -
    Sum{Time1$(ord(Time1) lt ord(Time)),
    Sum{TASKS,
        (Position[TASKS,Time1]*consumes[TASKS])}
    }                                                    =g= 0 ;

* Solve the problem
Def_Obj(TASKS)..
    Timeperiod =g= Finish[TASKS] ;

Start.lo[TASKS]$(ord(TASKS) eq 1)  =  1 ;

Start.lo[TASKS]$(ord(TASKS) eq 5)  =  15 ;
Start.lo[TASKS]$(ord(TASKS) eq 6)  =  15 ;
Start.lo[TASKS]$(ord(TASKS) eq 7)  =  15 ;

Finish.lo[TASKS] = 1 ;

Model Producer_Consumer / all / ;
Solve Producer_Consumer using DNLP minimazing Timeperiod ;

Display Timeperiod.l ;

Parameter Cheking[Time] ;


Cheking[Time] =
*Sum{Time1$(ord(Time1) lt ord(Time)),
*   Sum{TASKS,
*        (Position.l[TASKS,Time1]*consumes[TASKS])}
*    }
Money_available[Time]+1 -
    Sum{Time1$(ord(Time1) lt ord(Time)),
    Sum{TASKS,
        (Position.l[TASKS,Time1]*consumes[TASKS])}
    }

    ;


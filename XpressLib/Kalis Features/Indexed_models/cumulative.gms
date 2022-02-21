*****************************************************************
*   CP example problems
*   ===================
*
*   file cumulative.mos
*   ```````````````````
*   Cumulative scheduling exemple
*
*   (c) 2007 Artelys SA and Dash Associates
*
******************************************************************

* model "Cumulative scheduling"
*  uses "kalis"

*    declarations

Set TASKS / t1 * t5 / ;

Set Count / c1 * c15 / ;

* Resource capacity
Scalar C / 2 /   ;
* Time horizon
Scalar HORIZON / 15 / ;
* "Card(Count)" have to be equal "HORIZON"

Parameter durations[TASKS] ;  durations[TASKS] = ord(TASKS)     ;

Variable
        Position[TASKS,Count] ,
        starts[TASKS]    ,
        ends[TASKS]      ,
        Obj              ;

Equation
         Eq_1(TASKS)       ,
         Eq_2(TASKS,Count) ,
         Eq_3(Count)       ,
         Eq_4(TASKS)       ,
         Def_Obj(TASKS)    ;

Eq_1(TASKS)..
    ends[TASKS] - starts[TASKS] =e= durations[TASKS] ;

Eq_2(TASKS,Count)..
    Position[TASKS,Count] =e=  SIGN( 1+ SIGN( 2+
                                 (-SQR( SIGN(starts[TASKS]-ord(Count) ) +
                                        SIGN(ends[TASKS]-ord(Count)-1)
                                        )) )) ;
Eq_3(Count)..
    Sum{TASKS, Position[TASKS,Count] } =l=  2 ;

Eq_4(TASKS)..
    Sum{Count, Position[TASKS,Count] } =l=  ord(TASKS) ;


Def_Obj(TASKS)..
    Obj =g= ends[TASKS] ;

starts.lo[TASKS]    =   1            ;
starts.up[TASKS]    = HORIZON        ;
ends.lo[TASKS]      =   1            ;
ends.up[TASKS]      = HORIZON        ;
Position.lo[TASKS,Count] = 0 ;
Position.up[TASKS,Count] = 1 ;


* Kalis solutions

*starts.fx['T1']    =   1            ;
*starts.fx['T2']    =   2            ;
 starts.lo['T3']    =   5            ;
*starts.fx['T4']    =   1            ;
 starts.lo['T5']    =   4            ;

*ends.fx['T1']    =   2            ;
*ends.fx['T2']    =   4            ;
*ends.fx['T3']    =   8            ;
*ends.fx['T4']    =   5            ;
*ends.fx['T5']    =   9            ;


Model Cumulative_scheduling / all / ;

Solve Cumulative_scheduling using DNLP minimazing Obj ;

Display Obj.l ;





*****************************************************************
*   CP example problems
*   ===================
*
*   file solution_ive.mos
*   `````````````````````
*   Using callbacks to draw a user graph with Xpress-IVE.
*
*   (c) 2005 Artelys SA and Dash Associates, rev. 2007
*
******************************************************************
* model "Using callbacks"
*  uses "kalis", "mmive"


* Set of tasks
Set TASKS / t1*t5 / ;
* Task durations
Parameter DUR[TASKS]    / t1 21 , t2  53 , t3  95 , t4  55 , t5  34 / ;
* Due dates
Parameter DUE[TASKS]    / t1 66 , t2 101 , t3 232 , t4 125 , t5 30 / ;
* Weights of tasks
Parameter WEIGHT[TASKS] / t1  1 , t2   2 , t3   3 , t4   4 , t5   5 / ;

Set Count /c1*c700/;

Variable
          Position[TASKS,Count] ,
* Start times
          start[TASKS]          ,
* Tardiness
          tardiness[TASKS]      ,
* Aux. variable
          tmp[TASKS]            ,
* Objective variable
          twt                   ;
Equation
          Eq_1(TASKS)       ,
          Eq_2(TASKS)       ,
          Eq_3(TASKS,Count) ,
          Eq_4(Count)       ,
          Def_Obj           ;

Eq_1(TASKS)..
    tardiness[TASKS] =e= 0.5*{Sqrt(tmp[TASKS]*tmp[TASKS]) + tmp[TASKS]} ;

Eq_2(TASKS)..
    tmp[TASKS] =e= start[TASKS] + DUR[TASKS] - DUE[TASKS] ;

Def_Obj..
    twt =e= Sum{TASKS,( WEIGHT[TASKS] * tardiness[TASKS] ) } ;

Eq_3(TASKS,Count)..
        Position[TASKS,Count] =e= round(
                             SIGN( 1+ SIGN( 2+
                                 (-SQR( SIGN(Start[TASKS]-ord(Count) ) +
                                        SIGN([start[TASKS] + DUR[TASKS] ]-ord(Count)-1)
                                        )) )) ) ;

Eq_4(Count)..
        Sum{TASKS,Position[TASKS,Count]} =l=  1 ;


start.lo[TASKS] = 0 ;

Position.lo[TASKS,Count] = 0 ;

start.lo['t1'] = 142 ;
start.lo['t2'] =  34 ;
start.lo['t3'] = 163 ;
start.lo['t4'] =  87 ;


Model Using_callbacks / all / ;

Solve Using_callbacks using DNLP minimazing twt ;

Display twt.l ;
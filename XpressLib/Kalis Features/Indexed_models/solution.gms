*****************************************************************
*   CP example problems
*   ===================
*
*   file solution.mos
*   `````````````````
*   Using callbacks to output the search tree.
*
*   (c) 2005 Artelys SA and Dash Associates, rev. 2007
*
******************************************************************
* model "Using callbacks"
*  uses "kalis"


* Set of tasks
Set TASKS / t1*t5 / ;
* Task durations
Parameter DUR[TASKS]    / t1 21 , t2  53 , t3  95 , t4  55 , t5  34 / ;
* Due dates
Parameter DUE[TASKS]    / t1 66 , t2 101 , t3 232 , t4 125 , t5 150 / ;
* Weights of tasks
Parameter WEIGHT[TASKS] / t1  1 , t2   1 , t3   1 , t4   1 , t5   1 / ;

Set Count /c1*c500/;

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
        Position[TASKS,Count] =e=round(
                             SIGN( 1+ SIGN( 2+
                                 (-SQR( SIGN(Start[TASKS]-ord(Count) ) +
                                        SIGN([start[TASKS] + DUR[TASKS]]-ord(Count)-1)
                                        )) ))
                                       ) ;

Eq_4(Count)..
        Sum{TASKS,Position[TASKS,Count]} =l=  1.9 ;

start.lo[TASKS] = 0 ;

start.lo['t2'] =  21 ;
start.lo['t3'] = 163 ;
start.lo['t4'] =  74 ;
start.lo['t5'] = 129 ;
*twt.fx = 43 ;

Model Using_callbacks / all / ;

Solve Using_callbacks using DNLP minimazing twt ;

Display twt.l ;
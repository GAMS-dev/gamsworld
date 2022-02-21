******************************************************
*   Mosel Example Problems
*   ======================
*
* origin file b1stadium.mos
*   ``````````````````
*   Construction of a stadium
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "B-1 Stadium construction"

$Set N 19
* Number of tasks in the project
* (last = fictitious end task)
Set TASKS / t1*t%N% / ;
Alias(TASKS,TASKS1);

Parameter ARC[TASKS,TASKS1] ;
* Matrix of the adjacency graph

ARC['t1','t2']  = 1 ;
ARC['t2','t3']  = 1 ;
ARC['t2','t4']  = 1 ;
ARC['t2','t14'] = 1 ;
ARC['t3','t5']  = 1 ;
ARC['t4','t6']  = 1 ;
ARC['t4','t7']  = 1 ;
ARC['t4','t9']  = 1 ;
ARC['t4','t10'] = 1 ;
ARC['t4','t15'] = 1 ;
ARC['t5','t6']  = 1 ;
ARC['t6','t8']  = 1 ;
ARC['t6','t9']  = 1 ;
ARC['t6','t11'] = 1 ;
ARC['t7','t13'] = 1 ;
ARC['t8','t16'] = 1 ;
ARC['t9','t12'] = 1 ;
ARC['t10','t19']= 1 ;
ARC['t11','t16']= 1 ;
ARC['t12','t17']= 1 ;
ARC['t13','t19']= 1 ;
ARC['t14','t15']= 1 ;
ARC['t14','t16']= 1 ;
ARC['t15','t19']= 1 ;
ARC['t16','t19']= 1 ;
ARC['t17','t18']= 1 ;
ARC['t18','t19']= 1 ;

Parameter DUR[TASKS] / t1  2 , t2 16 , t3  9 , t4  8 ,
                       t5 10 , t6  6 , t7  2 , t8  2 ,
                       t9  9 , t10 5 , t11 3 , t12 2 ,
                       t13 1 , t14 7 , t15 4 , t16 3 ,
                       t17 9 , t18 1 , t19 0 /;
* Duration of tasks

Variable start[TASKS]       ,
* Start times of tasks
         obj1               ;
* Solution of first problem
Equation Prec(TASKS,TASKS1) ,
         Def_obj_1          ;

* Precedence relations between tasks
Prec(TASKS,TASKS1)$(ARC[TASKS,TASKS1] gt 0)..
     start[TASKS1] - start[TASKS] =g= DUR[TASKS];

* Solve the first problem: minimize the total duration
Def_obj_1..
     obj1 =e= start['t%N%'] ;

start.lo[TASKS] = 0 ;

Model B_1_Stadium_construction / all / ;

Solve B_1_Stadium_construction using lp minimazing obj1 ;

Display obj1.l ;

* **** Extend the problem ****

Scalar BONUS / 30  / ;
* Bonus per week finished earlier
Parameter MAXW[TASKS] /  t1  0 ,  t2  3 ,  t3  1 ,  t4  2 ,
                         t5  2 ,  t6  1 ,  t7  1 ,  t8  0 ,
                         t9  2 , t10  1 , t11  1 , t12  0 ,
                        t13  0 , t14  2 , t15  2 , t16  1 ,
                        t17  3 , t18  0 , t19  0 / ;
* Max. reduction of tasks (in weeks)
Parameter COST[TASKS] /   t1  0 ,  t2 30 ,  t3 26 ,  t4 12 ,
                          t5 17 ,  t6 15 ,  t7  8 ,  t8  0 ,
                          t9 42 , t10 21 , t11 18 , t12  0 ,
                         t13  0 , t14 22 , t15 12 , t16  6 ,
                         t17 16 , t18  0 , t19  0 / ;
* Cost of reducing tasks by a week

Variable save[TASKS]       ,
* Number of weeks finished early
         start_1[TASKS]    ,
         Profit            ;
Equation Eq_1                 ,
         Prec_1(TASKS,TASKS1) ,
         Def_obj_2            ;

* Total duration
Eq_1..
obj1.l =e= start_1['t%N%'] + save['t%N%'] ;

* Redefine precedence relations between tasks
Prec_1(TASKS,TASKS1)$(ARC[TASKS,TASKS1] gt 0)..
start_1[TASKS1] - start_1[TASKS] + save[TASKS] =g= DUR[TASKS] ;

* Second objective function
Def_obj_2..
 Profit =e= BONUS*save['t%N%'] -
            Sum{TASKS$(ord(TASKS) ne card(TASKS)),COST[TASKS]*save[TASKS]} ;

* Limit on number of weeks that may be saved
save.up[TASKS]$(ord(TASKS) ne card(TASKS)) = MAXW[TASKS] ;
save.lo[TASKS] = 0 ;
start_1.lo[TASKS]= 0 ;

* XPress solution
*save.fx[TASKS] = 0 ;
*save.fx['t2']  =  3 ;
*save.fx['t3']  =  1 ;
*save.fx['t5']  =  2 ;
*save.fx['t6']  =  1 ;
*save.fx['t17'] =  3 ;
*save.fx['t19'] = 10 ;



* Solve the second problem: maximize the total profit
Model B_2_Stadium_construction / all / ;

Solve B_2_Stadium_construction  using  lp maximazing Profit ;



Display Profit.l ;



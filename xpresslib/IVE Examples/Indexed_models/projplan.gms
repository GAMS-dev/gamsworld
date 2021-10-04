*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file projplan.mos
*   `````````````````
*   TYPE:         Planning projects with resource constraints
*   DIFFICULTY:   3
*   FEATURES:     MIP problem, alternative formulation with SOS-1,
*                 tricky formulation of resource use profiles and
*                 calculation of benefits, graphical solution representation
*   DESCRIPTION:  Over the next 6 months we have three projects which can
*                 be done. Each of these projects has a profile of manpower
*                 requirements over its lifetime, and a benefit which accrues
*                 each month when the project has been completed.
*                 Our problem is to determine when each project is to start,
*                 subject to the constraint that in no month can we try to
*                 use more manpower than is available.
*   FURTHER INFO: `Applications of optimization with Xpress-MP teaching
*                 material', Section 2.3 `SOS-1: Manpower planning';
*                 `Applications of optimization with Xpress-MP',
*                 Section 3.4.4 `Special Ordered Sets of type 1'.
*                 Similar problem:
*                 Section 7.1 `Construction of a stadium'
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Manpower planning"


* Number of projects
$Set NP 3
* Projects
Set PROJ / n1*n%NP% / ;
* Time horizon
$Set NT 6
* Months to plan for
Set TIME / t1*t%NT% / ;
Alias(TIME,TIME1);
Alias(TIME,TIME2);

* Duration of projects
Parameter DUR[PROJ] / n1 3 , n2 3 , n3 4 / ;
* Benefit per month once project is finished
Parameter BEN[PROJ] / n1 10.2 , n2 12.3 , n3 11.2 / ;
* Resource available per month
Parameter RESMAX[TIME] / t1 5 , t2 6 , t3 7 ,
                         t4 7 , t5 6 , t6 6 / ;
* Resource usage per project
* (other entries are 0 by default)
Table RESUSE[PROJ,TIME]
                 t1  t2  t3  t4  t5  t6
             n1   3   4   2   0   0   0
             n2   4   1   5   0   0   0
             n3   3   2   1   2   0   0   ;

Binary Variable
* 1 if project p starts in month t, else 0
                x[PROJ,TIME] ;

Variable
* Starting time of project t
         start[PROJ]  ,
         MaxBen       ;
Equation Capacity(TIME) ,
         OneStart(PROJ) ,
         Link(PROJ)     ,
         Def_Obj ;


* Resource availability
Capacity(TIME)..
    Sum{(PROJ,TIME1)$(ord(TIME1) le ord(TIME)),
                    Sum{TIME2$(ord(TIME2) eq (ord(TIME) - ord(TIME1) + 1)),
                    RESUSE[PROJ,TIME2]}*
                    x[PROJ,TIME1] } =l= RESMAX[TIME] ;

* Each project starts once and only once
OneStart(PROJ)..
    Sum{TIME, x[PROJ,TIME]} =e= 1 ;

* Connect variables x(p,t) and start(p)
Link(PROJ)..
    Sum{TIME, ord(TIME)*x[PROJ,TIME]} =e= start[PROJ] ;

* Objective: Maximize Benefit
Def_Obj..
    MaxBen =e=  Sum{(PROJ,TIME)$(ord(TIME) le %NT%-DUR[PROJ]),
                              (BEN[PROJ]*
                               (%NT%-ord(TIME)-DUR[PROJ]+1))*
                               x[PROJ,TIME] } ;

* Finish everything by the end of the planning period
start.up[PROJ] = %NT%-DUR[PROJ]+1 ;

* Solve the problem
Model Manpower_planning / all / ;

Solve Manpower_planning using MIP Maximazing MaxBen ;

Display MaxBen.l ;


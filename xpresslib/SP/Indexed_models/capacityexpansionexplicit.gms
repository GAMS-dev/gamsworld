*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: CapacityExpansionExhaustive.mos
*
*   DESCRIPTION: Stochastic multi-stage linear model
*
*   TYPE: Energy
*
*      In a power-generating plant, we consider three modes
*   of operations; namely low, average, and high. Clearly,
*   the trend of power demanded in each year may vary depending
*   on various factors such as rainfall, weather conditions,
*   etc. We also consider three technologies (old, current,
*   and new). Capacity expansion plans and the operational
*   decisions need to be laid out for next three years. The
*   objective is to minimize the expected total investment
*   and production cost.
*
*   MODEL:
*   • Sets
*        o Stages=1..4 :indexed by t
*        o Technology={old,curr,new} :indexed by i
*        o Modes={low,avg,high} :indexed by j
*   • Data
*        o g(i,t): existing capacity of technology i added at time t
*        o r(i,t):investment cost per unit of capacity of technology i added at time t
*        o q(i,t):production cost per unit of capacity of technology i added at time t
*   • Decision variables
*        o x(i,t): capacity of technology i added at time t
*        o y(i,j,t):capacity of type i dedicated in mode j at time t
*   • Constraints
*        o Accumulated Capacity balance
*        o Demand balance
*   • Objective
*        o minimize the expected total investment and production cost
*
*
*   The capacities are added in the first two years and hence the total available
*   capacities are realized in the second and the third year. In the years second
*   through fourth, the available capacities are distributed among different modes.
*
*   The scenarios are created by discretizing the load-duration curve. For simplicity,
*   the duration in each mode is considered one-third of a year. We present following way
*   of generating scenarios:
*    Explicit: The demand in the subsequent year depends on the earlier years’
*   demand and hence, all possible realizations are explicitly defined.
*
*   FURTHER INFO: see section II.4.6: Capacity Expansion of Electric Power Generation Systems
*   'Stochastic Modeling in Economics and Finance' - Jitka Dipacova, Jan Hurt, and Joseph Stepan,
*   Kluwer Academic Publishers
*
*   see Xpress-SP guide
*
*   DATE: Oct 2006
*
*   (c) 2005 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
********************************************************
* model CapacityExpansion
* uses 'mmsp'

*years
$Set T 4


Set Stages / s1*s%T% / ;
Set Technology  / curr , new , old  / ;
Set Modes       /   avg , high , low / ;

*investment cost in $1000/MW capacity added
Table r[Technology,Stages]
                  s1   s2
          curr    464   500
          new     508   507
          old     534   490 ;

*existing capacity in MW
Table  g[Technology,Stages]
                  s1    s2    s3
          curr    80    50    20
          new     70    35    20
          old     40    25    15 ;


*unit production cost in $1000/MWh
*Table  q[Technology,Stages]
*                   s2    s3    s4
*          old    0.040 0.034 0.032
*          curr   0.030 0.022 0.021
*          new    0.019 0.018 0.016  ;
*
*investment cost in $1000/MW capacity added
*Table r[Technology,Stages]
*                  s1   s2
*          curr    464   500
*          new     508   507
*          old     534   490 ;
*
*existing capacity in MW
*Table  g[Technology,Stages]
*                  s1    s2    s3
*          curr    80    50    20
*          new     70    35    20
*          old     40    25    15 ;


*unit production cost in $1000/MWh
Table  q[Technology,Stages]
                   s2    s3    s4
          curr    0.040 0.034 0.032
          new     0.030 0.022 0.021
          old     0.019 0.018 0.016  ;

*time in hour spent in each mode
Scalar tau     / 2900 / ;
*maximum additional capacity that can be added in MW
Scalar Budget  /  350 / ;
*for not meeting demand in $1000/MW
Scalar Penalty / 1300 / ;


Set J /j1*j7/;
Parameter V[Modes,Stages,J] ;

V['avg','s2','j1'] = 20 ;
V['avg','s2','j2'] = 25 ;
V['avg','s2','j3'] = 30 ;
V['avg','s2','j4'] =  0 ;
V['avg','s2','j5'] =  0 ;
V['avg','s2','j6'] =  0 ;
V['avg','s2','j7'] =  0 ;
V['avg','s3','j1'] = 50 ;
V['avg','s3','j2'] = 55 ;
V['avg','s3','j3'] = 60 ;
V['avg','s3','j4'] =  0 ;
V['avg','s3','j5'] =  0 ;
V['avg','s3','j6'] =  0 ;
V['avg','s3','j7'] =  0 ;
V['avg','s4','j1'] = 30 ;
V['avg','s4','j2'] = 60 ;
V['avg','s4','j3'] = 90 ;
V['avg','s4','j4'] =  0 ;
V['avg','s4','j5'] =  0 ;
V['avg','s4','j6'] =  0 ;
V['avg','s4','j7'] =  0 ;

V['high','s2','j1']= 25 ;
V['high','s2','j2']= 35 ;
V['high','s2','j3']= 30 ;
V['high','s2','j4']= 30 ;
V['high','s2','j5']=  0 ;
V['high','s2','j6']=  0 ;
V['high','s2','j7']=  0 ;
V['high','s3','j1']= 55 ;
V['high','s3','j2']= 65 ;
V['high','s3','j3']= 60 ;
V['high','s3','j4']= 60 ;
V['high','s3','j5']=  0 ;
V['high','s3','j6']=  0 ;
V['high','s3','j7']=  0 ;
V['high','s4','j1']= 85 ;
V['high','s4','j2']= 95 ;
V['high','s4','j3']= 90 ;
V['high','s4','j4']= 90 ;
V['high','s4','j5']=  0 ;
V['high','s4','j6']=  0 ;
V['high','s4','j7']=  0 ;

V['low','s2','j1'] = 38 ;
V['low','s2','j2'] = 35 ;
V['low','s2','j3'] = 38 ;
V['low','s2','j4'] = 40 ;
V['low','s2','j5'] = 36 ;
V['low','s2','j6'] = 39 ;
V['low','s2','j7'] = 38 ;
V['low','s3','j1'] = 68 ;
V['low','s3','j2'] = 65 ;
V['low','s3','j3'] = 68 ;
V['low','s3','j4'] = 70 ;
V['low','s3','j5'] = 66 ;
V['low','s3','j6'] = 69 ;
V['low','s3','j7'] = 68 ;
V['low','s4','j1'] = 98 ;
V['low','s4','j2'] = 95 ;
V['low','s4','j3'] = 98 ;
V['low','s4','j4'] =100 ;
V['low','s4','j5'] = 96 ;
V['low','s4','j6'] = 99 ;
V['low','s4','j7'] = 98 ;

Alias(Modes,Modes1);
Alias(Stages,Stages1);

*total demand in MW
Parameter  d[Modes,Stages] ;
Loop{(Modes,Stages,J)$((ord(Stages) gt 1)and(ord(J) eq 1)),
           d[Modes,Stages] =
Sum{(Modes1,Stages1)$((ord(Stages1) gt 1)               and
                      (ord(Modes1)    eq ord(Stages)-1 )and
                      (ord(Stages1)-1 eq ord(Modes)    )    ),
                                      V[Modes1,Stages1,J]} ;
    };


Positive Variable
*total unmet demand in MW
          umd[Modes,Stages]           ,
*additional capacity in MW
          x[Technology,Stages]        ,
*total available capacity in MW
          w[Technology,Stages]        ,
*capacity used in production in MW
          y[Technology,Modes,Stages]  ;
Variable
          Cost                        ;
Equation
        BudgetSpent                                      ,
        AccumulatedCapacity_1(Technology,Stages)         ,
        AccumulatedCapacity_2(Technology,Stages)         ,
        Demand(Modes,Stages)                             ,
        Capacity_1(Technology,Stages)                    ,
        Capacity_2(Technology,Stages)                    ,
        Def_Obj                                          ;

BudgetSpent..
    Sum{(Technology,Stages)$(ord(Stages) le card(Stages)-2),
           1*x[Technology,Stages] } =l= Budget ;

AccumulatedCapacity_1(Technology,Stages)$((ord(Stages) ge 3)and
                                          (ord(Stages) le card(Stages)-1))..
    w[Technology,Stages] =e= x[Technology,Stages-1]+w[Technology,Stages-1];

AccumulatedCapacity_2(Technology,Stages)$((ord(Stages) eq 2)and
                                          (ord(Stages) le card(Stages)-1))..
    w[Technology,Stages] =e= x[Technology,Stages-1];

Demand(Modes,Stages)$(ord(Stages) le card(Stages)-1)..
    umd[Modes,Stages] +
    Sum{Technology, 1*y[Technology,Modes,Stages+1]} =g= d[Modes,Stages+1];

Capacity_1(Technology,Stages)$((ord(Stages) ge 2)and
                                 (ord(Stages) le card(Stages)-1))..
    Sum{Modes, 1*y[Technology,Modes,Stages+1]} =l= (g[Technology,Stages] +
                                                    w[Technology,Stages]);

Capacity_2(Technology,Stages)$((ord(Stages) eq 1)and
                                 (ord(Stages) le card(Stages)-1))..
    Sum{Modes, 1*y[Technology,Modes,Stages+1]} =l=g[Technology,Stages];


Def_Obj..
    Cost =e= Sum{(Stages,Technology)$(ord(Stages) le card(Stages)-2),
                                    r[Technology,Stages]       *
                                    x[Technology,Stages]            } +
             Sum{(Stages,Technology,Modes)$(ord(Stages) ge 2),
                                    q[Technology,Stages]       *
                                    tau                        *
                                    y(Technology,Modes,Stages)      } +
             Sum{(Modes,Stages)$(ord(Stages) le card(Stages)-1),
                                    Penalty*umd[Modes,Stages]       }  ;

* XPress solution
*w.fx['old','s2'] = 105 ;
*w.fx['old','s3'] = 149 ;

*w.fx['old','s1'] = 105 ;
*w.fx['old','s2'] =  50 ;
*y.fx['new','avg','s2'] = 20 ;
*y.fx['curr','avg','s4'] = 14 ;
*Optimization
*maximize the expected profit
Model CapacityExpansion /all / ;
Solve CapacityExpansion using LP minimazing Cost ;
Display Cost.l ;

Parameter OperatingCost(Stages)       ;
OperatingCost(Stages) =  Sum{(Technology,Modes),
             q(Technology,Stages)*tau*y.l(Technology,Modes,Stages)};
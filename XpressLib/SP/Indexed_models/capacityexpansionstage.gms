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
*    Stage symmetric: There are 8, 5, and 3 load-duration curves possible in the
*   first, second, and third year respectively.
*
*   FURTHER INFO: see section II.4.6: Capacity Expansion of Electric Power Generation Systems
*   'Stochastic Modeling in Economics and Finance' - Jitka Dipacova, Jan Hurt, and Joseph Stepan,
*   Kluwer Academic Publishers
*
*   see Xpress-SP guide
*
*   DATE: Oct 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
*******************************************************!)
* model CapacityExpansion
* uses 'mmsp'

*years
$Set T 4

Set Stages / s1*s%T% / ;
Set Technology  /curr , new , old    / ;
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

Set J /j1*j8/;
Parameter BranchValues[Modes,Stages,J];

Parameter A1[J] /j1 80,j2 81,j3  82,j4 83,j5 84,j6 86,j7 87,j8 88/ ;
Parameter A2[J] /j1 86,j2 88,j3  90,j4 93,j5 95,j6  0,j7  0,j8  0/ ;
Parameter A3[J] /j1 96,j2 98,j3 100,j4  0,j5  0,j6  0,j7  0,j8  0/ ;
Parameter A4[J] /j1 50,j2 51,j3  52,j4 53,j5 54,j6 56,j7 57,j8 58/ ;
Parameter A5[J] /j1 56,j2 58,j3  60,j4 63,j5 65,j6  0,j7  0,j8  0/ ;
Parameter A6[J] /j1 66,j2 68,j3  70,j4  0,j5  0,j6  0,j7  0,j8  0/ ;
Parameter A7[J] /j1 20,j2 21,j3  22,j4 23,j5 24,j6 26,j7 27,j8 28/ ;
Parameter A8[J] /j1 26,j2 28,j3  30,j4 33,j5 35,j6  0,j7  0,j8  0/ ;
Parameter A9[J] /j1 36,j2 38,j3  40,j4  0,j5  0,j6  0,j7  0,j8  0/ ;

*total demand in MW
Parameter d[Modes,Stages] ;
          d['avg','s2'] =  A1['j1'] ;
          d['avg','s3'] =  A2['j1'] ;
          d['avg','s4'] =  A3['j1'] ;

          d['high','s2'] = A4['j1'] ;
          d['high','s3'] = A5['j1'] ;
          d['high','s4'] = A6['j1'] ;

          d['low','s2'] =  A7['j1'] ;
          d['low','s3'] =  A8['j1'] ;
          d['low','s4'] =  A9['j1'] ;

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

Model CapacityExpansion /all / ;
Solve CapacityExpansion using LP minimazing Cost ;
Display Cost.l ;

Parameter OperatingCost(Stages)       ;
OperatingCost(Stages) =  Sum{(Technology,Modes),
             q(Technology,Stages)*tau*y.l(Technology,Modes,Stages)};




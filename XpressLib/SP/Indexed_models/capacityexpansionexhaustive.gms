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


*   The capacities are added in the first two years and hence the total available
*   capacities are realized in the second and the third year. In the years second
*   through fourth, the available capacities are distributed among different modes.
*
*   The scenarios are created by discretizing the load-duration curve. For simplicity,
*   the duration in each mode is considered one-third of a year. We present following way
*   of generating scenarios:
*    Exhaustive: The demand (low, average, and high) has an independent distribution
*   in each year.

*   FURTHER INFO:
*        see section II.4.6: Capacity Expansion of Electric Power Generation Systems,
*        'Stochastic Modeling in Economics and Finance' - Jitka Dipacova, Jan Hurt, and Joseph Stepan,
*        Kluwer Academic Publishers
*
*        see Xpress-SP guide

*   DATE: Oct 2006

*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ

*******************************************************
*model CapacityExpansion
*uses 'mmsp'

*years
$Set T 4

Set Stages / t1*t%T% / ;
Set Technology / old , curr , new / ;
Set Modes / low , avg , high / ;
Set E /e1*e3/;
Parameter val_d[Modes,Stages,E] ;
val_d['low','t2','e1'] =20;val_d['low','t2','e2'] = 25;val_d['low','t2','e3']=0 ;
val_d['low','t3','e1'] =28;val_d['low','t3','e2'] = 33;val_d['low','t3','e3']=0 ;
val_d['low','t4','e1'] =36;val_d['low','t4','e2'] = 40;val_d['low','t4','e3']=0 ;

val_d['avg','t2','e1'] =50;val_d['avg','t2','e2'] = 55;val_d['avg','t2','e3']=0 ;
val_d['avg','t3','e1'] =58;val_d['avg','t3','e2'] = 63;val_d['avg','t3','e3']=0 ;
val_d['avg','t4','e1'] =66;val_d['avg','t4','e2'] = 70;val_d['avg','t4','e3']=0 ;

val_d['high','t2','e1']=80;val_d['high','t2','e2']= 85;val_d['high','t2','e3']=0;
val_d['high','t3','e1']=88;val_d['high','t3','e2']= 93;val_d['high','t3','e3']=0;
val_d['high','t4','e1']=96;val_d['high','t4','e2']=100;val_d['high','t4','e3']=0;

*total demand in MW
Parameter d[Modes,Stages] ;
*d['low','t2']   =  25 ; d['low','t3']   =  33 ; d['low','t4']   =  40 ;
*d['avg','t2']   =  55 ; d['avg','t3']   =  63 ; d['avg','t4']   =  70 ;
*d['high','t2']  =  85 ; d['high','t3']  =  93 ; d['high','t4']  = 100 ;
Loop{(Modes,Stages),
Loop{E,
If (val_d[Modes,Stages,E] gt 0, d[Modes,Stages] = val_d[Modes,Stages,E]);
   }; };

*investment cost in $1000/MW capacity added
Parameter r[Technology,Stages] ;
r['curr','t1'] = 464 ; r['curr','t2'] = 500 ;
r['new','t1']  = 508 ; r['new','t2']  = 507 ;
r['old','t1']  = 534 ; r['old','t2']  = 490 ;

*existing capacity in MW
Parameter g[Technology,Stages] ;
*unit production cost in $1000/MWh
g['curr','t1'] = 80 ; g['curr','t2'] = 50 ; g['curr','t3'] = 20 ;
g['new','t1']  = 70 ; g['new','t2']  = 35 ; g['new','t3']  = 20 ;
g['old','t1']  = 40 ; g['old','t2']  = 25 ; g['old','t3']  = 15 ;

Parameter q[Technology,Stages] ;
q['curr','t2'] = 0.040 ; q['curr','t3'] =  0.034 ; q['curr','t4'] = 0.032 ;
q['new','t2']  = 0.030 ; q['new','t3']  =  0.022 ; q['new','t4']  = 0.021 ;
q['old','t2']  = 0.019 ; q['old','t3']  =  0.018 ; q['old','t4']  = 0.016 ;

*time in hour spent in each mode
Scalar tau      / 2900 / ;
*maximum additional capacity that can be added in MW
Scalar Budget   /  350 / ;
*for not meeting demand in $1000/MW
Scalar Penalty  / 1300 / ;

Variable
*total unmet demand in MW
        umd[Modes,Stages]          ,
*additional capacity in MW
        x[Technology,Stages]       ,
*total available capacity in MW
        w[Technology,Stages]       ,
*capacity used in production in MW
        y[Technology,Modes,Stages] ,
        Cost                       ;

Equation BudgetSpent
         AccumulatedCapacity_1(Technology,Stages)
         AccumulatedCapacity_2(Technology,Stages)
         Demand(Modes,Stages)
         Capacity_1(Technology,Stages)
         Capacity_2(Technology,Stages)
         Def_Obj ;

BudgetSpent..
     Sum{(Technology,Stages)$(ord(Stages) le card(Stages)-2),
                            x[Technology,Stages] } =l= Budget ;

AccumulatedCapacity_1(Technology,Stages)$((ord(Stages) ge 3  ) and
                                          (ord(Stages) lt card(Stages)) )..

     w[Technology,Stages]=e= x[Technology,Stages-1]+w[Technology,Stages-1] ;

AccumulatedCapacity_2(Technology,Stages)$((ord(Stages) gt 1  ) and
                                          (ord(Stages) lt 3  ) )..
     w[Technology,Stages]=e= x[Technology,Stages-1] ;

Demand(Modes,Stages)$(ord(Stages) lt card(Stages))..
     umd(Modes,Stages)+ Sum{Technology,y[Technology,Modes,Stages+1]} =g=
                                       d[Modes,Stages+1] ;

Capacity_1(Technology,Stages)$((ord(Stages) lt card(Stages))and(ord(Stages) gt 1))..
     Sum{Modes, y[Technology,Modes,Stages+1] } =l=
    (g[Technology,Stages]+w[Technology,Stages]);

Capacity_2(Technology,Stages)$(ord(Stages) eq 1)..
     Sum{Modes, y[Technology,Modes,Stages+1] } =l= g[Technology,Stages] ;

Def_Obj..
    Cost =e= Sum{(Stages,Technology)$(ord(Stages) le card(Stages)-2),
                                r[Technology,Stages]*
                                x[Technology,Stages]           }  +
             Sum{(Stages,Technology,Modes)$(ord(Stages) gt 1),
                                q[Technology,Stages]*
                                tau*
                                y[Technology,Modes,Stages]     } +
             Sum{(Modes,Stages)$(ord(Stages) lt card(Stages)),
                                Penalty*umd[Modes,Stages] } ;

umd.lo[Modes,Stages]  = 0 ;
x.lo[Technology,Stages]       = 0 ;
y.lo[Technology,Modes,Stages] = 0 ;
w.lo[Technology,Stages]       = 0 ;
Model CapacityExpansionExhaustive /all / ;
Solve CapacityExpansionExhaustive using LP minimazing Cost ;
Display Cost.l ;
Parameter OperatingCost(Stages) ;
Loop{Stages$(ord(Stages) gt 1),
OperatingCost(Stages) = Sum{(Technology,Modes),
                             q(Technology,Stages)*
                             tau*
                             y.l(Technology,Modes,Stages)} ;
     } ;




*
*prob:[.5,.5,0,
*      .5,.5,0,
*      .4,.6,0,

*      .6,.4,0,
*      .4,.6,0,
*      .6,.4,0,

*      .4,.6,0,
*      .5,.5,0,
*      .5,.5,0]
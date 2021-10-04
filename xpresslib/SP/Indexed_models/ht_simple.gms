*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: HT_simple.mos
*
*   DESCRIPTION:   multi-stage stochastic linear model
*
*   TYPE:  Energy: Power management in a hydro-thermal
*                                                system under uncertainty
*
*        There are T time periods. I and J are the numbers of thermal
*   and hydro units, respectively. For a thermal unit i in period t
*   u(i,t) in {0,1} is its commitment (1 if on, 0 if off) and p(i,t)
*   its production, with p(i,t)=0 if u(i,t)=0, p(i,t) in
*   [P_min(i,t),P_max(i,t)] if u(i,t)=1. Additionally there are minimum
*   up/down-time requirements : when unit i is switched on (off) it must
*   remain on (off) for at least tau_up(i) (tau_dn(i)) periods. For a
*   hydro plant j, s(j,t) and w(j,t) are its generation and pumping
*   levels in period t with upper bounds S_max(j,t) and W_max(j,t) resp,
*   and l(j,t) is the storage volume in the upper dam at the end of period t
*   with upper bound L_max(j,t). The water balance relates l(j,t) with l(j,t-1),
*   s(j,t), w(j,t) and water inflow gamma(j,t) using the pumping efficiency eta(j).
*   The initial and final volumes are specified by l_in(j) and l_end(j).
*
*   The basic system requirement is to meet the electric load. Another
*   important requirement is the spinning reserve constraint. To maintain
*   reliability (compensate sudden load peaks or unforeseen outages of units)
*   the total commited capacity should exceed the load in every period by a
*   certain amount (e.g., a fraction of the demand). The load and the spinning
*   reserve during period t are denoted by d(t) and r(t), respectively.
*
*   Efficient operation of pumped storage hydro plants exploits daily cycles of
*   load curves by generating during peak load periods and pumping during off-peak
*   periods. Since the operating costs of hydro plants are usually negligible, the
*   total system cost is given by the sum of startup and operating costs of
*   all thermal units over the whole scheduling horizon. The fuel cost C(i,t) for
*   operating thermal unit i during period t has the form
*                        C(i,t)=max(l in 1..L) {a(i,l,t).p(i,t) + b(i,l,t).u(i,t)}
*
*        The startup cost of unit i depends on its downtime; it may vary from a maximum cold
*        start value to a much smaller value when the unit is still relatively close to its
*        operating temperature. This is modeled by the startup cost:
*                S(i,t)=max(tau in 0..tau_c(i)) c(i,tau).{u(i,t)-sum(k in 1..tau) u(i,k-tau)}
*        where 0= c(i,0) < ... < c(i,tau_c(i)) are fixed cost coefficients. tau_c(i) is the
*        cool-down time of unit i, c(i,tau_c(i)) is its maximum cold-start cost,
*        u(i,tau) for tau in tau_ini..0 are given initial values.
*                where tau_ini=1-max(i)(tau_c(i),1-tau_up(i),tau_dn(i)-1)
*
*   MODEL:
*                        min E{sum(t,i) [C(i,t)+S(i,t)]}
*                        s.t
*                        P_min(i,t).u(i,t)<=p(i,t)<=P_max(i,t).u(i,t)
*                        u(i,tau)-u(i,tau-1)<=u(i,t),                            t-tau_up(i)<tau<t
*                        u(i,tau-1)-u(i,tau)<=1-u(i,t),                                 t-tau_dn(i)<tau<t
*                        0<=s(j,t)<=S_max(j,t), 0<=w(j,t)<=W_max(j,t), 0<=l(j,t)<=L_max(j,t)
*                        l(j,t)=l(j,t-1)-s(j,t)+eta(j).w(j,t)+gamma(j,t)
*                        l(j,0)=l_in(j), l(j,T)=l_end(j)
*                        sum(i) p(i,t)+ sum(j) [s(j,t)-w(j,t)] >= d(t)
*                        sum(i) [u(i,t).P_max(i,t) - p(i,t)] >= r(t)
*
*        Uncertainty:
*
*        1. Aggregate stages: assign
*                        set stage of 1..t1              to 1
*                        set stage of t1+1..t2   to 2
*                        .....
*                        set stage of tK+1..T    to NumStages
*        2. Assume demand process (may be identified based on a time series or regression model)
*                d(t)=alpha(t)+si(t)*beta*d(t-1)+lambda*eps(t)           : alpha(t),beta,lambda are given
*                where   si(t) ~Unif(min_si, max_si)             : min_si, max_si are given
*                                eps(t) ~Normal(0,1)
*        3. Based on the model determine an initial structure of the load tree. Compute scenario
*                values, using the sample means and standard deviations of the simulated scenarios. Run
*                NumSimRun simulations and estimate mean demand: mean_dem(t) and variance in demand: var_dem(t)
*        4. Re-build a stable and smaller scenario tree using the estimates and aggregated stages.
*                a) set si(t), eps(t) to stage 0
*                b) set distribution of delta(1),delta(2),...,delta(NumStages) = {1 w.p 0.5, -1 w.p 0.5}
*                c) ensure that means and variances still hold by re-modeling
*                        d(t)= mean_dem(t)+ sum(t_ in 2..t) delta(stage(t_))*sqrt(var_dem(t_)/2^(t_-1))
*                d) generate exhaustive tree based on distributions of delta(1),delta(2),...,delta(NumStages)
*        5. Reduce scenario tree
*                a) define distance between vectors v1 and v2: c(h,v1,v2)=max{1,||v1||^(h-1),||v2||^(h-1)}.||v1-v2||
*                        where h is a parameter, and ||.|| is a Eucleadian norm
*                b) Let realizations of delta=[delta(1),delta(2),...,delta(NumStages)] in scenario k be vector del(k)
*                   Then delete scenario k = arg min (l) { Pr(l). min (s<>l) c(h,del(l),del(s)) }
*                   Then, roughly speaking, deletion occurs where scenarios are close as measured by the
*                   distance c(h,.,.) or where probabilities are small.
*                   The reduced scenario tree has one less scenario; scenario k is deleted, and Pr(s)+=Pr(k).
*                   This reduction procedure may be repeated until a prescribed # scenarios in the reduced
*                   measure is attained.
*                c) Create a scenario tree with final prescribed # scenarios
*                        1. create tree with 2 branches from node in 1st stage, and 1 branch per node from each node in other stages
*                        2. set the revised realized values of delta, and probabilities of scenarios
*        6. Restructure scenario tree
*                a)      For each node(t,n) let PossScen(t,n) be set of original scenarios that branches off from node(t,n) that have same realized values of del(t+1)
*                b)  Find all such possible sets of the PossScen(t,n)'s corresponding to the realizations of del(t+1)
*                c)      Each of the set PossScen(t,n) forms a new child of node(t,n) with the corresponding realized value of delta(t+1) and conditional probability = 1/ unconditional probabilty of node(t,n) * sum(s in PossScen(t,n)) Pr(s)
*
*                In above steps keep track of #children of node(t,n), #node in stage t, and un conditional probaility of node(t,n)
*
*        7. Solve optimization problem with reduced scenario tree
*
*
*   FURTHER INFO:
*   see http://www.dashoptimization.com/home/services/publications/casestudies/casestudy_22.html
*
*   see N. Gröwe-Kuska, K.C. Kiwiel, M.P. Nowak, W. Römisch and I. Wegner: Power management
*   in a hydro-thermal system under uncertainty by Lagrangian relaxation, in: Decision Making
*   under Uncertainty: Energy and Power (C. Greengard, A. Ruszczynski eds.),
*   IMA Volumes in Mathematics and its Applications Vol. 128, Springer-Verlag, New York 2002, 39-70
*   (http://www-iam.mathematik.hu-berlin.de/~romisch/papers/pmhsfin.ps)
*
*   DATE: Oct 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
*******************************************************!)

* model "Power management in a hydro-thermal system under uncertainty"

* uses 'mmsp','mmrng'

$Set T 24
$Set NumStages 5
$Set I 3
$Set J 2
$Set L 5
$Set UU 39


Set count /c1*c%L%/;
Set count_u /u1*u%UU%/;

Set TimeBlocks    / t1*t%T%         / ;
Set Stages        / s1*s%NumStages% / ;
Set ThermalUnits  / i1*i%I%         / ;
Set HydroUnits    / j1*j%J%         / ;
Set Count_c       / cc0*cc20        / ;

Alias(TimeBlocks,tau);
Alias(TimeBlocks,tau1);
Alias(TimeBlocks,TimeBlocks1);

Parameter AggStage[TimeBlocks]  / t1  1 ,  t2 1 ,  t3  1 ,  t4  1 ,
                                  t5  1 ,  t6 1 ,  t7  1 ,  t8  2 ,
                                  t9  2 , t10 2 , t11  2 , t12  2 ,
                                 t13  3 , t14 3 , t15  3 , t16  3 ,
                                 t17  4 , t18 4 , t19  4 , t20  4 ,
                                 t21  5 , t22 5 , t23  5 , t24  5  / ;

Parameter alpha[TimeBlocks]     / t1 50 , t2 50 ,  t3 50 ,  t4 50 ,
                                  t5 50 , t6 50 ,  t7 20 ,  t8 20 ,
                                  t9 20 ,t10 20 , t11 20 , t12 20 ,
                                 t13 20 ,t14 60 , t15 65 , t16 50 ,
                                 t17 50 ,t18 50 , t19 50 , t20 45 ,
                                 t21 45 ,t22 50 , t23 20 , t24 50  / ;



Scalar L         /     5.0  / ;
Scalar NumSim    / 50000.00 / ;
Scalar NumSimRun /     3.00 / ;
Scalar RedSize   /     3.00 / ;
Scalar RelStop   /     0.02 / ;

Scalar beta   /  0.50 / ;
Scalar lambda / 25.00 / ;
Scalar min_si / -0.25 / ;
Scalar max_si /  0.75 / ;

Parameter tau_up[ThermalUnits] / i1  2 , i2  3 , i3  2 / ;
Parameter tau_dn[ThermalUnits] / i1  2 , i2  2 , i3  2 / ;
Parameter tau_c[ThermalUnits]  / i1  1 , i2  2 , i3  2 / ;

Parameter P_max[ThermalUnits]  / i1 46 , i2 52 , i3 48 / ;
Parameter P_min[ThermalUnits]  / i1 10 , i2 13 , i3  6 / ;

Parameter S_max[HydroUnits]    / j1  20       , j2  20        / ;
Parameter W_max[HydroUnits]    / j1  19       , j2  19        / ;
Parameter SL_max[HydroUnits]   / j1 219       , j2 224        / ;
Parameter l_in[HydroUnits]     / j1  76       , j2  69        / ;
Parameter l_end[HydroUnits]    / j1  54       , j2  33        / ;
Parameter eta[HydroUnits]      / j1   0.813992, j2   0.764335 / ;

Table gamma[HydroUnits,TimeBlocks]
   t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24
j1 15 10  9  7 13 10 11  5 11  11  11  15  12   8   9  12   5  12  12   7   6   8   9  11
j2  9 15  6  7  6 12  7 10  7   6   6  12   6   7   9  14   6  14   6  15  10  15  11  13 ;

Parameter r[TimeBlocks]
                         /t1 26 ,  t2 39 ,  t3 31 ,  t4 40 ,
                          t5 31 ,  t6 41 ,  t7 46 ,  t8 28 ,
                          t9 60 , t10 53 , t11 38 , t12 51 ,
                         t13 29 , t14 54 , t15 72 , t16 41 ,
                         t17 59 , t18 31 , t19 61 , t20 39 ,
                         t21 34 , t22 54 , t23 26 , t24 67 / ;

Parameter a[ThermalUnits,TimeBlocks,count] ;
a['i1','t1','c1'] =4; a['i1','t1','c2'] = 6.28709; a['i1','t1','c3'] = 8.69674; a['i1','t1','c4'] = 10.1896; a['i1','t1','c5'] = 12.7462;
a['i1','t2','c1'] =4; a['i1','t2','c2'] = 5.28709; a['i1','t2','c3'] = 8.69674; a['i1','t2','c4'] = 11.1896; a['i1','t2','c5'] = 12.7462;
a['i1','t3','c1'] =3; a['i1','t3','c2'] = 6.28709; a['i1','t3','c3'] = 8.69674; a['i1','t3','c4'] = 11.1896; a['i1','t3','c5'] = 13.7462;
a['i1','t4','c1'] =4; a['i1','t4','c2'] = 6.28709; a['i1','t4','c3'] = 9.69674; a['i1','t4','c4'] = 11.1896; a['i1','t4','c5'] = 13.7462;
a['i1','t5','c1'] =5; a['i1','t5','c2'] = 7.28709; a['i1','t5','c3'] = 9.69674; a['i1','t5','c4'] = 10.1896; a['i1','t5','c5'] = 14.7462;
a['i1','t6','c1'] =5; a['i1','t6','c2'] = 7.28709; a['i1','t6','c3'] = 7.69674; a['i1','t6','c4'] = 12.1896; a['i1','t6','c5'] = 12.7462;
a['i1','t7','c1'] =4; a['i1','t7','c2'] = 5.28709; a['i1','t7','c3'] = 9.69674; a['i1','t7','c4'] = 12.1896; a['i1','t7','c5'] = 13.7462;
a['i1','t8','c1'] =4; a['i1','t8','c2'] = 5.28709; a['i1','t8','c3'] = 9.69674; a['i1','t8','c4'] = 11.1896; a['i1','t8','c5'] = 14.7462;
a['i1','t9','c1'] =5; a['i1','t9','c2'] = 7.28709; a['i1','t9','c3'] = 9.69674; a['i1','t9','c4'] = 10.1896; a['i1','t9','c5'] = 13.7462;
a['i1','t10','c1']=5; a['i1','t10','c2']= 5.28709; a['i1','t10','c3']= 8.69674; a['i1','t10','c4']= 10.1896; a['i1','t10','c5']= 12.7462;
a['i1','t11','c1']=3; a['i1','t11','c2']= 7.28709; a['i1','t11','c3']= 7.69674; a['i1','t11','c4']= 11.1896; a['i1','t11','c5']= 14.7462;
a['i1','t12','c1']=5; a['i1','t12','c2']= 5.28709; a['i1','t12','c3']= 7.69674; a['i1','t12','c4']= 11.1896; a['i1','t12','c5']= 13.7462;
a['i1','t13','c1']=3; a['i1','t13','c2']= 7.28709; a['i1','t13','c3']= 8.69674; a['i1','t13','c4']= 11.1896; a['i1','t13','c5']= 13.7462;
a['i1','t14','c1']=5; a['i1','t14','c2']= 5.28709; a['i1','t14','c3']= 8.69674; a['i1','t14','c4']= 10.1896; a['i1','t14','c5']= 12.7462;
a['i1','t15','c1']=5; a['i1','t15','c2']= 7.28709; a['i1','t15','c3']= 8.69674; a['i1','t15','c4']= 10.1896; a['i1','t15','c5']= 12.7462;
a['i1','t16','c1']=3; a['i1','t16','c2']= 6.28709; a['i1','t16','c3']= 7.69674; a['i1','t16','c4']= 12.1896; a['i1','t16','c5']= 13.7462;
a['i1','t17','c1']=3; a['i1','t17','c2']= 5.28709; a['i1','t17','c3']= 7.69674; a['i1','t17','c4']= 12.1896; a['i1','t17','c5']= 13.7462;
a['i1','t18','c1']=4; a['i1','t18','c2']= 7.28709; a['i1','t18','c3']= 9.69674; a['i1','t18','c4']= 10.1896; a['i1','t18','c5']= 13.7462;
a['i1','t19','c1']=3; a['i1','t19','c2']= 5.28709; a['i1','t19','c3']= 9.69674; a['i1','t19','c4']= 10.1896; a['i1','t19','c5']= 13.7462;
a['i1','t20','c1']=4; a['i1','t20','c2']= 7.28709; a['i1','t20','c3']= 8.69674; a['i1','t20','c4']= 12.1896; a['i1','t20','c5']= 12.7462;
a['i1','t21','c1']=5; a['i1','t21','c2']= 5.28709; a['i1','t21','c3']= 9.69674; a['i1','t21','c4']= 12.1896; a['i1','t21','c5']= 12.7462;
a['i1','t22','c1']=5; a['i1','t22','c2']= 7.28709; a['i1','t22','c3']= 7.69674; a['i1','t22','c4']= 10.1896; a['i1','t22','c5']= 13.7462;
a['i1','t23','c1']=3; a['i1','t23','c2']= 5.28709; a['i1','t23','c3']= 8.69674; a['i1','t23','c4']= 11.1896; a['i1','t23','c5']= 13.7462;
a['i1','t24','c1']=3; a['i1','t24','c2']= 6.28709; a['i1','t24','c3']= 9.69674; a['i1','t24','c4']= 10.1896; a['i1','t24','c5']= 13.7462;
a['i2','t1','c1'] =3; a['i2','t1','c2'] = 7.28709; a['i2','t1','c3'] = 8.69674; a['i2','t1','c4'] = 11.1896; a['i2','t1','c5'] = 12.7462;
a['i2','t2','c1'] =3; a['i2','t2','c2'] = 6.28709; a['i2','t2','c3'] = 8.69674; a['i2','t2','c4'] = 12.1896; a['i2','t2','c5'] = 14.7462;
a['i2','t3','c1'] =5; a['i2','t3','c2'] = 7.28709; a['i2','t3','c3'] = 7.69674; a['i2','t3','c4'] = 11.1896; a['i2','t3','c5'] = 13.7462;
a['i2','t4','c1'] =5; a['i2','t4','c2'] = 5.28709; a['i2','t4','c3'] = 7.69674; a['i2','t4','c4'] = 10.1896; a['i2','t4','c5'] = 12.7462;
a['i2','t5','c1'] =5; a['i2','t5','c2'] = 7.28709; a['i2','t5','c3'] = 9.69674; a['i2','t5','c4'] = 10.1896; a['i2','t5','c5'] = 13.7462;
a['i2','t6','c1'] =3; a['i2','t6','c2'] = 6.28709; a['i2','t6','c3'] = 9.69674; a['i2','t6','c4'] = 12.1896; a['i2','t6','c5'] = 13.7462;
a['i2','t7','c1'] =5; a['i2','t7','c2'] = 5.28709; a['i2','t7','c3'] = 9.69674; a['i2','t7','c4'] = 12.1896; a['i2','t7','c5'] = 14.7462;
a['i2','t8','c1'] =4; a['i2','t8','c2'] = 7.28709; a['i2','t8','c3'] = 7.69674; a['i2','t8','c4'] = 12.1896; a['i2','t8','c5'] = 13.7462;
a['i2','t9','c1'] =3; a['i2','t9','c2'] = 6.28709; a['i2','t9','c3'] = 7.69674; a['i2','t9','c4'] = 12.1896; a['i2','t9','c5'] = 13.7462;
a['i2','t10','c1']=4; a['i2','t10','c2']= 6.28709; a['i2','t10','c3']= 8.69674; a['i2','t10','c4']= 10.1896; a['i2','t10','c5']= 14.7462;
a['i2','t11','c1']=3; a['i2','t11','c2']= 6.28709; a['i2','t11','c3']= 7.69674; a['i2','t11','c4']= 10.1896; a['i2','t11','c5']= 14.7462;
a['i2','t12','c1']=5; a['i2','t12','c2']= 7.28709; a['i2','t12','c3']= 9.69674; a['i2','t12','c4']= 12.1896; a['i2','t12','c5']= 12.7462;
a['i2','t13','c1']=3; a['i2','t13','c2']= 6.28709; a['i2','t13','c3']= 7.69674; a['i2','t13','c4']= 10.1896; a['i2','t13','c5']= 12.7462;
a['i2','t14','c1']=5; a['i2','t14','c2']= 5.28709; a['i2','t14','c3']= 9.69674; a['i2','t14','c4']= 10.1896; a['i2','t14','c5']= 12.7462;
a['i2','t15','c1']=3; a['i2','t15','c2']= 7.28709; a['i2','t15','c3']= 7.69674; a['i2','t15','c4']= 11.1896; a['i2','t15','c5']= 13.7462;
a['i2','t16','c1']=5; a['i2','t16','c2']= 7.28709; a['i2','t16','c3']= 7.69674; a['i2','t16','c4']= 10.1896; a['i2','t16','c5']= 12.7462;
a['i2','t17','c1']=3; a['i2','t17','c2']= 5.28709; a['i2','t17','c3']= 8.69674; a['i2','t17','c4']= 12.1896; a['i2','t17','c5']= 14.7462;
a['i2','t18','c1']=3; a['i2','t18','c2']= 6.28709; a['i2','t18','c3']= 7.69674; a['i2','t18','c4']= 12.1896; a['i2','t18','c5']= 12.7462;
a['i2','t19','c1']=5; a['i2','t19','c2']= 7.28709; a['i2','t19','c3']= 9.69674; a['i2','t19','c4']= 10.1896; a['i2','t19','c5']= 13.7462;
a['i2','t20','c1']=4; a['i2','t20','c2']= 5.28709; a['i2','t20','c3']= 8.69674; a['i2','t20','c4']= 10.1896; a['i2','t20','c5']= 13.7462;
a['i2','t21','c1']=3; a['i2','t21','c2']= 7.28709; a['i2','t21','c3']= 7.69674; a['i2','t21','c4']= 11.1896; a['i2','t21','c5']= 12.7462;
a['i2','t22','c1']=4; a['i2','t22','c2']= 7.28709; a['i2','t22','c3']= 8.69674; a['i2','t22','c4']= 10.1896; a['i2','t22','c5']= 13.7462;
a['i2','t23','c1']=4; a['i2','t23','c2']= 6.28709; a['i2','t23','c3']= 9.69674; a['i2','t23','c4']= 10.1896; a['i2','t23','c5']= 12.7462;
a['i2','t24','c1']=4; a['i2','t24','c2']= 7.28709; a['i2','t24','c3']= 7.69674; a['i2','t24','c4']= 12.1896; a['i2','t24','c5']= 13.7462;
a['i3','t1','c1'] =4; a['i3','t1','c2'] = 7.28709; a['i3','t1','c3'] = 8.69674; a['i3','t1','c4'] = 12.1896; a['i3','t1','c5'] = 13.7462;
a['i3','t2','c1'] =5; a['i3','t2','c2'] = 7.28709; a['i3','t2','c3'] = 9.69674; a['i3','t2','c4'] = 10.1896; a['i3','t2','c5'] = 14.7462;
a['i3','t3','c1'] =4; a['i3','t3','c2'] = 5.28709; a['i3','t3','c3'] = 7.69674; a['i3','t3','c4'] = 12.1896; a['i3','t3','c5'] = 14.7462;
a['i3','t4','c1'] =4; a['i3','t4','c2'] = 6.28709; a['i3','t4','c3'] = 9.69674; a['i3','t4','c4'] = 11.1896; a['i3','t4','c5'] = 14.7462;
a['i3','t5','c1'] =4; a['i3','t5','c2'] = 7.28709; a['i3','t5','c3'] = 9.69674; a['i3','t5','c4'] = 12.1896; a['i3','t5','c5'] = 12.7462;
a['i3','t6','c1'] =4; a['i3','t6','c2'] = 6.28709; a['i3','t6','c3'] = 7.69674; a['i3','t6','c4'] = 11.1896; a['i3','t6','c5'] = 12.7462;
a['i3','t7','c1'] =5; a['i3','t7','c2'] = 5.28709; a['i3','t7','c3'] = 9.69674; a['i3','t7','c4'] = 11.1896; a['i3','t7','c5'] = 13.7462;
a['i3','t8','c1'] =3; a['i3','t8','c2'] = 5.28709; a['i3','t8','c3'] = 8.69674; a['i3','t8','c4'] = 12.1896; a['i3','t8','c5'] = 12.7462;
a['i3','t9','c1'] =5; a['i3','t9','c2'] = 7.28709; a['i3','t9','c3'] = 8.69674; a['i3','t9','c4'] = 10.1896; a['i3','t9','c5'] = 12.7462;
a['i3','t10','c1']=4; a['i3','t10','c2']= 5.28709; a['i3','t10','c3']= 7.69674; a['i3','t10','c4']= 11.1896; a['i3','t10','c5']= 12.7462;
a['i3','t11','c1']=3; a['i3','t11','c2']= 5.28709; a['i3','t11','c3']= 7.69674; a['i3','t11','c4']= 10.1896; a['i3','t11','c5']= 12.7462;
a['i3','t12','c1']=3; a['i3','t12','c2']= 6.28709; a['i3','t12','c3']= 9.69674; a['i3','t12','c4']= 12.1896; a['i3','t12','c5']= 13.7462;
a['i3','t13','c1']=3; a['i3','t13','c2']= 6.28709; a['i3','t13','c3']= 8.69674; a['i3','t13','c4']= 12.1896; a['i3','t13','c5']= 12.7462;
a['i3','t14','c1']=5; a['i3','t14','c2']= 5.28709; a['i3','t14','c3']= 7.69674; a['i3','t14','c4']= 11.1896; a['i3','t14','c5']= 12.7462;
a['i3','t15','c1']=4; a['i3','t15','c2']= 6.28709; a['i3','t15','c3']= 8.69674; a['i3','t15','c4']= 11.1896; a['i3','t15','c5']= 12.7462;
a['i3','t16','c1']=5; a['i3','t16','c2']= 6.28709; a['i3','t16','c3']= 8.69674; a['i3','t16','c4']= 12.1896; a['i3','t16','c5']= 14.7462;
a['i3','t17','c1']=3; a['i3','t17','c2']= 5.28709; a['i3','t17','c3']= 8.69674; a['i3','t17','c4']= 12.1896; a['i3','t17','c5']= 14.7462;
a['i3','t18','c1']=5; a['i3','t18','c2']= 7.28709; a['i3','t18','c3']= 7.69674; a['i3','t18','c4']= 12.1896; a['i3','t18','c5']= 12.7462;
a['i3','t19','c1']=3; a['i3','t19','c2']= 7.28709; a['i3','t19','c3']= 7.69674; a['i3','t19','c4']= 12.1896; a['i3','t19','c5']= 12.7462;
a['i3','t20','c1']=5; a['i3','t20','c2']= 7.28709; a['i3','t20','c3']= 7.69674; a['i3','t20','c4']= 11.1896; a['i3','t20','c5']= 13.7462;
a['i3','t21','c1']=5; a['i3','t21','c2']= 5.28709; a['i3','t21','c3']= 7.69674; a['i3','t21','c4']= 11.1896; a['i3','t21','c5']= 12.7462;
a['i3','t22','c1']=5; a['i3','t22','c2']= 5.28709; a['i3','t22','c3']= 8.69674; a['i3','t22','c4']= 12.1896; a['i3','t22','c5']= 13.7462;
a['i3','t23','c1']=5; a['i3','t23','c2']= 7.28709; a['i3','t23','c3']= 9.69674; a['i3','t23','c4']= 12.1896; a['i3','t23','c5']= 14.7462;
a['i3','t24','c1']=5; a['i3','t24','c2']= 6.28709; a['i3','t24','c3']= 7.69674; a['i3','t24','c4']= 10.1896; a['i3','t24','c5']= 12.7462;


Parameter b[ThermalUnits,TimeBlocks,count] ;
b['i1','t1','c1'] = 5; b['i1','t1','c2'] = 16; b['i1','t1','c3'] = 45; b['i1','t1','c4'] = 80; b['i1','t1','c5'] = 150;
b['i1','t2','c1'] = 6; b['i1','t2','c2'] = 20; b['i1','t2','c3'] = 36; b['i1','t2','c4'] = 80; b['i1','t2','c5'] = 150;
b['i1','t3','c1'] = 5; b['i1','t3','c2'] = 20; b['i1','t3','c3'] = 36; b['i1','t3','c4'] = 80; b['i1','t3','c5'] = 125;
b['i1','t4','c1'] = 4; b['i1','t4','c2'] = 20; b['i1','t4','c3'] = 36; b['i1','t4','c4'] = 80; b['i1','t4','c5'] = 125;
b['i1','t5','c1'] = 6; b['i1','t5','c2'] = 20; b['i1','t5','c3'] = 54; b['i1','t5','c4'] = 96; b['i1','t5','c5'] = 100;
b['i1','t6','c1'] = 4; b['i1','t6','c2'] = 20; b['i1','t6','c3'] = 36; b['i1','t6','c4'] = 80; b['i1','t6','c5'] = 150;
b['i1','t7','c1'] = 6; b['i1','t7','c2'] = 20; b['i1','t7','c3'] = 54; b['i1','t7','c4'] = 64; b['i1','t7','c5'] = 125;
b['i1','t8','c1'] = 6; b['i1','t8','c2'] = 24; b['i1','t8','c3'] = 45; b['i1','t8','c4'] = 64; b['i1','t8','c5'] = 100;
b['i1','t9','c1'] = 6; b['i1','t9','c2'] = 16; b['i1','t9','c3'] = 45; b['i1','t9','c4'] = 80; b['i1','t9','c5'] = 150;
b['i1','t10','c1']= 4; b['i1','t10','c2']= 20; b['i1','t10','c3']= 36; b['i1','t10','c4']= 80; b['i1','t10','c5']= 125;
b['i1','t11','c1']= 4; b['i1','t11','c2']= 16; b['i1','t11','c3']= 36; b['i1','t11','c4']= 80; b['i1','t11','c5']= 150;
b['i1','t12','c1']= 6; b['i1','t12','c2']= 24; b['i1','t12','c3']= 36; b['i1','t12','c4']= 80; b['i1','t12','c5']= 125;
b['i1','t13','c1']= 5; b['i1','t13','c2']= 24; b['i1','t13','c3']= 36; b['i1','t13','c4']= 96; b['i1','t13','c5']= 150;
b['i1','t14','c1']= 5; b['i1','t14','c2']= 20; b['i1','t14','c3']= 54; b['i1','t14','c4']= 64; b['i1','t14','c5']= 125;
b['i1','t15','c1']= 5; b['i1','t15','c2']= 24; b['i1','t15','c3']= 36; b['i1','t15','c4']= 64; b['i1','t15','c5']= 125;
b['i1','t16','c1']= 5; b['i1','t16','c2']= 24; b['i1','t16','c3']= 45; b['i1','t16','c4']= 64; b['i1','t16','c5']= 150;
b['i1','t17','c1']= 6; b['i1','t17','c2']= 20; b['i1','t17','c3']= 54; b['i1','t17','c4']= 80; b['i1','t17','c5']= 150;
b['i1','t18','c1']= 6; b['i1','t18','c2']= 24; b['i1','t18','c3']= 54; b['i1','t18','c4']= 64; b['i1','t18','c5']= 100;
b['i1','t19','c1']= 5; b['i1','t19','c2']= 24; b['i1','t19','c3']= 36; b['i1','t19','c4']= 64; b['i1','t19','c5']= 150;
b['i1','t20','c1']= 5; b['i1','t20','c2']= 24; b['i1','t20','c3']= 36; b['i1','t20','c4']= 80; b['i1','t20','c5']= 125;
b['i1','t21','c1']= 4; b['i1','t21','c2']= 24; b['i1','t21','c3']= 36; b['i1','t21','c4']= 64; b['i1','t21','c5']= 100;
b['i1','t22','c1']= 4; b['i1','t22','c2']= 24; b['i1','t22','c3']= 54; b['i1','t22','c4']= 96; b['i1','t22','c5']= 150;
b['i1','t23','c1']= 5; b['i1','t23','c2']= 16; b['i1','t23','c3']= 54; b['i1','t23','c4']= 80; b['i1','t23','c5']= 125;
b['i1','t24','c1']= 5; b['i1','t24','c2']= 24; b['i1','t24','c3']= 36; b['i1','t24','c4']= 64; b['i1','t24','c5']= 150;
b['i2','t1','c1'] = 4; b['i2','t1','c2'] = 20; b['i2','t1','c3'] = 45; b['i2','t1','c4'] = 64; b['i2','t1','c5'] = 100;
b['i2','t2','c1'] = 5; b['i2','t2','c2'] = 20; b['i2','t2','c3'] = 45; b['i2','t2','c4'] = 80; b['i2','t2','c5'] = 150;
b['i2','t3','c1'] = 4; b['i2','t3','c2'] = 16; b['i2','t3','c3'] = 45; b['i2','t3','c4'] = 80; b['i2','t3','c5'] = 125;
b['i2','t4','c1'] = 5; b['i2','t4','c2'] = 24; b['i2','t4','c3'] = 45; b['i2','t4','c4'] = 96; b['i2','t4','c5'] = 125;
b['i2','t5','c1'] = 6; b['i2','t5','c2'] = 24; b['i2','t5','c3'] = 54; b['i2','t5','c4'] = 96; b['i2','t5','c5'] = 150;
b['i2','t6','c1'] = 5; b['i2','t6','c2'] = 16; b['i2','t6','c3'] = 36; b['i2','t6','c4'] = 64; b['i2','t6','c5'] = 125;
b['i2','t7','c1'] = 5; b['i2','t7','c2'] = 24; b['i2','t7','c3'] = 54; b['i2','t7','c4'] = 64; b['i2','t7','c5'] = 100;
b['i2','t8','c1'] = 5; b['i2','t8','c2'] = 24; b['i2','t8','c3'] = 54; b['i2','t8','c4'] = 96; b['i2','t8','c5'] = 150;
b['i2','t9','c1'] = 5; b['i2','t9','c2'] = 20; b['i2','t9','c3'] = 36; b['i2','t9','c4'] = 96; b['i2','t9','c5'] = 125;
b['i2','t10','c1']= 6; b['i2','t10','c2']= 16; b['i2','t10','c3']= 45; b['i2','t10','c4']= 80; b['i2','t10','c5']= 100;
b['i2','t11','c1']= 4; b['i2','t11','c2']= 24; b['i2','t11','c3']= 36; b['i2','t11','c4']= 80; b['i2','t11','c5']= 100;
b['i2','t12','c1']= 5; b['i2','t12','c2']= 24; b['i2','t12','c3']= 45; b['i2','t12','c4']= 96; b['i2','t12','c5']= 100;
b['i2','t13','c1']= 4; b['i2','t13','c2']= 20; b['i2','t13','c3']= 45; b['i2','t13','c4']= 96; b['i2','t13','c5']= 125;
b['i2','t14','c1']= 6; b['i2','t14','c2']= 20; b['i2','t14','c3']= 45; b['i2','t14','c4']= 80; b['i2','t14','c5']= 125;
b['i2','t15','c1']= 4; b['i2','t15','c2']= 24; b['i2','t15','c3']= 45; b['i2','t15','c4']= 96; b['i2','t15','c5']= 125;
b['i2','t16','c1']= 4; b['i2','t16','c2']= 20; b['i2','t16','c3']= 45; b['i2','t16','c4']= 64; b['i2','t16','c5']= 100;
b['i2','t17','c1']= 6; b['i2','t17','c2']= 16; b['i2','t17','c3']= 45; b['i2','t17','c4']= 96; b['i2','t17','c5']= 125;
b['i2','t18','c1']= 6; b['i2','t18','c2']= 16; b['i2','t18','c3']= 54; b['i2','t18','c4']= 64; b['i2','t18','c5']= 125;
b['i2','t19','c1']= 5; b['i2','t19','c2']= 20; b['i2','t19','c3']= 45; b['i2','t19','c4']= 64; b['i2','t19','c5']= 100;
b['i2','t20','c1']= 5; b['i2','t20','c2']= 24; b['i2','t20','c3']= 45; b['i2','t20','c4']= 64; b['i2','t20','c5']= 100;
b['i2','t21','c1']= 4; b['i2','t21','c2']= 16; b['i2','t21','c3']= 36; b['i2','t21','c4']= 64; b['i2','t21','c5']= 100;
b['i2','t22','c1']= 4; b['i2','t22','c2']= 24; b['i2','t22','c3']= 36; b['i2','t22','c4']= 80; b['i2','t22','c5']= 150;
b['i2','t23','c1']= 5; b['i2','t23','c2']= 16; b['i2','t23','c3']= 36; b['i2','t23','c4']= 80; b['i2','t23','c5']= 125;
b['i2','t24','c1']= 5; b['i2','t24','c2']= 24; b['i2','t24','c3']= 54; b['i2','t24','c4']= 96; b['i2','t24','c5']= 100;
b['i3','t1','c1'] = 6; b['i3','t1','c2'] = 20; b['i3','t1','c3'] = 54; b['i3','t1','c4'] = 96; b['i3','t1','c5'] = 150;
b['i3','t2','c1'] = 6; b['i3','t2','c2'] = 20; b['i3','t2','c3'] = 45; b['i3','t2','c4'] = 80; b['i3','t2','c5'] = 125;
b['i3','t3','c1'] = 4; b['i3','t3','c2'] = 20; b['i3','t3','c3'] = 54; b['i3','t3','c4'] = 64; b['i3','t3','c5'] = 125;
b['i3','t4','c1'] = 4; b['i3','t4','c2'] = 16; b['i3','t4','c3'] = 36; b['i3','t4','c4'] = 96; b['i3','t4','c5'] = 100;
b['i3','t5','c1'] = 4; b['i3','t5','c2'] = 20; b['i3','t5','c3'] = 36; b['i3','t5','c4'] = 96; b['i3','t5','c5'] = 150;
b['i3','t6','c1'] = 6; b['i3','t6','c2'] = 20; b['i3','t6','c3'] = 36; b['i3','t6','c4'] = 80; b['i3','t6','c5'] = 150;
b['i3','t7','c1'] = 5; b['i3','t7','c2'] = 16; b['i3','t7','c3'] = 54; b['i3','t7','c4'] = 80; b['i3','t7','c5'] = 100;
b['i3','t8','c1'] = 4; b['i3','t8','c2'] = 16; b['i3','t8','c3'] = 54; b['i3','t8','c4'] = 80; b['i3','t8','c5'] = 125;
b['i3','t9','c1'] = 5; b['i3','t9','c2'] = 24; b['i3','t9','c3'] = 54; b['i3','t9','c4'] = 96; b['i3','t9','c5'] = 125;
b['i3','t10','c1']= 6; b['i3','t10','c2']= 24; b['i3','t10','c3']= 54; b['i3','t10','c4']= 64; b['i3','t10','c5']= 100;
b['i3','t11','c1']= 4; b['i3','t11','c2']= 24; b['i3','t11','c3']= 36; b['i3','t11','c4']= 80; b['i3','t11','c5']= 125;
b['i3','t12','c1']= 6; b['i3','t12','c2']= 24; b['i3','t12','c3']= 36; b['i3','t12','c4']= 80; b['i3','t12','c5']= 150;
b['i3','t13','c1']= 6; b['i3','t13','c2']= 16; b['i3','t13','c3']= 36; b['i3','t13','c4']= 64; b['i3','t13','c5']= 100;
b['i3','t14','c1']= 5; b['i3','t14','c2']= 16; b['i3','t14','c3']= 45; b['i3','t14','c4']= 64; b['i3','t14','c5']= 125;
b['i3','t15','c1']= 4; b['i3','t15','c2']= 24; b['i3','t15','c3']= 54; b['i3','t15','c4']= 80; b['i3','t15','c5']= 100;
b['i3','t16','c1']= 4; b['i3','t16','c2']= 20; b['i3','t16','c3']= 36; b['i3','t16','c4']= 80; b['i3','t16','c5']= 125;
b['i3','t17','c1']= 5; b['i3','t17','c2']= 24; b['i3','t17','c3']= 54; b['i3','t17','c4']= 96; b['i3','t17','c5']= 125;
b['i3','t18','c1']= 6; b['i3','t18','c2']= 24; b['i3','t18','c3']= 45; b['i3','t18','c4']= 80; b['i3','t18','c5']= 100;
b['i3','t19','c1']= 6; b['i3','t19','c2']= 16; b['i3','t19','c3']= 36; b['i3','t19','c4']= 64; b['i3','t19','c5']= 125;
b['i3','t20','c1']= 6; b['i3','t20','c2']= 20; b['i3','t20','c3']= 45; b['i3','t20','c4']= 64; b['i3','t20','c5']= 125;
b['i3','t21','c1']= 4; b['i3','t21','c2']= 16; b['i3','t21','c3']= 54; b['i3','t21','c4']= 64; b['i3','t21','c5']= 150;
b['i3','t22','c1']= 6; b['i3','t22','c2']= 16; b['i3','t22','c3']= 45; b['i3','t22','c4']= 64; b['i3','t22','c5']= 150;
b['i3','t23','c1']= 5; b['i3','t23','c2']= 24; b['i3','t23','c3']= 45; b['i3','t23','c4']= 96; b['i3','t23','c5']= 100;
b['i3','t24','c1']= 4; b['i3','t24','c2']= 24; b['i3','t24','c3']= 45; b['i3','t24','c4']= 64; b['i3','t24','c5']= 100;

Parameter c[ThermalUnits,TimeBlocks] ;
 c['i1','t1']  =     0 ;
 c['i1','t2']  =   400 ;
 c['i1','t3']  =   500 ;
 c['i1','t4']  =   600 ;
 c['i1','t5']  =   700 ;
 c['i1','t6']  =   800 ;
 c['i1','t7']  =   900 ;
 c['i1','t8']  =  1000 ;
 c['i1','t9']  =  1100 ;
 c['i1','t10']  =  1200 ;
 c['i1','t11'] =  1300 ;
 c['i1','t12'] =  1400 ;
 c['i1','t13'] =  1500 ;
 c['i1','t14'] =  1600 ;
 c['i1','t15'] =  1700 ;
 c['i1','t16'] =  1800 ;
 c['i1','t17'] =  1900 ;
 c['i1','t18'] =  2000 ;
 c['i1','t19'] =  2100 ;
 c['i1','t20'] =  2200 ;
 c['i1','t21'] =  2300 ;

 c['i2','t1']  =     0 ;
 c['i2','t2']  =   400 ;
 c['i2','t3']  =   500 ;
 c['i2','t4']  =   600 ;
 c['i2','t5']  =   700 ;
 c['i2','t6']  =   800 ;
 c['i2','t7']  =   900 ;
 c['i2','t8']  =  1000 ;
 c['i2','t9']  =  1100 ;
 c['i2','t10']  =  1200 ;
 c['i2','t11'] =  1300 ;
 c['i2','t12'] =  1400 ;
 c['i2','t13'] =  1500 ;
 c['i2','t14'] =  1600 ;
 c['i2','t15'] =  1700 ;
 c['i2','t16'] =  1800 ;
 c['i2','t17'] =  1900 ;
 c['i2','t18'] =  2000 ;
 c['i2','t19'] =  2100 ;
 c['i2','t20'] =  2200 ;
 c['i2','t21'] =  2300 ;

 c['i3','t1']  =     0 ;
 c['i3','t2']  =   400 ;
 c['i3','t3']  =   500 ;
 c['i3','t4']  =   600 ;
 c['i3','t5']  =   700 ;
 c['i3','t6']  =   800 ;
 c['i3','t7']  =   900 ;
 c['i3','t8']  =  1000 ;
 c['i3','t9']  =  1100 ;
 c['i3','t10']  =  1200 ;
 c['i3','t11'] =  1300 ;
 c['i3','t12'] =  1400 ;
 c['i3','t13'] =  1500 ;
 c['i3','t14'] =  1600 ;
 c['i3','t15'] =  1700 ;
 c['i3','t16'] =  1800 ;
 c['i3','t17'] =  1900 ;
 c['i3','t18'] =  2000 ;
 c['i3','t19'] =  2100 ;
 c['i3','t20'] =  2200 ;
 c['i3','t21'] =  2300 ;

Parameter price[TimeBlocks]
                   /  t1  50 ,  t2 152 ,  t3  90 ,  t4 161 ,  t5 195 ,  t6  87 ,
                      t7 136 ,  t8 139 ,  t9 136 , t10  83 , t11 193 , t12 117 ,
                     t13 177 , t14 155 , t15  94 , t16 172 , t17 109 , t18 183 ,
                     t19 137 , t20 183 , t21 154 , t22 159 , t23 125 , t24 194  / ;


Parameter prodt[ThermalUnits,TimeBlocks,Count] ;
Parameter cost[ThermalUnits,TimeBlocks,Count]  ;
Scalar tau_ini / -1 / ;

Loop{(ThermalUnits,TimeBlocks,Count),
      prodt[ThermalUnits,TimeBlocks,Count] =
                                P_min[ThermalUnits]  +
                                (P_max[ThermalUnits]-
                                 P_min[ThermalUnits] )*(ord(Count)-1)/(%L%-1);};

Loop{(ThermalUnits,TimeBlocks,Count),
      cost(ThermalUnits,TimeBlocks,Count) =
                                a(ThermalUnits,TimeBlocks,Count)*
                                prodt(ThermalUnits,TimeBlocks,Count)+
                                b(ThermalUnits,TimeBlocks,Count) ;   };

Parameter epsi[TimeBlocks] ; epsi[TimeBlocks] = 0.000001 ;

Parameter   si[TimeBlocks] ;   si[TimeBlocks] = 0.5 ;
Loop{TimeBlocks,
si[TimeBlocks] = Uniform(min_si,max_si);
epsi[TimeBlocks] = Uniform(0,1);
    };
Parameter d[TimeBlocks] ;
    d['t1'] =  alpha['t1'] ;

Loop{TimeBlocks$(ord(TimeBlocks) gt 1),
    d[TimeBlocks] = alpha[TimeBlocks] +
                    si(TimeBlocks)*beta*d[TimeBlocks-1]+
                    lambda*epsi[TimeBlocks] ;  };
$ontext;
* XPress solution for d-parameter
d['t1'] = 50 ;
d['t2'] = 56.2706 ;
d['t3'] = 57.1409 ;
d['t4'] = 57.0829 ;
d['t5'] = 57.2274 ;
d['t6'] = 57.2639 ;
d['t7'] = 27.2022 ;
d['t8'] = 25.7441 ;
d['t9'] = 26.7399 ;
d['t10']= 27.8167 ;
d['t11']= 28.5974 ;
d['t12']= 29.1929 ;
d['t13']= 29.6594 ;
d['t14']= 69.879  ;
d['t15']= 80.1385 ;
d['t16']= 66.5927 ;
d['t17']= 64.9293 ;
d['t18']= 64.7965 ;
d['t19']= 64.8882 ;
d['t20']= 59.8551 ;
d['t21']= 59.2964 ;
d['t22']= 64.2299 ;
d['t23']= 34.7132 ;
d['t24']= 61.1053;
$offtext;

Variable
         u_small[ThermalUnits,TimeBlocks]    ,
         C_big[ThermalUnits,TimeBlocks]      ,
         l_small[HydroUnits,TimeBlocks]      ,
         lam[ThermalUnits,TimeBlocks,count]  ,
         p_small[ThermalUnits,TimeBlocks]    ,
         S_big[ThermalUnits,TimeBlocks]      ,
         s_small[HydroUnits,TimeBlocks]      ,
         w[HydroUnits,TimeBlocks]            ,
         TotalCost                           ;

Equation
         UBprod(ThermalUnits,TimeBlocks)          ,
         LBprod(ThermalUnits,TimeBlocks)          ,
         UBstoreageBal_1(HydroUnits,TimeBlocks)   ,
         UBstoreageBal_2(HydroUnits,TimeBlocks)   ,
         UBstoreageBal_3(HydroUnits,TimeBlocks)   ,
         Minuptime(ThermalUnits,tau,TimeBlocks)   ,
         Mindowntime(ThermalUnits,tau,TimeBlocks) ,
         Load(TimeBlocks)                         ,
         SpinningReserve(TimeBlocks)              ,
         ProdLevel(ThermalUnits,TimeBlocks)       ,
         FuelCost(ThermalUnits,TimeBlocks)        ,
         StartupCost(ThermalUnits,tau,TimeBlocks) ,
         SumToOne(ThermalUnits,TimeBlocks)        ,
         Def_Obj                                  ;


UBprod(ThermalUnits,TimeBlocks)..
    p_small[ThermalUnits,TimeBlocks] =l= P_max[ThermalUnits]*u_small[ThermalUnits,TimeBlocks] ;

LBprod(ThermalUnits,TimeBlocks)..
    p_small[ThermalUnits,TimeBlocks] =g= P_min[ThermalUnits]*u_small[ThermalUnits,TimeBlocks] ;

UBstoreageBal_1(HydroUnits,TimeBlocks)$(ord(TimeBlocks) eq 1)..
l_small[HydroUnits,TimeBlocks] =e=  l_in[HydroUnits]-
                                    s_small[HydroUnits,TimeBlocks]+
                                    eta[HydroUnits]*w[HydroUnits,TimeBlocks]+
                                    gamma[HydroUnits,TimeBlocks] ;

UBstoreageBal_2(HydroUnits,TimeBlocks)$(ord(TimeBlocks) eq card(TimeBlocks))..
l_end[HydroUnits] =e= l_small[HydroUnits,TimeBlocks-1]-
                      s_small[HydroUnits,TimeBlocks]+
                      eta[HydroUnits]*w[HydroUnits,TimeBlocks]+
                      gamma[HydroUnits,TimeBlocks]          ;

UBstoreageBal_3(HydroUnits,TimeBlocks)$((ord(TimeBlocks) gt 1)and
                                        (ord(TimeBlocks) lt card(TimeBlocks)))..
l_small[HydroUnits,TimeBlocks]=e=l_small[HydroUnits,TimeBlocks-1]-
                                 s_small[HydroUnits,TimeBlocks]+
                                 eta[HydroUnits]*w[HydroUnits,TimeBlocks]+
                                 gamma[HydroUnits,TimeBlocks]     ;
***************************************************************************

Minuptime(ThermalUnits,tau,TimeBlocks)$(((ord(tau) ge (ord(TimeBlocks)-tau_up[ThermalUnits]+1))and
                                         (ord(tau) le (ord(TimeBlocks)                     -1))   ) and
                                        (((ord(TimeBlocks) -tau_up[ThermalUnits]+1) le ord(TimeBlocks) -1 ) and
                                         ((ord(tau)-1 ge tau_ini )) ) )..
       u_small[ThermalUnits,tau]-u_small[ThermalUnits,tau-1] =l=
                                              u_small[ThermalUnits,TimeBlocks] ;

Mindowntime(ThermalUnits,tau,TimeBlocks)$(((ord(tau) ge (ord(TimeBlocks)-tau_dn[ThermalUnits]+1))and
                                          (ord(tau) le (ord(TimeBlocks)                     -1))   ) and
                                         (((ord(TimeBlocks) -tau_dn[ThermalUnits]+1) le ord(TimeBlocks) -1 ) and
                                          ((ord(tau)-1 ge tau_ini )) ) )..
       u_small[ThermalUnits,tau-1]-u_small[ThermalUnits,tau]=l=
                                            1-u_small[ThermalUnits,TimeBlocks] ;

***************************************************************************

Load(TimeBlocks)..
       Sum{ThermalUnits,p_small[ThermalUnits,TimeBlocks] } +
       Sum{HydroUnits, (s_small[HydroUnits,TimeBlocks]-
                        w[HydroUnits,TimeBlocks] ) } =g= d[TimeBlocks] ;

SpinningReserve(TimeBlocks)..
       Sum{ThermalUnits, (P_max(ThermalUnits)*
                          u_small[ThermalUnits,TimeBlocks]-
                          p_small[ThermalUnits,TimeBlocks] ) } =g= r[TimeBlocks] ;

ProdLevel(ThermalUnits,TimeBlocks)..
  p_small[ThermalUnits,TimeBlocks]=e=Sum{Count,prodt[ThermalUnits,TimeBlocks,Count]*
                                               lam[ThermalUnits,TimeBlocks,Count]} ;

FuelCost(ThermalUnits,TimeBlocks)..
  C_big[ThermalUnits,TimeBlocks]=e= Sum{Count, cost[ThermalUnits,TimeBlocks,Count]*
                                               lam[ThermalUnits,TimeBlocks,Count]} ;

SumToOne(ThermalUnits,TimeBlocks)..
  Sum{Count,lam[ThermalUnits,TimeBlocks,Count]} =e= u_small[ThermalUnits,TimeBlocks] ;

StartupCost(ThermalUnits,tau,TimeBlocks)$(ord(tau) le tau_c[ThermalUnits]+1)..
    S_big(ThermalUnits,TimeBlocks) =g= c(ThermalUnits,tau)*
                                       (u_small[ThermalUnits,TimeBlocks]-
                         Sum{tau1,Sum{TimeBlocks1$(ord(TimeBlocks1) eq (ord(TimeBlocks)-ord(tau1))),
                                              u_small[ThermalUnits,TimeBlocks1]}});
Def_Obj..
    TotalCost =e= Sum{(ThermalUnits,TimeBlocks),(C_big[ThermalUnits,TimeBlocks]+
                                                 S_big[ThermalUnits,TimeBlocks] ) };
lam.lo[ThermalUnits,TimeBlocks,count]   = 0 ;
w.lo[HydroUnits,TimeBlocks]             = 0 ;

s_small.up[HydroUnits,TimeBlocks]       = S_max[HydroUnits]  ;
w.up[HydroUnits,TimeBlocks]             = W_max[HydroUnits]  ;
l_small.up[HydroUnits,TimeBlocks]       = SL_max[HydroUnits] ;

Model Power_management_HT /all / ;
Solve Power_management_HT using LP minimazing TotalCost ;
Display TotalCost.l ;









********************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file els.mos
*   ````````````
*   TYPE:         Lot sizing problem
*   DIFFICULTY:   4
*   FEATURES:     MIP problem, implementation of Branch-and-Cut and
*                 Cut-and-Branch algorithms, definition of Optimizer callbacks,
*                 Optimizer and Mosel parameter settings, `case', `procedure',
*                 `function', time measurement
*   DESCRIPTION:  Economic lot sizing (ELS) considers production planning
*                 over a given planning horizon. In every period, there is
*                 a given demand for every product that must be satisfied by
*                 the production in this period and by inventory carried over
*                 from previous periods.
*                 A set-up cost is associated with production in a period,
*                 and the total production capacity per period is limited.
*                 The unit production cost per product and time period is
*                 given. There is no inventory or stock-holding cost.
*                 The model implements a configurable cutting plane algorithm
*                 for this problem.
*   FURTHER INFO: `Applications of optimization with Xpress-MP teaching
*                 material', Section 2.7 `Branch-and-Cut';
*                 `Mosel User Guide', Section 11.1 `Cut generation'
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model "ELS"

* Maximum tree depth for cut generation
Scalar CUTDEPTH / 10 / ;
* Zero tolerance
Scalar EPSI / 0.000001 / ;

* Range of time
Set TIMES  / t1*t15 / ;
* Set of products
Set PRODUCTS / p1*p4 / ;
Alias(TIMES,TIMES1) ;

* Demand per period
Table DEMAND[PRODUCTS,TIMES]
             t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11  t12  t13  t14  t15
          p1  2  3  5  3  4  2  5  4  1  3   4    2    3    5    2
          p2  3  1  2  3  5  3  1  2  3  3   4    5    1    4    1
          p3  3  5  2  1  2  1  3  3  5  2   2    1    3    2    3
          p4  2  2  1  3  2  1  2  2  3  3   2    2    3    1    2   ;

* Setup cost per period
Parameter SETUPCOST / t1 17 ,  t2 14 ,  t3 11 ,  t4  6 ,  t5  9 ,
                      t6  6 ,  t7 15 ,  t8 10 ,  t9  8 , t10  7 ,
                     t11 12 , t12  9 , t13 10 , t14  8 , t15 12  / ;
* Production cost per period
Table PRODCOST[PRODUCTS,TIMES]
              t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15
           p1  5  3  2  1  3  1  4  3  2  2   3   1   2   3   2
           p2  1  4  2  3  1  3  1  2  3  3   3   4   4   2   2
           p3  3  3  3  4  4  3  3  3  2  2   1   1   3   3   3
           p4  2  2  2  3  3  3  4  4  4  3   3   2   2   2   3   ;
* Production capacity per period
Parameter CAP[TIMES] /  t1 12 ,  t2 12 ,  t3 12 ,  t4 12 ,  t5 12 ,
                        t6 12 ,  t7 12 ,  t8 12 ,  t9 12 , t10 12 ,
                       t11 12 , t12 12 , t13 12 , t14 12 , t15 12 / ;

Variable
* Production in period t
         produce[PRODUCTS,TIMES] ,
         Total_MinCost           ;

Equation Dem(PRODUCTS,TIMES) ,
         Capacity(TIMES)
         Def_Obj ;

* Satisfy the total demand
Dem(PRODUCTS,TIMES)..
    Sum{TIMES1$(ord(TIMES1) le ord(TIMES)) , produce[PRODUCTS,TIMES1] } =g=
    Sum{TIMES1$(ord(TIMES1) le ord(TIMES)) , DEMAND[PRODUCTS,TIMES1]  } ;

* Capacity limits
Capacity(TIMES)..
     Sum{PRODUCTS, produce[PRODUCTS,TIMES]} =l= CAP[TIMES] ;

* Objective: minimize total cost
Def_Obj..
    Total_MinCost =e= Sum{TIMES, (Sum{PRODUCTS,PRODCOST[PRODUCTS,TIMES]*
                                              produce[PRODUCTS,TIMES]})};

* Solve the problem
Model ELS / all / ;

Solve ELS using LP Minimazing Total_MinCost ;

Display Total_MinCost.l ;



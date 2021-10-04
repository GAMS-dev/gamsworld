*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file c6assign.mos
*   `````````````````
*   Machine assignment for production batches
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "C-6 Machine assignment"

Set MACH  / m1*m5  / ;
* Set of machines
Set PRODS / p1*p10 / ;
* Set of production batches

Parameter CAP[MACH] / m1 18 , m2 19 , m3 25 , m4 19 , m5 20 / ;
* Machine capacities

Table DUR[MACH,PRODS]
         p1  p2  p3  p4  p5  p6  p7  p8  p9 p10
    m1    8  15  14  23   8  16   8  25   9 17
    m2   15   7  23  22  11  11  12  10  17 16
    m3   21  20   6  22  24  10  24   9  21 14
    m4   20  11   8  14   9   5   6  19  19  7
    m5    8  13  13  13  10  20  25  16  16 17  ;
* Production durations

Table COST_array[MACH,PRODS]
         p1  p2  p3  p4  p5  p6  p7  p8  p9 p10
    m1   17  21  22  18  24  15  20  18  19 18
    m2   23  16  21  16  17  16  19  25  18 21
    m3   16  20  16  25  24  16  17  19  19 18
    m4   19  19  22  22  20  16  19  17  21 19
    m5   18  19  15  15  21  25  16  16  23 15  ;


* Production costs

Binary Variable use[MACH,PRODS] ;
* 1 if machine assigned to batch,
* 0 otherwise

Variable Cost ;

Equation Eq_1(MACH)  ,
         Eq_2(PRODS) ,
         Def_obj     ;

* Limits on machine capacities
Eq_1(MACH)..
    Sum{PRODS, DUR[MACH,PRODS]*use[MACH,PRODS]} =l= CAP[MACH]-0.000001 ;

* Assign a single machine to every batch
Eq_2(PRODS)..
     Sum{MACH, use[MACH,PRODS] } =e= 1 ;

* Objective: total production cost
Def_obj..
    Cost =e= Sum{(MACH,PRODS),COST_array[MACH,PRODS]*
                              use[MACH,PRODS]         } ;

* XPress solution
* use.fx[MACH,PRODS] = 0 ;
* use.fx['m1','p1']  = 1 ;
* use.fx['m1','p9']  = 1 ;
* use.fx['m2','p2']  = 1 ;
* use.fx['m2','p5']  = 1 ;

**use.fx['m3','p3']  = 1 ;
* use.fx['m3','p8']  = 1 ;

* use.fx['m4','p6']  = 1 ;
* use.fx['m4','p7']  = 1 ;
**use.l['m4','p10']  = 1 ;

* use.fx['m5','p4']  = 1 ;



* Solve the problem
Model C_6_Machine_assignment / all / ;

Solve C_6_Machine_assignment using mip minimazing Cost ;

Display Cost.l ;




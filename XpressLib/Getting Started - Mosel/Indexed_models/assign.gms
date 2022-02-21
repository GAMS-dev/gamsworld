*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file assign.mos
*   ```````````````
*   Modeling a small assignment problem with CP:
*   Assigning workers to parallel machines, maximizing
*   productivity.
*   (See "Applications of optimization with Xpress-MP",
*        Section 14.1 Assigning personnel to machines)
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke
********************************************************!)

*model "Personnel assignment (CP)"
* uses "kalis"

Set PERS / p1*p6 / ;
* Personnel
Set MACH / m1*m6 / ;
* Machines
Table OUTP[PERS,MACH]
                           m1 m2 m3 m4 m5 m6
                       p1  13 24 31 19 40 29
                       p2  18 25 30 15 43 22
                       p3  20 20 27 25 34 33
                       p4  23 26 28 18 37 30
                       p5  28 33 34 17 38 20
                       p6  19 36 25 27 45 24 ;
* Productivity

Binary Variable assign[PERS,MACH]
* 1 if person assigned to machine,
* 0 otherwise
Variable TotalProd ,
         pmin      ;
* Minimum productivity

Equation Eq_1(PERS) ,
         Eq_2(MACH) ,
         Eq_3(PERS) ,
         Def_Obj     ;


* One machine per person
Eq_1(PERS)..
    Sum{MACH, assign[PERS,MACH]} =e= 1 ;

* One person per machine
Eq_2(MACH)..
    Sum{PERS, assign[PERS,MACH]} =e= 1 ;

* Objective: total productivity
Def_Obj..
    TotalProd =e= Sum{(PERS,MACH), OUTP[PERS,MACH]*assign[PERS,MACH] } ;

* Solve the problem
Model Personnel_assignment_a / Eq_1 , Eq_2 ,Def_Obj / ;
Solve Personnel_assignment_a using MIP maximazing TotalProd ;
Display TotalProd.l



*******************************************************
*   Mosel Example Problems
*   ======================
*
* Orgin file i1assign.mos
*   `````````````````
*   Assigning workers to machines
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "I-1 Personnel assignment"

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



* **** Exact solution for serial machines ****
* Calculate minimum prtroductivity

Eq_3(PERS)..
    Sum{MACH, OUTP[PERS,MACH]*assign[PERS,MACH] } =g= pmin ;

* Solve the problem
Model I_1_Personnel_assignment_a / Eq_1 , Eq_2 ,Def_Obj / ;
Solve I_1_Personnel_assignment_a using MIP maximazing TotalProd ;
Display TotalProd.l


* Solve the problem
Model I_1_Personnel_assignment_b / Eq_1 , Eq_2 , Eq_3 / ;
Solve I_1_Personnel_assignment_b using MIP maximazing pmin ;
Display pmin.l ;
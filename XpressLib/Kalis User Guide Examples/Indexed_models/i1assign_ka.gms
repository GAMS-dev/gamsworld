*******************************************************
*   CP Example Problems
*   ===================
*
*   file i1assign_ka.mos
*   ````````````````````
*   Assigning workers to machines
*   (See "Applications of optimization with Xpress-MP",
*        Section 14.1 Assigning personnel to machines)
*   - Exact and heuristic solutions -
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
********************************************************!)

* model "I-1 Personnel assignment (CP)"
*  uses "kalis"

* Personnel
Set PERS / p1*p6 / ;
* Machines
Set MACH / m1*m6 / ;

* Productivity
Table OUTP[PERS,MACH]
                       m1   m2   m3   m4   m5   m6
                 p1    13   24   31   19   40   29
                 p2    18   25   30   15   43   22
                 p3    20   20   27   25   34   33
                 p4    23   26   28   18   37   30
                 p5    28   33   34   17   38   20
                 p6    19   36   25   27   45   24  ;



* **** Exact solution for parallel machines ****

* Auxiliary array for constraint def.
Parameter O[MACH] ;

Loop{(PERS,MACH)$(ord(PERS) eq card(PERS)), O[MACH] = OUTP[PERS,MACH] ;  } ;

Binary Variable
          position[PERS,MACH] ;


Variable
* Total productivity
          totalProd           ,
* Minimum productivity
          pmin                ,
          add_var[PERS]       ;

Equation
         Eq_1(PERS)           ,
         Eq_2(MACH)           ,
         Eq_3(MACH)           ,
         Def_Obj_1            ,
         Additional(PERS)     ,
         Def_Obj_2(PERS)      ;

*        Def_Obj_3(PERS,MACH) ;

Eq_1(PERS)..
    Sum{MACH, position[PERS,MACH] } =e= 1 ;

Eq_2(MACH)..
    Sum{PERS, position[PERS,MACH] } =e= 1 ;

* Calculate total productivity
Def_Obj_1..
    totalProd =e= Sum{(PERS,MACH) , OUTP[PERS,MACH]* position[PERS,MACH] } ;

Additional(PERS)..
     add_var[PERS] =e= Sum{MACH,OUTP[PERS,MACH]* position[PERS,MACH]};

* Calculate minimum productivity
Def_Obj_2(PERS)..
     pmin =l= add_var[PERS] ;

position.lo[PERS,MACH] = 0 ;
position.up[PERS,MACH] = 1 ;

pmin.lo  = 0 ;
pmin.up  = 1000 ;

* Solve the problem
Model I_1_Personnel_assignment_1 / Eq_1 , Eq_2 , Def_Obj_1 / ;

Solve I_1_Personnel_assignment_1 using MIP maximazing totalProd ;

Display totalProd.l ;

***********************************************************************
* **** Exact solution for serial machines ****
Parameter Results_1[PERS],Results_2[PERS] ;

Loop{PERS, Loop{MACH,
if ( position.l[PERS,MACH]>0, Results_1[PERS] = ord(MACH) );
    } ;        } ;

Loop{PERS, Loop{MACH,
if ( Results_1[PERS] = ord(MACH) , Results_2[PERS] = OUTP[PERS,MACH] );
   } ; } ;

*                      XPress Solution      GAMS
* Results_1['P1'] -->  31                    31
* Results_1['P2'] -->  43                    43
* Results_1['P3'] -->  25                    25
* Results_1['P4'] -->  30                    30
* Results_1['P5'] -->  28                    28
* Results_1['P6'] -->  36                    36
* totalProd       --> 193                   193
***********************************************************************

* Solve the problem
Model I_1_Personnel_assignment_2 / Eq_1 , Eq_2 , Additional , Def_Obj_2  / ;

Solve I_1_Personnel_assignment_2 using MIP maximazing pmin ;

Display pmin.l ;

***********************************************************************
* **** Exact solution for serial machines ****
Parameter Results_3[PERS],Results_4[PERS] ;

Loop{PERS, Loop{MACH,
if ( position.l[PERS,MACH]>0, Results_3[PERS] = ord(MACH) );
    } ;        } ;

Loop{PERS, Loop{MACH,
if ( Results_3[PERS] = ord(MACH) , Results_4[PERS] = OUTP[PERS,MACH] );
    } ;        } ;

***********************************************************************
*                      XPress Solution      GAMS
* Results_1['P1'] -->  40                    31
* Results_1['P2'] -->  30                    43
* Results_1['P3'] -->  33                    33
* Results_1['P4'] -->  26                    36
* Results_1['P5'] -->  28                    28
* Results_1['P6'] -->  27                    27
* pmin            -->  26                    26
***********************************************************************
Alias(PERS,PERS1) ;
Alias(MACH,MACH1) ;

Alias(PERS,PERS2) ;
Alias(MACH,MACH2) ;

Parameter save_OUTP[PERS,MACH] ;
Loop{(PERS,MACH), save_OUTP[PERS,MACH] = OUTP[PERS,MACH] ; } ;

Scalar omax ;
Scalar pmax ;
Scalar mmax   ;
Parameter location[PERS,MACH] ;  location[PERS,MACH] = 0 ;

Loop{PERS1, Loop{MACH1,

omax = 0 ;
Loop{PERS, Loop{MACH,
if ( OUTP[PERS,MACH]>omax,
     omax = OUTP[PERS,MACH];
     pmax= ord(PERS)       ;
     mmax= ord(MACH)       ;
    );
    } ;        } ;


Loop{PERS2$(ord(PERS2) eq pmax), Loop{MACH2,
     OUTP[PERS2,MACH2] = - 1000 ;
     } ;                             } ;

Loop{MACH2$(ord(MACH2) eq mmax), Loop{PERS2,
     OUTP[PERS2,MACH2] = - 1000 ;
     } ;                             } ;

Loop{PERS2$(ord(PERS2) eq pmax),
Loop{MACH2$(ord(MACH2) eq mmax),
location[PERS2,MACH2] = 1 ;
    } ;
    } ;
    } ;        } ;

* Algorithm of calculation in XPress model
*         Sourse matrix
*                       m1   m2   m3   m4   m5   m6
*                 p1    13   24   31   19   40   29
*                 p2    18   25   30   15   43   22
*                 p3    20   20   27   25   34   33
*                 p4    23   26   28   18   37   30
*                 p5    28   33   34   17   38   20
*                 p6    19   36   25   27   45   24  ;


*                 p1    13   24   31   19   n   29
*                 p2    18   25   30   15   n   22
*                 p3    20   20   27   25   n   33
*                 p4    23   26   28   18   n   30
*                 p5    28   33   34   17   n   20
*      45         p6     n    n    n    n   n    n  ;
*
*                 p1    13   24    n   19   n   29
*                 p2    18   25    n   15   n   22
*                 p3    20   20    n   25   n   33
*                 p4    23   26    n   18   n   30
*                 p5     n    n    n    n   n    n
*      34         p6     n    n    n    n   n    n  ;
*
*                 p1    13   24    n   19   n    n
*                 p2    18   25    n   15   n    n
*                 p3     n    n    n    n   n    n
*                 p4    23   26    n   18   n    n
*                 p5     n    n    n    n   n    n
*      33         p6     n    n    n    n   n    n  ;
*
*                 p1    13    n    n   19   n    n
*                 p2    18    n    n   15   n    n
*                 p3     n    n    n    n   n    n
*                 p4     n    n    n    n   n    n
*                 p5     n    n    n    n   n    n
*      26         p6     n    n    n    n   n    n  ;
*
*                 p1     n    n    n    n   n    n
*                 p2    18    n    n    n   n    n
*                 p3     n    n    n    n   n    n
*                 p4     n    n    n    n   n    n
*                 p5     n    n    n    n   n    n
*      19         p6     n    n    n    n   n    n  ;
*
*      18

Loop{(PERS,MACH), OUTP[PERS,MACH] = save_OUTP[PERS,MACH]  ; } ;

Parameter Results_5[PERS],Results_6[PERS] ;
Scalar Tot_Prod ;
Loop{PERS, Loop{MACH,
if ( location[PERS,MACH]>0, Results_5[PERS] = ord(MACH) );
    } ;        } ;

Loop{PERS, Loop{MACH,
if ( Results_5[PERS] = ord(MACH) , Results_6[PERS] = OUTP[PERS,MACH] );
    } ;        } ;


Tot_Prod = Sum{(PERS,MACH),OUTP[PERS,MACH]* location[PERS,MACH]} ;

***********************************************************************
*                      XPress Solution      GAMS
* Results_1['P1'] -->  19                    19
* Results_1['P2'] -->  18                    18
* Results_1['P3'] -->  33                    33
* Results_1['P4'] -->  26                    26
* Results_1['P5'] -->  34                    34
* Results_1['P6'] -->  45                    45
* pmin            --> 175                   175
***********************************************************************



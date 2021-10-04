******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file pplan2.mos
*   ```````````````
*   Defining SOS1.
*
*   (c) 2001 Dash Associates, rev. 2003
*       author: S. Heipcke
*******************************************************
* model Pplan

Set  PROJ / p1*p3 / ;
* Set of projects
$Set NM  6
* Time horizon (months)
Set MONTHS / m1*m%NM% / ;
* Set of time periods (months) to plan for
Alias(MONTHS,MONTHS1) ;
Alias(MONTHS,MONTHS2) ;
* Duration of project p
Parameter DUR[PROJ]   / p1 3 , p2 3 , p3 4  / ;
* Resource available in month m
Parameter RESMAX[MONTHS] / m1 5 , m2 6 , m3 7 , m4 7 , m5 6 , m6 6 / ;
* Benefit per month once project finished
Parameter BEN[PROJ]  / p1 10.2 , p2 12.3 , p3 11.2 / ;

* Res. usage of proj. p in its t'th month
Parameter RESUSE[PROJ,MONTHS] ;
 RESUSE['p1','m1'] = 3 ;
 RESUSE['p1','m2'] = 2 ;
 RESUSE['p1','m3'] = 1 ;
 RESUSE['p1','m4'] = 2 ;
* Other RESUSE entries are 0 by default


Binary Variable start[PROJ,MONTHS] ;
       Variable MaxBen             ;
* 1 if proj p starts in month t, else 0

Equation  One(PROJ)         ,
          ResMax_eq(MONTHS) ,
          Def_obj           ;

* Each project starts once and only once:
One(PROJ)..
       Sum{MONTHS, start[PROJ,MONTHS]} =e= 1  ;

* Resource availability:
* A project starting in month m is in its k-m+1'st month in month k:

ResMax_eq(MONTHS)..
    Sum{(PROJ,MONTHS1)$(ord(MONTHS1) le ord(MONTHS)),
    Sum{MONTHS2$(ord(MONTHS2) eq ord(MONTHS) +1-ord(MONTHS1) ),
       RESUSE[PROJ,MONTHS2]} *start[PROJ,MONTHS] } =l= RESMAX(MONTHS) ;

* Objective: Maximize Benefit
* If project p starts in month t, it finishes in month t+DUR(p)-1 and
* contributes a benefit of BEN(p) for the remaining NM-(t+DUR(p)-1) months:
Def_obj..
MaxBen =e=   Sum{(PROJ,MONTHS)$(ord(MONTHS) lt %NM%-DUR[PROJ]),
              (BEN[PROJ]*(%NM%-ord(MONTHS)-DUR[PROJ]+1)) * start[PROJ,MONTHS]} ;

start.lo[PROJ,MONTHS] = 0 ;

Model Pplan / all / ;
* Solve the MIP-problem
Solve Pplan using mip maximazing MaxBen ;

Display MaxBen.l ;
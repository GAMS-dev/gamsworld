******************************************************
*   Mosel Example Problems
*   ======================
*
*   file i6build.mos
*   ````````````````
*   Personnel planning at a construction site
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "I-6 Construction site personnel"

* Set of time periods (months)
Set MONTHS / Mar , Apr , May , Jun , Jul , Aug / ;

Set FIRST(MONTHS) / Mar / ;
Set LAST(MONTHS)  / Aug / ;

Scalar CARR    / 100 / ;
* Cost per arrival
Scalar CLEAVE  / 160 / ;
* Cost per departure
Scalar COVER   / 200 / ;
* Cost of over
Scalar CUNDER  / 200 / ;
* understaffing

Scalar NSTART / 3 / ;
* No. of workers at begin/end of plan
Scalar NFINAL / 3 / ;
*end of plan

* Requirement of workers per month
Parameter REQ[MONTHS] / Mar 4 , Apr 6 , May 7 , Jun 4 , Jul 6 , Aug 2 / ;

Integer Variable onsite[MONTHS] ,
* Workers on site
                 arrive[MONTHS] ,
* Workers arriving
                 leave[MONTHS]  ,
* Workers leaving
                 over[MONTHS]   ,
* Over
                 under[MONTHS]  ;
* Understaffing

Variable         Cost   ;

Equation Eq_1(MONTHS) ,
         Eq_2(MONTHS) ,
         Eq_3         ,
         Eq_4(MONTHS) ,
         Eq_5(MONTHS) ,
         Def_Obj ;

* Satisfy monthly need of workers
Eq_1(MONTHS)..
    onsite[MONTHS] - over[MONTHS] + under[MONTHS] =e= REQ[MONTHS] ;

* Balances
Eq_2(MONTHS)..
    onsite[MONTHS] =e= (onsite[MONTHS-1] - leave[MONTHS-1])$(NOT FIRST(MONTHS))+
                        NSTART$(FIRST(MONTHS))                                 +
                        arrive[MONTHS] ;
Eq_3..
    NFINAL =e= Sum{MONTHS$(LAST(MONTHS)),onsite[MONTHS] } -
               Sum{MONTHS$(LAST(MONTHS)),leave[MONTHS]  }   ;

* Limits on departures, understaffing, arrivals; integrality constraints
Eq_4(MONTHS)..
    leave[MONTHS] =l= 1/3*onsite[MONTHS] ;
Eq_5(MONTHS)..
    under[MONTHS] =l= 1/4*onsite[MONTHS] ;

* Objective: total cost
Def_Obj..
    Cost =e= Sum{MONTHS, (CARR*arrive[MONTHS] + CLEAVE*leave[MONTHS] +
                          COVER*over[MONTHS] + CUNDER*under[MONTHS]) } ;

arrive.up[MONTHS] = 3 ;

* Solve the problem
Model I_6_Construction_site / All / ;

Solve I_6_Construction_site using MIP minimazing Cost ;

Display Cost.l ;





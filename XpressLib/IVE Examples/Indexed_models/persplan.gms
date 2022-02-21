*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file persplan.mos
*   `````````````````
*   TYPE:         Personnel planning
*   DIFFICULTY:   2
*   FEATURES:     simple MIP problem, formulation of balance constraints
*                 using inline 'if'
*   DESCRIPTION:  The requirements for construction workers at a construction
*                 site during a period of six months are known. Transfers
*                 from other sites to this one are possible on the first day
*                 of every month and at the end of every month workers may
*                 leave to other sites. Transfer, understaffing, and
*                 overstaffing incur known costs per month per post.
*                 Overtime work is limited to 25% of the hours worked
*                 normally. The monthly arrivals and departures are limited.
*                 Three workers are already present on site at the beginning
*                 of the planning period and that three workers need to
*                 remain on-site at the end. Which are the number of arrivals
*                 and departures every month to minimize the total cost?
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 14.6 `Planning the personnel at a construction site'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Construction site personnel"

* Set of time periods (months)
Set Month / Mar , Apr , May , Jun , Jul , Aug / ;

* Cost per arrival/departure
Scalar CARR   / 100 / ;
Scalar CLEAVE / 160 / ;
* Cost of over-/understaffing
Scalar COVER  / 200 / ;
Scalar CUNDER / 200 / ;


Set FIRST(Month) / Mar /;
Set LAST(Month)  / Aug /;


Scalar NSTART / 3 / ;
Scalar NFINAL / 3 / ;
* No. of workers at begin/end of plan

* Requirement of workers per month
Parameter REQ[Month] / Mar 4 , Apr 6 , May 7 , Jun 4 , Jul 6 , Aug 2 / ;


Equation Demand(Month)     ,
         Balance(Month)    ,
         BalanceFinal      ,
         LimitLeave(Month) ,
         LimitUnder(Month) ,
         Def_Obj           ;

Integer Variable onsite[Month] ,
* Workers on site
                 arrive[Month] ,
                 leave[Month]  ,
* Workers arriving/leaving
                 over[Month]   ,
                 under[Month]  ;
* Over-/understaffing
Variable         Cost           ;

* Satisfy monthly need of workers
Demand(Month)..
    onsite[Month] - over[Month] + under[Month] =e= REQ[Month] ;

* Balances
Balance(Month)..
    onsite[Month] =e= (onsite[Month-1]-leave[Month-1])$(not FIRST(Month)) +
                       NSTART$(FIRST(Month))                                +
                       arrive[Month]                     ;
BalanceFinal..
    NFINAL =e= Sum{Month$LAST(Month),(onsite[Month]-leave[Month])} ;

* Limits on departures, understaffing, arrivals; integrality constraints
LimitLeave(Month)..
    leave[Month] =l= 1/3*onsite[Month] ;

LimitUnder(Month)..
    under[Month] =l= 1/4*onsite[Month] ;

* Objective: total cost
Def_Obj..
    Cost =e= sum{Month, (CARR*arrive[Month]  +
                         CLEAVE*leave[Month] +
                         COVER*over[Month]   +
                         CUNDER*under[Month]  ) } ;

arrive.up[Month] = 3 ;

* Solve the problem
Model Construction_site_personnel / all / ;

Solve Construction_site_personnel using MIP minimazing Cost ;

Display Cost.l ;

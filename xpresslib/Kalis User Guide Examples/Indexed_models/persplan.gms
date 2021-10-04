*****************************************************************
*   CP example problems
*   ===================
*
*   file persplan.mos
*   `````````````````
*   Personnel planning problem.
*   A movie theatre director has to decide in which location each
*   of his 8 employees should be posted. Each of the four locations
*   has a given personnel requirement.
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************

*model "Personnel Planning (CP)"
* uses "kalis"
* Set of personnel
Set PERS / David  , Andrew  ,
           Leslie , Jason   ,
           Oliver , Michael ,
           Jane   , Marilyn  / ;

* Set of locations
Set LOC / L1*L4 / ;

* Names of locations
Set LOCNAMES / Ticketoffice , Theater1 , Theater2 , Cloakroom  / ;

* Numbers assoc. with loc.s
Parameter LOCNUM[LOCNAMES] ;
                             LOCNUM['Ticketoffice'] = 1 ;
                             LOCNUM['Theater1']     = 2 ;
                             LOCNUM['Theater2']     = 3 ;
                             LOCNUM['Cloakroom']    = 4 ;
* No. of pers. req. per loc.
Parameter REQ[LOC] /L1 3 , L2 2 , L3 2 , L4 1 / ;

Integer Variable
                y[PERS,LOC] ;
Variable
* Workplace assigned to each peson
         Obj         ;

Equation
         Eq_1(PERS) ,
         Eq_2(LOC)  ,
         Eq_3(LOC)  ,
         Eq_4(LOC)  ,
         Eq_5(LOC)  ,
         Eq_6       ,
         Def_Obj    ;

Eq_1(PERS)..
* each person can be only in one place
    Sum{LOC, y[PERS,LOC]} =e= 1 ;

* "David, Michael and Jason cannot work with each other"
* all_different({
Eq_2(LOC)..
    y['David',LOC]   + y['Michael',LOC] =l= 1 ;
Eq_3(LOC)..
    y['David',LOC]   + y['Jason',LOC]   =l= 1 ;
Eq_4(LOC)..
    y['Michael',LOC] + y['Jason',LOC]   =l= 1 ;

* Quantity of person have to correspond requirements
Eq_5(LOC)..
    Sum{PERS, y[PERS,LOC]}  =e= REQ[LOC] ;

* "If Oliver is selling tickets, Marylin must be with him"
* implies(place("Oliver")=LOCNUM("Ticketoffice"),
*         place("Marilyn")=LOCNUM("Ticketoffice"))
Eq_6..
    y['Oliver','L1'] =l= y['Marilyn','L1'] ;

Def_Obj..
    Obj =e= 1 ;

y.lo[PERS,LOC] = 0 ;
y.up[PERS,LOC] = 1 ;

* "Leslie must be at the second entrance of the theater"
y.fx[PERS,LOC]$((ord(PERS) eq 3)and(ord(LOC) eq 3 ))  = 1 ;
* "Michael must be at the first entrance of the theater"
y.fx[PERS,LOC]$((ord(PERS) eq 6)and(ord(LOC) eq 2 ))  = 1 ;

* XPress solutions
*y.fx['David'  ,'L3'] = 1 ;
*y.fx['Andrew' ,'L4'] = 1 ;
*y.fx['Leslie' ,'L3'] = 1 ;
*y.fx['Jason'  ,'L1'] = 1 ;
*y.fx['Oliver' ,'L1'] = 1 ;
*y.fx['Michael','L2'] = 1 ;
*y.fx['Jane'   ,'L2'] = 1 ;
*y.fx['Marilyn','L1'] = 1 ;

* GAMS solutions
*y.fx['David'  ,'L4'] = 1 ;
*y.fx['Andrew' ,'L1'] = 1 ;
*y.fx['Leslie' ,'L3'] = 1 ;
*y.fx['Jason'  ,'L3'] = 1 ;
*y.fx['Oliver' ,'L2'] = 1 ;
*y.fx['Michael','L2'] = 1 ;
*y.fx['Jane'   ,'L1'] = 1 ;
*y.fx['Marilyn','L1'] = 1 ;


Model Personnel_Planning / all / ;
Solve Personnel_Planning using MIP minimazing Obj ;

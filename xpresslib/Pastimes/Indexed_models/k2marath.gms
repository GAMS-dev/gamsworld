*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file k2marath.mos
*   ````````````````
*   Marathon puzzle
*
*   Dominique, Ignace, Naren, Olivier, Philippe, and Pascal
*   have arrived as the first six at the Paris marathon.
*   Reconstruct their arrival order from the following
*   information:
*   a) Olivier has not arrived last
*   b) Dominique, Pascal and Ignace have arrived before Naren
*      and Olivier
*   c) Dominique who was third last year has improved this year.
*   d) Philippe is among the first four.
*   e) Ignace has arrived neither in second nor third position.
*   f) Pascal has beaten Naren by three positions.
*   g) Neither Ignace nor Dominique are on the fourth position.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "K-2 Marathon"

Set POS / p1*p6 / ;
* Arrival positions
Set RUNNERS / Dominique , Ignace , Naren , Olivier , Philippe , Pascal / ;

Binary Variable arrive[RUNNERS,POS] ;
* 1 if runner is p-th, 0 otherwise
       Variable Obj ;

Equation Eq_1(POS)     ,
         Eq_2(RUNNERS) ,
         Eq_3          ,
         Eq_4          ,
         Eq_5          ,
         Eq_6          ,
         Eq_7          ,
         Eq_8          ,
         Eq_9          ,
         Eq_10         ,
         Def_Obj       ;

* One runner per position
Eq_1(POS)..
    Sum{RUNNERS, arrive[RUNNERS,POS] } =e= 1 ;

* One position per runner
Eq_2(RUNNERS)..
    Sum{POS, arrive[RUNNERS,POS] } =e= 1 ;

* b: Dominique, Pascal and Ignace before Naren and Olivier
Eq_3..
    Sum{POS$((ord(POS) eq 5)or(ord(POS) eq 6)),(arrive['Dominique',POS]+
                                                arrive['Pascal',POS]   +
                                                arrive['Ignace',POS]   )} =e= 0 ;
Eq_4..
    Sum{POS$((ord(POS) eq 1)or(ord(POS) eq 2)or(ord(POS) eq 3)),
                                               (arrive['Naren',POS]    +
                                                arrive['Olivier',POS]  )} =e= 0 ;

* c: Dominique better than third
Eq_5..
    arrive['Dominique','p1'] + arrive['Dominique','p2'] =e= 1 ;

* d: Philippe is among the first four
Eq_6..
    Sum{POS$((ord(POS) eq 1)or
             (ord(POS) eq 2)or
             (ord(POS) eq 3)or
             (ord(POS) eq 4) ) , arrive['Philippe',POS] } =e= 1 ;

* e: Ignace neither second nor third
Eq_7..
    arrive['Ignace','p2'] + arrive['Ignace','p3'] =e= 0 ;

* f: Pascal three places earlier than Naren
Eq_8..
    sum{POS$((ord(POS) eq 4)or
             (ord(POS) eq 5)or
             (ord(POS) eq 6) ) , arrive['Pascal',POS] } =e= 0 ;
Eq_9..
    sum{POS$((ord(POS) eq 1)or
             (ord(POS) eq 2)or
             (ord(POS) eq 3) ) , arrive['Naren',POS] }  =e= 0  ;

* g: Neither Ignace nor Dominique on fourth position
Eq_10..
    arrive['Ignace','p4']+arrive['Dominique','p4'] =e= 0 ;

Def_Obj..
    Obj =e= 0 ;

* a: Olivier not last
arrive.fx['Olivier','p6'] = 0 ;

* Solve the problem: no objective
Model K_2_Marathon / all / ;
* Solve the MIP-problem
Solve K_2_Marathon using MIP minimazing Obj ;

Display Obj.l ;
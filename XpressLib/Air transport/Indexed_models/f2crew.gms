*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file f2crew.mos
*   ```````````````
*   Composing military flight crews
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "F-2 Flight crews"

Set PILOTS / p1*p8 / ;
* Set of pilots

Alias(PILOTS,PILOTS1) ;
Alias(PILOTS,PILOTS2) ;

Set ARCS /a1*a15/ ;
* Set of arcs representing crews
Set I /i1,i2/ ;

Set RL / English , French , Dutch , Norwegian / ;
Set RT / reconnaissance , transport , bomber , fighter_bomber , supply_plane / ;
* Sets of languages and plane types


Table LANG[RL,PILOTS]
                                      p1 p2 p3 p4 p5 p6 p7 p8
                     English          20 14  0 13  0  0  8  8
                     French           12  0  0 10 15 20  8  9
                     Dutch             0 20 12  0  8 11 14 12
                     Norwegian         0  0  0  0 17  0  0 16  ;
* Language skills of pilots

Table PTYPE[RT,PILOTS]
                                      p1 p2 p3 p4 p5 p6 p7 p8
                     reconnaissance   18 12 15  0  0  0  8  0
                     transport        10  0  9 14 15  8 12 13
                     bomber            0 17  0 11 13 10  0  0
                     fighter_bomber    0  0 14  0  0 12 16  0
                     supply_plane      0  0  0  0 12 18  0 18 ;

* Flying skills of pilots


Parameter CREW[ARCS,I]
* Possible crews

Scalar ct / 1 / ;
* Calculate the possible crews
Loop((PILOTS,PILOTS1,RL,RT)$((ord(PILOTS) lt ord(PILOTS1))             and
              ((LANG[RL,PILOTS]  ge 10) and (LANG[RL,PILOTS1]  ge 10)) and
              ((PTYPE[RT,PILOTS] ge 10) and (PTYPE[RT,PILOTS1] ge 10))  ),

* Calculate the possible crews
*ct:=1
* forall(p,q in PILOTS| p<q and
*                      (or(l in RL) (LANG(l,p)>=10 and LANG(l,q)>=10)  ) and
*                      (or(t in RT) (PTYPE(t,p)>=10 and PTYPE(t,q)>=10)) ) do
*  CREW(ct,1):=p
*  CREW(ct,2):=q
*  ct+=1
* end-do
*********************************
Loop(ARCS$(ord(ARCS) eq ct),
  CREW[ARCS,'i1'] = ord(PILOTS)  ;
  CREW[ARCS,'i2'] = ord(PILOTS1) ;
    ) ;
  ct = ct + 1 ;
*********************************
     );

CREW['a1','i1']  = 1 ; CREW['a1','i2']  =  2 ;
CREW['a2','i1']  = 1 ; CREW['a2','i2']  =  4 ;
CREW['a3','i1']  = 1 ; CREW['a3','i2']  =  5 ;
CREW['a4','i1']  = 2 ; CREW['a4','i2']  =  3 ;
CREW['a5','i1']  = 2 ; CREW['a5','i2']  =  4 ;
CREW['a6','i1']  = 2 ; CREW['a6','i2']  =  6 ;
CREW['a7','i1']  = 3 ; CREW['a7','i2']  =  6 ;
CREW['a8','i1']  = 3 ; CREW['a8','i2']  =  7 ;
CREW['a9','i1']  = 4 ; CREW['a9','i2']  =  5 ;
CREW['a10','i1'] = 4 ; CREW['a10','i2'] =  6 ;
CREW['a11','i1'] = 5 ; CREW['a11','i2'] =  6 ;
CREW['a12','i1'] = 5 ; CREW['a12','i2'] =  8 ;
CREW['a13','i1'] = 6 ; CREW['a13','i2'] =  7 ;
CREW['a14','i1'] = 6 ; CREW['a14','i2'] =  8 ;
CREW['a15','i1'] = 7 ; CREW['a15','i2'] =  8 ;

Binary Variable fly[ARCS] ;
* 1 if crew is flying, 0 otherwise
Variable
         NFlying      ,
         TotalScore    ;

Equation Eq_1(PILOTS) ,
         Def_Obj_1    ,
         Def_Obj_2     ;

* Every pilot is member of at most a single crew
Eq_1(PILOTS)..
    Sum{ARCS$((CREW[ARCS,'i1'] eq ord(PILOTS)) or
              (CREW[ARCS,'i2'] eq ord(PILOTS))),fly[ARCS] } =l= 1 ;

* First objective: number of pilots flying
Def_Obj_1..
    NFlying =e= Sum{ARCS, fly[ARCS] } ;



* Solve the problem
Model F_2_Flight_crews_main / Eq_1 , Def_Obj_1  / ;

Solve F_2_Flight_crews_main using MIP maximazing NFlying ;

Display NFlying.l ;

* **** Extend the problem ****

Parameter SCORE[ARCS]  ;
* Maximum scores of crews

SCORE['a1']  = 30 ;
SCORE['a2']  = 24 ;
SCORE['a3']  = 25 ;
SCORE['a4']  = 27 ;
SCORE['a5']  = 28 ;
SCORE['a6']  = 27 ;
SCORE['a7']  = 26 ;
SCORE['a8']  = 30 ;
SCORE['a9']  = 29 ;
SCORE['a10'] = 21 ;
SCORE['a11'] = 30 ;
SCORE['a12'] = 30 ;
SCORE['a13'] = 28 ;
SCORE['a14'] = 36 ;
SCORE['a15'] = 25 ;

* Second objective: sum of scores
Def_Obj_2..
 TotalScore =e= Sum{ARCS, SCORE[ARCS]*fly[ARCS] } ;

* Solve the problem
Model F_2_Flight_crews_ext / Eq_1 , Def_Obj_2  / ;

Solve F_2_Flight_crews_ext using MIP maximazing TotalScore ;

Display TotalScore.l ;
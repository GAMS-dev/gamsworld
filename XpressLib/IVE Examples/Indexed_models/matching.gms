*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file matching.mos
*   `````````````````
*   TYPE:         Bipartite matching
*   DIFFICULTY:   4
*   FEATURES:     2 MIP problems with different objectives, data preprocessing,
*                 incremental definition of data array, encoding of arcs,
*                 logical `or' (cumulative version) and `and', `procedure'
*                 for printing solution, `forall-do', `max', `finalize',
*                 graphical representation of results, `sin', `cos'
*   DESCRIPTION:  The task is to form pilot/co-pilot pairs (`crews') for every
*                 plane with a compatible language and a sufficiently good
*                 knowledge of the aircraft type. In the first optimization
*                 run we maximize the number of crews that fly. The
*                 second objective is to determine the set of crews with
*                 maximum total score (best matching pilot/co-pilot pairs).
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 11.2 `Composing flight crews'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Flight_crews"

* Flight_crews
$Set NP  8
* Set of pilots
Set PILOTS / p1*p%NP% / ;
Alias(PILOTS,PILOTS1);

* Sets of languages and plane types
Set RL / English , French , Dutch , Norwegian / ;
Set RT / reconnaissance , transport , bomber , fighter_bomber , supply_plane / ;

* Set of arcs representing crews
Set ARCS / a1*a15 / ;
Set I / i1*i2 / ;

* Language skills of pilots
Table LANG[RL,PILOTS]
                                 p1  p2  p3  p4  p5  p6  p7  p8
                     English     20  14   0  13   0   0   8   8
                     French      12   0   0  10  15  20   8   9
                     Dutch        0  20  12   0   8  11  14  12
                     Norwegian    0   0   0   0  17   0   0  16  ;

* Flying skills of pilots
Table PTYPE[RT,PILOTS]
                                 p1  p2  p3  p4  p5  p6  p7  p8
              reconnaissance     18  12  15   0   0   0   8   0
              transport          10   0   9  14  15   8  12  13
              bomber              0  17   0  11  13  10   0   0
              fighter_bomber      0   0  14   0   0  12  16   0
              supply_plane        0   0   0   0  12  18   0  18 ;



* Flying skills of pilots
Parameter CREW[ARCS,I] ;
Parameter ct ;
* Calculate the possible crews
ct=1 ;
Loop{PILOTS,
Loop{(PILOTS1,RT,RL)$((ord(PILOTS) lt ord(PILOTS1))                and
       (
        ( ( LANG[RL,PILOTS] ge 10) and (LANG[RL,PILOTS1]  gt 10) )
         and
        ( (PTYPE[RT,PILOTS] ge 10) and (PTYPE[RT,PILOTS1] ge 10) )
        )
                             ),

Loop(ARCS,  CREW[ARCS,'i1']$(ord(ARCS) eq ct) =ord(PILOTS)  ; );
Loop(ARCS,  CREW[ARCS,'i2']$(ord(ARCS) eq ct) =ord(PILOTS1) ; );

  ct = ct + 1 ;
     } ;
     } ;

* Maximum scores of crews
Parameter SCORE[ARCS] ;
SCORE['a1']  =  30 ;
SCORE['a2']  =  24 ;
SCORE['a3']  =  25 ;
SCORE['a4']  =  27 ;
SCORE['a5']  =  28 ;
SCORE['a6']  =  27 ;
SCORE['a7']  =  26 ;
SCORE['a8']  =  30 ;
SCORE['a9']  =  29 ;
SCORE['a10'] =  21 ;
SCORE['a11'] =  30 ;
SCORE['a12'] =  30 ;
SCORE['a13'] =  28 ;
SCORE['a14'] =  36 ;
SCORE['a15'] =  25 ;

Parameter SCORE_temp[ARCS,RT] ;

* forall(a in ARCS)
*  SCORE(a):= max(t in RT | PTYPE(t,CREW(a,1))>=10 and PTYPE(t,CREW(a,2))>=10)
*                          (PTYPE(t,CREW(a,1))      +  PTYPE(t,CREW(a,2)))



Loop{(ARCS,RT),

SCORE_temp[ARCS,RT]$((Sum{PILOTS$(ord(PILOTS) eq CREW[ARCS,'i1']),
                                 PTYPE[RT,PILOTS] } ge 10) and
                     (Sum{PILOTS$(ord(PILOTS) eq CREW[ARCS,'i2']),
                                 PTYPE[RT,PILOTS] } ge 10) )
                       =
        Sum{PILOTS$(ord(PILOTS) eq CREW[ARCS,'i1']),PTYPE[RT,PILOTS] } +
        Sum{PILOTS$(ord(PILOTS) eq CREW[ARCS,'i2']),PTYPE[RT,PILOTS] }
     } ;



* Second objective: sum of scores

Binary Variable fly[ARCS]  ;
* 1 if crew is flying, 0 otherwise
       Variable NFlying    ,
                TotalScore ;

Equation OneCrew(PILOTS) ,
         Def_Obj_1       ,
         Def_Obj_2       ;

* First objective: number of pilots flying
Def_Obj_1..
    NFlying =e= Sum{ARCS, fly[ARCS] } ;

* Every pilot is member of at most a single crew
OneCrew(PILOTS)..
    Sum{ARCS$((CREW[ARCS,'i1'] = ord(PILOTS)) or
              (CREW[ARCS,'i2'] = ord(PILOTS)))  ,
              fly[ARCS]} =l= 1 ;

* Solve the problem
Model Flight_crews_1 / OneCrew , Def_Obj_1  / ;

Solve Flight_crews_1 using MIP maximazing NFlying ;

Display NFlying.l ;



**************************************************
*****         Extend the problem              ****
**************************************************

Def_Obj_2..
 TotalScore =e= sum{ARCS, SCORE[ARCS]*fly[ARCS] } ;

* Solve the problem

Model Flight_crews_2 / OneCrew , Def_Obj_2 / ;

Solve Flight_crews_2 using MIP maximazing TotalScore ;

Display TotalScore.l ;

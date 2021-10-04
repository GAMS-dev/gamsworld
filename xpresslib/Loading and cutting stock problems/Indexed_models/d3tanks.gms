******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file d3tanks.mos
*   ````````````````
*   Loading of liquid chemicals into tanks
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "D-3 Tank loading"

Set TANKS / t1*t9 / ;
* Set of tanks
Set LIQ /Benzol , Butanol , Propanol , Styrene , THF / ;
* Set of liquids

Parameter CAP[TANKS] /t1  500 , t2  400 , t3  400 ,
                      t4  600 , t5  600 , t6  900 ,
                      t7  800 , t8  800 , t9  800  / ;
* Tank capacities




Set TINIT(LIQ) / Benzol , THF / ;
* Initial tank contents type

Parameter QINIT[TANKS] ;
          QINIT['t2'] = 100 ;
          QINIT['t7'] = 300 ;
* Quantity of initial contents

Parameter  ARR[LIQ]  / Benzol   1200 , Butanol 700 ,
                       Propanol 1000 , Styrene 450 , THF 1200 / ;
* Arriving quantities of chemicals

Parameter REST[LIQ] / Benzol    900 , Butanol 700 ,
                      Propanol 1000 , Styrene 450 , THF  700 / ;

*    REST[LIQ] = ARR[LIQ] - Sum{TANKS$(TINIT(TANKS) eq LIQ),
*                                               (CAP[TANKS]-QINIT[TANKS]) } ;

* Rest after filling part. filled tanks

Binary Variable load[LIQ,TANKS] ;
* 1 if liquid loaded into tank,
* 0 otherwise


Variable TankUse ,
         TankNum ;

* Complete the initially partially filled tanks and calculate the remaining
* quantities of liquids

Equation Eq_1(LIQ)   ,
         Eq_2(TANKS) ,
         Def_obj_1   ,
         Def_obj_2   ;


* Load the empty tanks within their capacity limits
Eq_1(LIQ)..
    Sum{TANKS, CAP[TANKS]*load[LIQ,TANKS] } =g= REST[LIQ] ;

* Do not mix different liquids
Eq_2(TANKS)..
    Sum{LIQ, load[LIQ,TANKS] } =l= 1 ;

* Objective 1: total tank capacity used
Def_obj_1..
    TankUse =e= Sum{(LIQ,TANKS), CAP[TANKS]*load[LIQ,TANKS] } ;

* Objective 2: number of tanks used
Def_obj_2..
    TankNum =e= Sum{(LIQ,TANKS),  load[LIQ,TANKS] } ;

* Solve the problem with objective 1
Model D_3_Tank_loading_1 / Eq_1 , Eq_2 , Def_obj_1 / ;
Solve D_3_Tank_loading_1 using mip minimazing TankUse ;
Display TankUse.l ;

* Solve the problem with objective 2
Model D_3_Tank_loading_2 / Eq_1 , Eq_2 , Def_obj_2  / ;
Solve D_3_Tank_loading_2 using mip minimazing TankNum ;
Display TankNum.l ;

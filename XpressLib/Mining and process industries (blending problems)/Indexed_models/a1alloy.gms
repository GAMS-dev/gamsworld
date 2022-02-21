******************************************************
*   Mosel Example Problems
*   ======================
*
*  origin file a1alloy.mos
*   ````````````````
*   Production of alloys
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Feb. 2002
*****************************************************
*
* model "A-1 Production of Alloys"

Set COMP /c1*c3 /
* Components (chemical elements)
Set RAW  /r1*r7 /
* Raw materials (alloys)
Set NAMES / iron_1     , iron_2   , iron_3 ,
            copper_1   , copper_2 ,
            aluminum_1 , aluminum_2          /;



Table P[RAW,COMP]
                    c1     c2      c3
                r1  2.5    0.0    1.3
                r2  3.0    0.0    0.8
                r3  0.0    0.3    0.0
                r4  0.0   90.0    0.0
                r5  0.0   96.0    4.0
                r6  0.0    0.4    1.2
                r7  0.0    0.6    0.0  ;
* Raw material composition

Parameter PMIN[COMP] / c1 2 , c2 0.4 , c3 1.20  / ;
Parameter PMAX[COMP] / c1 3 , c2 0.6 , c3 1.65  / ;
* Min. & max. requirements

Parameter AVAIL[RAW] / r1 400 , r2 300 , r3 600 ,
                       r4 500 , r5 200 , r6 300 , r7 250 / ;
* Raw material availabilities
Parameter COST[RAW]  / r1 200 , r2 250 , r3 150 ,
                       r4 220 , r5 240 , r6 200 , r7 165 / ;
* Raw material costs

Scalar DEM / 500 / ;
* Amount of steel to produce


*  P: array(RAW,COMP) of real     => Composition of raw materials (in percent)
*  PMIN,PMAX: array(COMP) of real => Min. & max. requirements for components
*  AVAIL: array(RAW) of real      => Raw material availabilities
*  COST: array(RAW) of real       => Raw material costs per tonne
*  DEM: real                      => Amount of steel to produce



Variable use[RAW]  ,
         produce   ,
         T_Cost        ;

Equation Eq_1       ,
         Eq_2(COMP) ,
         Eq_3(COMP) ,
         Def_obj     ;

* Quantity of steel produced = sum of raw material used
Eq_1..
 produce =e= Sum{RAW, use[RAW] } ;
* Guarantee min. and max. percentages of every chemical element
Eq_2(COMP)..
  Sum{RAW,  P(RAW,COMP)*use[RAW] } =g= PMIN[COMP]*produce ;
Eq_3(COMP)..
  Sum{RAW,  P(RAW,COMP)*use[RAW] } =l= PMAX[COMP]*produce ;

* Objective function
Def_obj.. T_Cost =e= Sum{RAW, COST[RAW]*use[RAW]} ;

* Satisfy the demand
 produce.lo = DEM ;
* Use raw materials within their limit of availability
use.up[RAW] = AVAIL[RAW] ;
use.lo[RAW] = 0.0 ;
Model A_1_Production / all / ;

Solve A_1_Production using lp minimazing T_Cost ;

Display T_Cost.l ;



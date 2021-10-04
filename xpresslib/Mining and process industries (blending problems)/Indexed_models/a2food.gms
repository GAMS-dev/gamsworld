******************************************************
*   Mosel Example Problems
*   ======================
*
* origin file a2food.mos
*   ```````````````
*   Food production for farm animals
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Feb. 2002
********************************************************
* model "A-2 Animal Food Production"

Set FOOD /f1,f2 /
* Food types
Set COMP /c1*c3 /
* Nutritional components
Set RAW  / oat , maize , molasses / ;
* Raw materials

Table P[RAW,COMP]
                   c1     c2       c3
     oat          13.6    7.1      7.0
     maize         4.1    2.4      3.7
     molasses      5.0    0.3     25.0
* Composition of raw materials (percentages)

Parameter REQ[COMP] / c1 9.5 , c2  2 , c3 6 / ;
* Nutritional requirements

Table RAWMAT[RAW,FOOD]
                       f1      f2
         oat         11900     0.13
         maize       23500     0.17
         molasses      750     0.12  ;

Parameter AVAIL[RAW] ;
Parameter COST[RAW]  ;
          AVAIL[RAW] = RAWMAT[RAW,'f1'];
           COST[RAW] = RAWMAT[RAW,'f2'];

* Raw material availabilities and prices

Set names / grinding , blending , granulating , sieving / ;
Parameter PCOST[names] / grinding    0.25 ,
                         blending    0.05 ,
                         granulating 0.42 ,
                         sieving 0.17       /;
* Cost of processing operations

Parameter DEM[FOOD] / f1 9000 , f2 12000 / ;
* Demands for food types


* P: array(RAW,COMP) of real    => Composition of raw materials (in percent)
* REQ: array(COMP) of real      => Nutritional requirements
* AVAIL: array(RAW) of real     => Raw material availabilities
* COST: array(RAW) of real      => Raw material prices
* PCOST: array(set of string) of real => Cost of processing operations
* DEM: array(FOOD) of real      => Demands for food types

Variable use[RAW,FOOD]  ,
* Quantity of raw mat. used for a food type
         produce[FOOD]  ,
* Quantity of food produced
         T_Cost         ;

Equation Eq_1(FOOD)      ,
         Eq_2(FOOD,COMP) ,
         Eq_3(FOOD)      ,
         Eq_4(RAW)       ,
         Def_obj         ;

* Quantity of food produced corresponds to raw material used
Eq_1(FOOD)..
         Sum{RAW, use[RAW,FOOD]}  =e=  produce[FOOD]   ;

* Fulfill nutritional requirements
Eq_2(FOOD,COMP)$(ord(COMP) ne card(COMP))..
      Sum{RAW, P[RAW,COMP]*use[RAW,FOOD]} =g= REQ[COMP]*produce[FOOD]  ;

Eq_3(FOOD)..
      Sum{RAW, P[RAW,'c3']*use[RAW,FOOD]} =l= REQ['c3']*produce[FOOD]  ;

* Use raw materials within their limit of availability
Eq_4(RAW)..
      Sum{FOOD, use[RAW,FOOD]} =l= AVAIL[RAW] ;
* Objective function
Def_obj..
T_Cost=e= Sum{(RAW,FOOD)                ,COST[RAW]           *use[RAW,FOOD]} +
          Sum{(RAW,FOOD)$(ord(RAW) ne 3),PCOST['grinding']   *use[RAW,FOOD]} +
          Sum{(RAW,FOOD)                ,PCOST['blending']   *use[RAW,FOOD]} +
          Sum{RAW                       ,PCOST['granulating']*use[RAW,'f1']} +
          Sum{RAW                       ,PCOST['sieving']    *use[RAW,'f2']}   ;

* Satisfy demands
produce.lo[FOOD] = DEM[FOOD] ;


use.lo[RAW,FOOD] = 0.0 ;


* Xpress solutions
*use.fx['oat','f1']      = 5098.56 ;
*use.fx['oat','f2']      = 6798.07 ;
*use.fx['maize','f1']    = 3719.53 ;
*use.fx['maize','f2']    = 4959.37 ;
*use.fx['molasses','f1'] =  181.91 ;
*use.fx['molasses','f2'] =  242.55 ;

Model A_2_Animal_Food_Production / all / ;

Solve A_2_Animal_Food_Production using lp minimazing T_Cost ;

Display T_Cost.l ;


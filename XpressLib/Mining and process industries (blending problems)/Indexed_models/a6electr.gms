******************************************************
*   Mosel Example Problems
*   ======================
*
* origin file a6electr.mos
*   `````````````````
*   Production of electricity
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************
* model "A-6 Electricity production"

$Set  NT 7
Set TIME /t1*t%NT%/;
* Time periods
Set TYPES  /p1*p4/
* Power generator types

*  CMIN => Hourly cost of gen. at min. output
*  CADD => Cost/hour/MW of prod. above min. level
*  AVAIL=> Number of generators per type

*  start=> No. of gen.s started in a period
*  work => No. of gen.s working during a period
*  padd => Production above min. output level


* Time periods
Parameter LEN[TIME] / t1     6 , t2     3 , t3     3 , t4     2 ,
                      t5     4 , t6     4 , t7     2 / ;
Parameter DEM[TIME] / t1 12000 , t2 32000 , t3 25000 , t4 36000 ,
                      t5 25000 , t6 30000 , t7 18000 / ;
* Length and demand of time periods

* Power plants
Parameter PMIN[TYPES]   / p1   750 , p2 1000 , p3 1200 , p4 1800   / ;
Parameter PMAX[TYPES]   / p1  1750 , p2 1500 , p3 2000 , p4 3500   / ;
* Min. & max output of a generator type
Parameter CSTART[TYPES] / p1  5000 , p2 1600 , p3 2400 , p4 1200   / ;
* Start-up cost of a generator
Parameter CMIN[TYPES]   / p1  2250 , p2 1800 , p3 3750 , p4 4800   / ;
* Hourly cost of gen. at min. output
Parameter CADD[TYPES]   / p1   2.7 , p2  2.2 , p3  1.8 , p4    3.8 / ;
* Cost/hour/MW of prod. above min. level
Parameter AVAIL[TYPES]  / p1    10 , p2    4 , p3  8   , p4    3   / ;

Integer Variable work[TYPES,TIME]  ;

        Variable padd[TYPES,TIME]  ,
                 start[TYPES,TIME] ,
                 T_Cost            ;

Equation Eq_1(TYPES,TIME) ,
         Eq_2(TYPES,TIME) ,
         Eq_3(TIME)       ,
         Eq_4(TIME)       ,
         Def_obj          ;

* Number of generators started per period and per type
Eq_1(TYPES,TIME)..
     start[TYPES,TIME] =g= work[TYPES,TIME] -  work[TYPES,TIME--1] ;

* Limit on power production above minimum level
Eq_2(TYPES,TIME)..
     padd[TYPES,TIME] =l= (PMAX[TYPES]-PMIN[TYPES])*work[TYPES,TIME];

* Satisfy demands
Eq_3(TIME)..
     Sum{TYPES,(PMIN[TYPES]*work[TYPES,TIME] + padd[TYPES,TIME])} =g= DEM[TIME];

* Security reserve of 20%
Eq_4(TIME)..
     Sum{TYPES, PMAX[TYPES]*work[TYPES,TIME]} =g= 1.20*DEM[TIME] ;

* Objective function: total daily cost
Def_obj..
    T_Cost =e= sum{(TYPES,TIME),(CSTART[TYPES]*start[TYPES,TIME] +
                                 LEN(TIME)*(CMIN[TYPES]*work[TYPES,TIME] +
                                            CADD[TYPES]*padd[TYPES,TIME]
                                 )         ) } ;

* Limit number of available generators; numbers of generators are integer
 work.up[TYPES,TIME] = AVAIL[TYPES] ;
 padd.lo[TYPES,TIME] = 0.0          ;
start.lo[TYPES,TIME] = 0.0          ;

* XPress model solution
*work.fx['P1','T1']=3; work.fx['P1','T2']=4; work.fx['P1','T3']=4; work.fx['P1','T4']=7; work.fx['P1','T5']=3; work.fx['P1','T6']=3; work.fx['P1','T7']=3;
*work.fx['P2','T1']=4; work.fx['P2','T2']=4; work.fx['P2','T3']=4; work.fx['P2','T4']=4; work.fx['P2','T5']=4; work.fx['P2','T6']=4; work.fx['P2','T7']=4;
*work.fx['P3','T1']=2; work.fx['P3','T2']=8; work.fx['P3','T3']=8; work.fx['P3','T4']=8; work.fx['P3','T5']=8; work.fx['P3','T6']=8; work.fx['P3','T7']=4;
*work.fx['P4','T1']=0; work.fx['P4','T2']=3; work.fx['P4','T3']=1; work.fx['P4','T4']=3; work.fx['P4','T5']=1; work.fx['P4','T6']=3; work.fx['P4','T7']=1;

Model A_6_Electricity_production / all / ;

Solve A_6_Electricity_production using mip minimazing T_Cost ;

Display T_Cost.l ;
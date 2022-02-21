*******************************************************
*   CP Example Problems
*   ===================
*
*   file j5tax_ka.mos
*   `````````````````
*   Choice of locations for income tax offices
*   (See "Applications of optimization with Xpress-MP",
*        Section 15.5 Location of income tax offices)
*
*   The variables build(c) representing the decisions
*   whether to build an office and the variables depend(c)
*   indicating the office associated with a town are linked
*   by `occurrence' and `equivalence' constraints:
*     numdep(c) = |depend(d)=c|
*     numdep(c) >= 1 <=> build(c) = 1
*
*   The distances in the objective function are represented
*   through `element' constraints (auxiliary variables depdist(c)
*   indicate the distance from town c to the closest office).
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
********************************************************

* model "J-5 Tax office location (CP)"
*  uses "kalis"

$Set NC 12

* Set of cities
Set CITIES / c1*c%NC% / ;

Alias(CITIES,CITIES1) ;
Alias(CITIES,CITIES2) ;


* Population of cities
Parameter POP[CITIES] / c1 15 ,  c2 10 ,  c3 12 ,  c4 18 ,
                        c5  5 ,  c6 24 ,  c7 11 ,  c8 16 ,
                        c9 13 , c10 22 , c11 19 , c12 20 / ;

* Auxiliary array used in constr. def.
Parameter D[CITIES]

* Road lengths
Parameter LEN[CITIES,CITIES1] ;
                      LEN['c1','c2']   = 15 ;
                      LEN['c1','c5']   = 24 ;
                      LEN['c1','c7']   = 18 ;
                      LEN['c2','c3']   = 22 ;
                      LEN['c3','c4']   = 18 ;
                      LEN['c3','c5']   = 16 ;
                      LEN['c3','c9']   = 20 ;
                      LEN['c4','c6']   = 12 ;
                      LEN['c5','c8']   = 12 ;
                      LEN['c5','c9']   = 24 ;
                      LEN['c6','c9']   = 12 ;
                      LEN['c6','c12']  = 22 ;
                      LEN['c7','c8']   = 15 ;
                      LEN['c7','c10']  = 22 ;
                      LEN['c8','c9']   = 30 ;
                      LEN['c8','c11']  = 25 ;
                      LEN['c9','c11']  = 19 ;
                      LEN['c9','c12']  = 19 ;
                      LEN['c10','c11'] = 19 ;
                      LEN['c11','c12'] = 21 ;


Parameter BIGM ; BIGM = Sum{(CITIES,CITIES1)$(LEN[CITIES,CITIES1] gt 0 ),
                                                         LEN[CITIES,CITIES1] } ;
* Distance matrix
Parameter DIST[CITIES,CITIES1] ;  DIST[CITIES,CITIES1] = BIGM ;

* Set values on the diagonal to 0
Loop{(CITIES,CITIES1)$(ord(CITIES) eq ord(CITIES1)),DIST[CITIES,CITIES1] = 0 ;};

* Length of existing road connections
Loop{(CITIES,CITIES1)$(LEN[CITIES,CITIES1] gt 0 ),
DIST[CITIES,CITIES1] = LEN[CITIES,CITIES1];
DIST[CITIES1,CITIES] = LEN[CITIES,CITIES1];
     };

Loop{(CITIES,CITIES1,CITIES2)$(ord(CITIES1) lt ord(CITIES2)),
   if(DIST[CITIES1,CITIES2] gt DIST[CITIES1,CITIES]+DIST[CITIES,CITIES2],
      DIST[CITIES1,CITIES2] = DIST[CITIES1,CITIES]+DIST[CITIES,CITIES2];
      DIST[CITIES2,CITIES1] = DIST[CITIES1,CITIES]+DIST[CITIES,CITIES2];
      );
    };



Parameter maxdep ;
          maxdep = 0 ;
Loop{(CITIES,CITIES1),
if(maxdep lt DIST[CITIES,CITIES1],maxdep = DIST[CITIES,CITIES1] ) ;
    };
Loop{(CITIES,CITIES1)$(ord(CITIES1) eq card(CITIES1)),
                     D[CITIES] = DIST[CITIES,CITIES1] ;   };


* Desired number of tax offices
Scalar NUMLOC / 3 / ;


*Integer
 Variable
* 1 if office in city, 0 otherwise
         build[CITIES]                   ,
* Office on which city depends
         depend[CITIES,CITIES1]          ;

Variable
* Distance to tax office
         depdist[CITIES]                 ,
* Number of depending cities per off.
         numdep[CITIES]                  ,
* Objective function variable
         TotDist                         ;

Equation
         Eq_1                            ,
         Eq_2(CITIES)                    ,
         Eq_3(CITIES)                    ,
         Eq_4(CITIES)                    ,
         Eq_5(CITIES)                    ,
         Def_Obj                         ;


* Limit total number of offices
Eq_1..
   Sum{CITIES, build[CITIES] } =l=  NUMLOC ;

Eq_2(CITIES)..
   Sum{CITIES1, depend[CITIES,CITIES1] } =e= 1 ;

Eq_3(CITIES)..
   depdist[CITIES] =e= Sum{CITIES1,DIST[CITIES,CITIES1]* depend[CITIES,CITIES1]};
* Number of cities depending on every office

Eq_4(CITIES)..
   numdep[CITIES]  =e= Sum{CITIES1, depend[CITIES1,CITIES] }  ;

Eq_5(CITIES)..
    build[CITIES]   =e= ceil(numdep[CITIES]/(numdep[CITIES]+1)) ;

* Objective: weighted total distance
Def_Obj..
    TotDist =e= ( Sum{CITIES, POP[CITIES]*depdist[CITIES] } )
                                       ;

build.lo[CITIES] = 0 ;
build.up[CITIES] = 1 ;

depdist.lo[CITIES] = 0      ;
depdist.up[CITIES] = maxdep ;

numdep.lo[CITIES]  = 0      ;
numdep.up[CITIES]  = %NC%   ;

depend.lo[CITIES,CITIES1]   =  0 ;
depend.up[CITIES,CITIES1]   =  1 ;

* XPress-Kalis solution
*depend.fx[CITIES,CITIES1]   =  0 ;
*depend.fx['c1','c1']   =  1 ;
*depend.fx['c2','c1']   =  1 ;
*depend.fx['c3','c6']   =  1 ;
*depend.fx['c4','c6']   =  1 ;
*depend.fx['c5','c1']   =  1 ;
*depend.fx['c6','c6']   =  1 ;
*depend.fx['c7','c1']   =  1 ;
*depend.fx['c8','c11']  =  1 ;
*depend.fx['c9','c6']   =  1 ;
*depend.fx['c10','c11'] =  1 ;
*depend.fx['c11','c11'] =  1 ;
*depend.fx['c12','c11'] =  1 ;

Model J_5_Tax_office_location / all / ;

Solve J_5_Tax_office_location using DNLP minimazing totDist ;

Display TotDist.l ;



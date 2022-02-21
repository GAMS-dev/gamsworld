*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file multicomflow.mos
*   `````````````````````
*   TYPE:         Multi-commodity network flow problem
*   DIFFICULTY:   3
*   FEATURES:     MIP problem, encoding of paths, `finalize', `getsize'
*   DESCRIPTION:  A private telephone company exploits a network between
*                 five cities. At a given moment, the company is facing
*                 a given set of demands for circuits (telephone calls).
*                 The objective is to transmit as much as possible of the
*                 demands and to indicate the corresponding routing, that is,
*                 the access paths used.
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 12.3 `Routing telephone calls'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Routing telephone calls"

$Set NARC 6
Set Count / c1 * c%NARC% / ;

Set names /  Nantes_Nice          ,
             Nantes_Troyes        ,
             Nantes_Valenciennes  ,
             Nantes_Paris         ,
             Nice_Valenciennes    ,
             Troyes_Nice          ,
             Troyes_Valenciennes  ,
             Paris_Troyes         ,
             Paris_Nice           ,
             Paris_Valenciennes    / ;

* Set of demands
Set CALLS(names)  / Nantes_Nice          ,
                    Nantes_Troyes        ,
                    Nantes_Valenciennes  ,
                    Nice_Valenciennes    ,
                    Paris_Troyes          / ;

* Set of arcs
Set ARCS(names)  /  Nantes_Paris ,
                    Nantes_Nice ,
                    Paris_Nice ,
                    Paris_Valenciennes ,
                    Troyes_Nice ,
                    Troyes_Valenciennes  / ;

* Set of paths (routes) for demands
Set PATHS / p1*p17 / ;

* Capacity of arcs
Parameter CAP[names]  /  Nantes_Paris        300 ,
                        Nantes_Nice         120 ,
                        Paris_Nice          300 ,
                        Paris_Valenciennes  200 ,
                        Troyes_Nice          80 ,
                        Troyes_Valenciennes  70  / ;

* Demands between pairs of cities
Parameter DEM[names] /  Nantes_Nice         100 ,
                        Nantes_Troyes        80 ,
                        Nantes_Valenciennes  75 ,
                        Nice_Valenciennes   100 ,
                        Paris_Troyes         70  / ;

* Call (demand) index per path index
Set CINDEX_set[PATHS,names] ;
           CINDEX_set['p1','Nantes_Nice']         = Yes ;
           CINDEX_set['p2','Nantes_Nice']         = Yes ;
           CINDEX_set['p3','Nantes_Nice']         = Yes ;
           CINDEX_set['p4','Nantes_Troyes']       = Yes ;
           CINDEX_set['p5','Nantes_Troyes']       = Yes ;
           CINDEX_set['p6','Nantes_Troyes']       = Yes ;
           CINDEX_set['p7','Nantes_Troyes']       = Yes ;
           CINDEX_set['p8','Nantes_Valenciennes'] = Yes ;
           CINDEX_set['p9','Nantes_Valenciennes'] = Yes ;
           CINDEX_set['p10','Nantes_Valenciennes']= Yes ;
           CINDEX_set['p11','Nantes_Valenciennes']= Yes ;
           CINDEX_set['p12','Nice_Valenciennes']  = Yes ;
           CINDEX_set['p13','Nice_Valenciennes']  = Yes ;
           CINDEX_set['p14','Nice_Valenciennes']  = Yes ;
           CINDEX_set['p15','Paris_Troyes']       = Yes ;
           CINDEX_set['p16','Paris_Troyes']       = Yes ;
           CINDEX_set['p17','Paris_Troyes']       = Yes ;


* Call (demand) index per path index
Parameter CINDEX[PATHS] ;

Loop{PATHS,
Loop{names,
  If (CINDEX_set(PATHS,names) , CINDEX[PATHS] = ord(names) ) ;
    };
    };


Set ROUTE_set(PATHS,Count,names);

 ROUTE_set['p1','c1','Nantes_Nice']         = Yes ;
 ROUTE_set['p2','c1','Nantes_Paris']        = Yes ;
 ROUTE_set['p2','c2','Paris_Nice']          = Yes ;
 ROUTE_set['p3','c1','Nantes_Paris']        = Yes ;
 ROUTE_set['p3','c2','Paris_Valenciennes']  = Yes ;
 ROUTE_set['p3','c3','Troyes_Valenciennes'] = Yes ;
 ROUTE_set['p3','c4','Troyes_Nice']         = Yes ;
 ROUTE_set['p4','c1','Nantes_Paris']        = Yes ;
 ROUTE_set['p4','c2','Paris_Valenciennes']  = Yes ;
 ROUTE_set['p4','c3','Troyes_Valenciennes'] = Yes ;
 ROUTE_set['p5','c1','Nantes_Paris']        = Yes ;
 ROUTE_set['p5','c2','Paris_Nice']          = Yes ;
 ROUTE_set['p5','c3','Troyes_Nice']         = Yes ;
 ROUTE_set['p6','c1','Nantes_Nice']         = Yes ;
 ROUTE_set['p6','c2','Troyes_Nice']         = Yes ;
 ROUTE_set['p7','c1','Nantes_Nice']         = Yes ;
 ROUTE_set['p7','c2','Paris_Nice']          = Yes ;
 ROUTE_set['p7','c3','Paris_Valenciennes']  = Yes ;
 ROUTE_set['p7','c4','Troyes_Valenciennes'] = Yes ;
 ROUTE_set['p8','c1','Nantes_Paris']        = Yes ;
 ROUTE_set['p8','c2','Paris_Valenciennes']  = Yes ;
 ROUTE_set['p9','c1','Nantes_Nice']         = Yes ;
 ROUTE_set['p9','c2','Paris_Nice']          = Yes ;
 ROUTE_set['p9','c3','Paris_Valenciennes']  = Yes ;
 ROUTE_set['p10','c1','Nantes_Paris']       = Yes ;
 ROUTE_set['p10','c2','Paris_Nice']         = Yes ;
 ROUTE_set['p10','c3','Troyes_Nice']        = Yes ;
 ROUTE_set['p10','c4','Troyes_Valenciennes']= Yes ;
 ROUTE_set['p11','c1','Nantes_Nice']        = Yes ;
 ROUTE_set['p11','c2','Troyes_Nice']        = Yes ;
 ROUTE_set['p11','c3','Troyes_Valenciennes']= Yes ;
 ROUTE_set['p12','c1','Nantes_Nice']        = Yes ;
 ROUTE_set['p12','c2','Nantes_Paris']       = Yes ;
 ROUTE_set['p12','c3','Paris_Valenciennes'] = Yes ;
 ROUTE_set['p13','c1','Paris_Nice']         = Yes ;
 ROUTE_set['p13','c2','Paris_Valenciennes'] = Yes ;
 ROUTE_set['p14','c1','Troyes_Nice']        = Yes ;
 ROUTE_set['p14','c2','Troyes_Valenciennes']= Yes ;
 ROUTE_set['p15','c1','Paris_Valenciennes'] = Yes ;
 ROUTE_set['p15','c2','Troyes_Valenciennes']= Yes ;
 ROUTE_set['p16','c1','Nantes_Paris']       = Yes ;
 ROUTE_set['p16','c2','Nantes_Nice']        = Yes ;
 ROUTE_set['p16','c3','Troyes_Nice']        = Yes ;
 ROUTE_set['p17','c1','Paris_Nice']         = Yes ;
 ROUTE_set['p17','c2','Troyes_Nice']        = Yes ;

* List of arcs composing the routes
Parameter ROUTE[PATHS,Count] ;

Loop{(PATHS,Count),
Loop{names,
  If (ROUTE_set(PATHS,Count,names) , ROUTE[PATHS,Count] = ord(names) ) ;
    };
    };
Integer Variable
* Flow on paths
                 flow[PATHS]    ;

Variable TotFlow ;

Equation Eq_Demand(names)  ,
         Capacity(names) ,
         Def_Obj        ;

* Flow within demand limits
Eq_Demand(names)$CALLS(names)..
    Sum{ PATHS$(CINDEX(PATHS) = ord(names)), flow[PATHS] } =l= DEM[names] ;

* Arc capacities
Capacity(names)$ARCS(names)..
    Sum{(PATHS,Count)$(ROUTE(PATHS,Count)=ord(names)), flow[PATHS]} =l= CAP[names] ;

* Objective: total flow on the arcs
Def_Obj..
    TotFlow =e= Sum{PATHS,flow[PATHS]};

* Solve the problem
Model Routing_telephone_calls / all / ;

Solve Routing_telephone_calls using MIP maximazing TotFlow ;

Display TotFlow.l ;





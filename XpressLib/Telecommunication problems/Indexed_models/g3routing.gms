*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file g3routing.mos
*   ``````````````````
*   Routing telephone calls in a private network
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Apr. 2002
********************************************************

* model "G-3 Routing telephone calls"

Set CALLS / Nantes , Nice , Troyes , Valenciennes , Paris / ;

Alias(CALLS,CALLS1) ;

Set CALLS_to_CALLS(CALLS,CALLS1) / Nantes.Nice         ,
                                   Nantes.Troyes       ,
                                   Nantes.Valenciennes ,
                                   Nice.Valenciennes   ,
                                   Paris.Troyes         / ;

Set ARCS(CALLS,CALLS1) / Nantes.Paris        ,
                         Nantes.Nice         ,
                         Paris.Nice          ,
                         Paris.Valenciennes  ,
                         Troyes.Nice         ,
                         Troyes.Valenciennes  / ;
* Set of arcs

Set PATHS / p1*p17 / ;
* Set of paths (routes) for demands

Parameter CAP[CALLS,CALLS1] ;

                 CAP['Nantes','Paris'       ] = 300 ;
                 CAP['Nantes','Nice'        ] = 120 ;
                 CAP['Paris','Nice'         ] = 300 ;
                 CAP['Paris','Valenciennes' ] = 200 ;
                 CAP['Troyes','Nice'        ] =  80 ;
                 CAP['Troyes','Valenciennes'] =  70 ;
* Capacity of arcs

Parameter DEM[CALLS,CALLS1] ;

                       DEM['Nantes','Nice'        ] = 100 ;
                       DEM['Nantes','Troyes'      ] =  80 ;
                       DEM['Nantes','Valenciennes'] =  75 ;
                       DEM['Nice','Valenciennes'  ] = 100 ;
                       DEM['Paris','Troyes'       ] =  70 ;
* Demands between pairs of cities

Parameter Par_DEM[CALLS,CALLS1] ;
                       Par_DEM['Nantes','Nice'        ] =   1 ;
                       Par_DEM['Nantes','Troyes'      ] =   2 ;
                       Par_DEM['Nantes','Valenciennes'] =   3 ;
                       Par_DEM['Nice','Valenciennes'  ] =   4 ;
                       Par_DEM['Paris','Troyes'       ] =   5 ;



Parameter CINDEX[PATHS,CALLS,CALLS1] ;
           CINDEX['p1','Nantes','Nice']         =  1 ;
           CINDEX['p2','Nantes','Nice']         =  1 ;
           CINDEX['p3','Nantes','Nice']         =  1 ;
           CINDEX['p4','Nantes','Troyes']       =  2 ;
           CINDEX['p5','Nantes','Troyes']       =  2 ;
           CINDEX['p6','Nantes','Troyes']       =  2 ;
           CINDEX['p7','Nantes','Troyes']       =  2 ;
           CINDEX['p8','Nantes','Valenciennes'] =  3 ;
           CINDEX['p9','Nantes','Valenciennes'] =  3 ;
          CINDEX['p10','Nantes','Valenciennes'] =  3 ;
          CINDEX['p11','Nantes','Valenciennes'] =  3 ;
          CINDEX['p12','Nice','Valenciennes']   =  4 ;
          CINDEX['p13','Nice','Valenciennes']   =  4 ;
          CINDEX['p14','Nice','Valenciennes']   =  4 ;
          CINDEX['p15','Paris','Troyes']        =  5 ;
          CINDEX['p16','Paris','Troyes']        =  5 ;
          CINDEX['p17','Paris','Troyes']        =  5 ;
* Call (demand) index per path index

Set NARC / b1*b6 / ;
* NARC = Card(ARCS) ;

Set ROUTE(PATHS,NARC,CALLS,CALLS1)  ;
  ROUTE['p1','b1','Nantes','Nice']        = Yes ;
  ROUTE['p2','b1','Nantes','Paris']       = Yes ;
  ROUTE['p2','b2','Paris','Nice']         = Yes ;
  ROUTE['p3','b1','Nantes','Paris']       = Yes ;
  ROUTE['p3','b2','Paris','Valenciennes'] = Yes ;
  ROUTE['p3','b3','Valenciennes','Troyes']= Yes ;
  ROUTE['p3','b4','Troyes','Nice']        = Yes ;
  ROUTE['p4','b1','Nantes','Paris']       = Yes ;
  ROUTE['p4','b2','Paris','Valenciennes'] = Yes ;
  ROUTE['p4','b3','Valenciennes','Troyes']= Yes ;
  ROUTE['p5','b1','Nantes','Paris']       = Yes ;
  ROUTE['p5','b2','Paris','Nice']         = Yes ;
  ROUTE['p5','b3','Troyes','Nice']        = Yes ;
  ROUTE['p6','b1','Nantes','Nice']        = Yes ;
  ROUTE['p6','b2','Troyes','Nice']        = Yes ;
  ROUTE['p7','b1','Nantes','Nice']        = Yes ;
  ROUTE['p7','b2','Paris','Nice']         = Yes ;
  ROUTE['p7','b3','Paris','Valenciennes'] = Yes ;
  ROUTE['p7','b4','Valenciennes','Troyes']= Yes ;
  ROUTE['p8','b1','Nantes','Paris']       = Yes ;
  ROUTE['p8','b2','Paris','Valenciennes'] = Yes ;
  ROUTE['p9','b1','Nantes','Nice']        = Yes ;
  ROUTE['p9','b2','Paris','Nice']         = Yes ;
  ROUTE['p9','b3','Paris','Valenciennes'] = Yes ;
 ROUTE['p10','b1','Nantes','Paris']       = Yes ;
 ROUTE['p10','b2','Paris','Nice']         = Yes ;
 ROUTE['p10','b3','Troyes','Nice']        = Yes ;
 ROUTE['p10','b4','Valenciennes','Troyes']= Yes ;
 ROUTE['p11','b1','Nantes','Nice']        = Yes ;
 ROUTE['p11','b2','Troyes','Nice']        = Yes ;
 ROUTE['p11','b3','Valenciennes','Troyes']= Yes ;
 ROUTE['p12','b1','Nantes','Nice']        = Yes ;
 ROUTE['p12','b2','Nantes','Paris']       = Yes ;
 ROUTE['p12','b3','Paris','Valenciennes'] = Yes ;
 ROUTE['p13','b1','Paris','Nice']         = Yes ;
 ROUTE['p13','b2','Paris','Valenciennes'] = Yes ;
 ROUTE['p14','b1','Troyes','Nice']        = Yes ;
 ROUTE['p14','b2','Valenciennes','Troyes']= Yes ;
 ROUTE['p15','b1','Paris','Valenciennes'] = Yes ;
 ROUTE['p15','b2','Valenciennes','Troyes']= Yes ;
 ROUTE['p16','b1','Nantes','Paris']       = Yes ;
 ROUTE['p16','b2','Nantes','Nice']        = Yes ;
 ROUTE['p16','b3','Troyes','Nice']        = Yes ;
 ROUTE['p17','b1','Paris','Nice']         = Yes ;
 ROUTE['p17','b2','Troyes','Nice']        = Yes ;
* List of arcs composing the routes

Parameter Par_ROUTE(PATHS,NARC,CALLS,CALLS1)  ;
Parameter Par_ARCS(CALLS,CALLS1)              ;
Par_ROUTE(PATHS,NARC,CALLS,CALLS1) = 1$ROUTE(PATHS,NARC,CALLS,CALLS1)  ;
Par_ARCS(CALLS,CALLS1)             = 1$ARCS(CALLS,CALLS1)              ;

Variable flow[PATHS] ;
* Flow on paths

Integer Variable flow[PATHS] ;

Variable TotFlow ;

Equation
         Eq_1(CALLS,CALLS1)  ,
         Eq_2(CALLS,CALLS1) ,
         Def_obj      ;


* Arc capacities
Eq_1(CALLS,CALLS1)$(CAP[CALLS,CALLS1] gt 0)..
 Sum{(PATHS,NARC)$(par_ROUTE(PATHS,NARC,CALLS,CALLS1) eq
                    par_ARCS(CALLS,CALLS1)),flow[PATHS] } =l= CAP[CALLS,CALLS1];

* Flow within demand limits
Eq_2(CALLS,CALLS1)$(DEM[CALLS,CALLS1] gt 0)..
 Sum{PATHS$(CINDEX[PATHS,CALLS,CALLS1] eq Par_DEM[CALLS,CALLS1]),flow[PATHS]}=l=
                                                              DEM[CALLS,CALLS1];

* Objective: total flow on the arcs
Def_obj..
 TotFlow =e= Sum{PATHS, flow[PATHS] } ;
* XPress solutions:
*flow.fx['p1']  =   0 ;
*flow.fx['p2']  = 100 ;
*flow.fx['p3']  =   0 ;
*flow.fx['p4']  =   0 ;
*flow.fx['p5']  =   0 ;
*flow.fx['p6']  =   0 ;
*flow.fx['p7']  =  35 ;
*flow.fx['p8']  =  75 ;
*flow.fx['p9']  =   0 ;
*flow.fx['p10'] =   0 ;
*flow.fx['p11'] =   0 ;
*flow.fx['p12'] =   0 ;
*flow.fx['p13'] =  20 ;
*flow.fx['p14'] =  80 ;
*flow.fx['p15'] =  70 ;
*flow.fx['p16'] =   0 ;
*flow.fx['p17'] =   0 ;

* Solve the problem
Model G_3_Routing_telephone_calls / All / ;

Solve G_3_Routing_telephone_calls using MIP maximazing TotFlow ;

Display TotFlow.l ;
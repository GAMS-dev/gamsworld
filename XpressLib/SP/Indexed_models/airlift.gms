*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: Airlift.mos
*
*   DESCRIPTION: Stochastic 2-stage linear model
*
*   TYPE: Transportation: Airlift operations scheduling
*
*   MODEL:
*        The problem consists of scheduling airlift operations along
*   a set of routes during a period of one month. The demands of routes
*   can be predicted but are subject to changes. A random variable is
*   assigned for each demand. If the predicted demands do not agree with
*   the actual demands, a recourse action is taken. To meet the route
*   demands, several types of aircrafts are available. Each aircraft has
*   its own characteristics, namely availability of number of flight hours
*   per month and carrying capacity when flying a specific route. The
*   recourse actions that can be taken are to switch aircrafts from one
*   route to another, to leave some flights unused, and to contract commercial
*   flights to meet the demands of routes.
*
*   FURTHER INFO: see Xpress-SP guide
*   see K. A. Ariyawansa and A. J. Felt, “Test – Problem Collection for Stochastic
*   Linear Programming" (http://www.uwsp.edu/math/afelt/slptestset/doc.pdf).
*
*   DATE: Oct 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
********************************************************!)
* model airlift
*    uses "mmsp"

Set AIRCRAFTS / a1 * a2 / ;
Set ROUTES    / R1 * R2 / ;
Set SCEN / S1*S25 / ;

Alias(ROUTES,ROUTES1) ;

Parameter d[ROUTES] ;
          d['R1'] =  927.758 ;
          d['R2'] = 1433.63  ;

Parameter A[AIRCRAFTS,ROUTES]               ;
       A['a1','R1'] = 24 ;
       A['a1','R2'] = 14 ;
       A['a2','R1'] = 49 ;
       A['a2','R2'] = 29 ;
Parameter Aswitch[AIRCRAFTS,ROUTES,ROUTES1] ;
       Aswitch['a1','R1','R2'] = 19 ;
       Aswitch['a1','R2','R1'] = 29 ;
       Aswitch['a2','R1','R2'] = 18 ;
       Aswitch['a2','R2','R1'] = 26 ;

Parameter F[AIRCRAFTS] ;
       F['a1'] = 7200 ;
       F['a2'] = 7200 ;

Parameter  b[AIRCRAFTS,ROUTES] ;
           b['a1','R1'] = 50 ;
           b['a1','R2'] = 75 ;
           b['a2','R1'] = 60 ;
           b['a2','R2'] = 40 ;

Parameter Cost[AIRCRAFTS,ROUTES] ;
       Cost['a1','R1'] = 7200 ;
       Cost['a1','R2'] = 6000 ;
       Cost['a2','R1'] = 7200 ;
       Cost['a2','R2'] = 4000 ;

Parameter CostSwitch[AIRCRAFTS,ROUTES,ROUTES1] ;
       CostSwitch['a1','R1','R2'] = 7000 ;
       CostSwitch['a1','R2','R1'] = 8200 ;
       CostSwitch['a2','R1','R2'] = 5500 ;
       CostSwitch['a2','R2','R1'] = 8700 ;

Parameter cplus[ROUTES]  ;
        cplus['R1'] = 500 ;
        cplus['R2'] = 250 ;

Parameter cminus[ROUTES] ;
        cminus['R1'] = 0 ;
        cminus['R2'] = 0 ;

Parameter Probabilities[SCEN];
 Probabilities['S1']  = 0.04 ;
 Probabilities['S2']  = 0.04 ;
 Probabilities['S3']  = 0.04 ;
 Probabilities['S4']  = 0.04 ;
 Probabilities['S5']  = 0.04 ;
 Probabilities['S6']  = 0.04 ;
 Probabilities['S7']  = 0.04 ;
 Probabilities['S8']  = 0.04 ;
 Probabilities['S9']  = 0.04 ;
 Probabilities['S10'] = 0.04 ;
 Probabilities['S11'] = 0.04 ;
 Probabilities['S12'] = 0.04 ;
 Probabilities['S13'] = 0.04 ;
 Probabilities['S14'] = 0.04 ;
 Probabilities['S15'] = 0.04 ;
 Probabilities['S16'] = 0.04 ;
 Probabilities['S17'] = 0.04 ;
 Probabilities['S18'] = 0.04 ;
 Probabilities['S19'] = 0.04 ;
 Probabilities['S20'] = 0.04 ;
 Probabilities['S21'] = 0.04 ;
 Probabilities['S22'] = 0.04 ;
 Probabilities['S23'] = 0.04 ;
 Probabilities['S24'] = 0.04 ;
 Probabilities['S25'] = 0.04 ;

Parameter DValues[ROUTES,SCEN];
 DValues['R1','S1']  =  927.758357 ; DValues['R1','S2']  =  982.516248 ;
 DValues['R1','S3']  =  961.404897 ; DValues['R1','S4']  =  922.915716 ;
 DValues['R1','S5']  =  986.342969 ; DValues['R1','S6']  =  999.134104 ;
 DValues['R1','S7']  =  970.324386 ; DValues['R1','S8']  =  949.613106 ;
 DValues['R1','S9']  =  991.773703 ; DValues['R1','S10'] =  979.491162 ;
 DValues['R1','S11'] =  979.679661 ; DValues['R1','S12'] =  964.052640 ;
 DValues['R1','S13'] =  957.691777 ; DValues['R1','S14'] =  930.372603 ;
 DValues['R1','S15'] =  933.799027 ; DValues['R1','S16'] =  995.204085 ;
 DValues['R1','S17'] =  957.344884 ; DValues['R1','S18'] =  923.484318 ;
 DValues['R1','S19'] =  959.026809 ; DValues['R1','S20'] =  946.706588 ;
 DValues['R1','S21'] =  991.897924 ; DValues['R1','S22'] =  956.965721 ;
 DValues['R1','S23'] =  981.616042 ; DValues['R1','S24'] =  957.688286 ;
 DValues['R1','S25'] = 1000.035618 ; DValues['R2','S1']  = 1433.626750 ;
 DValues['R2','S2']  = 1149.727635 ; DValues['R2','S3']  = 1492.817415 ;
 DValues['R2','S4']  = 1250.557154 ; DValues['R2','S5']  = 1353.935057 ;
 DValues['R2','S6']  = 1226.355338 ; DValues['R2','S7']  = 1378.148830 ;
 DValues['R2','S8']  = 1200.624255 ; DValues['R2','S9']  = 1045.317699 ;
 DValues['R2','S10'] =  899.933450 ; DValues['R2','S11'] = 1439.677972 ;
 DValues['R2','S12'] = 1170.804834 ; DValues['R2','S13'] = 1474.838349 ;
 DValues['R2','S14'] = 1572.684651 ; DValues['R2','S15'] = 1207.662826 ;
 DValues['R2','S16'] = 1368.931017 ; DValues['R2','S17'] = 1327.981462 ;
 DValues['R2','S18'] =  943.075132 ; DValues['R2','S19'] = 1226.555028 ;
 DValues['R2','S20'] = 1543.605354 ; DValues['R2','S21'] = 1243.379144 ;
 DValues['R2','S22'] = 1302.917735 ; DValues['R2','S23'] = 1122.900897 ;
 DValues['R2','S24'] = 1355.585501 ; DValues['R2','S25'] = 1255.185201 ;

Parameter d[ROUTES] ;

Variable x[AIRCRAFTS,ROUTES]               ,
         xswitch[AIRCRAFTS,ROUTES,ROUTES1] ,
         yplus[ROUTES]                     ,
         yminus[ROUTES]                    ,
         ExpTotalCost                      ;

Equation MaxHours(AIRCRAFTS)         ,
         MaxSwitch(AIRCRAFTS,ROUTES) ,
         DemandCtr(ROUTES)           ,
         Def_Obj                     ;

* First stage constraints:

MaxHours(AIRCRAFTS)..
         Sum{ROUTES, A[AIRCRAFTS,ROUTES]*
                     x[AIRCRAFTS,ROUTES] } =l= F[AIRCRAFTS] ;

* Second stage constraints:
MaxSwitch(AIRCRAFTS,ROUTES)..
         Sum{ROUTES1$(ord(ROUTES1) ne ord(ROUTES)),
                     Aswitch[AIRCRAFTS,ROUTES,ROUTES1]*
                     xswitch[AIRCRAFTS,ROUTES,ROUTES1]} =l= A[AIRCRAFTS,ROUTES]*
                                                            x[AIRCRAFTS,ROUTES];
* Demand constraint for recourse
DemandCtr(ROUTES)..
            -Sum{(AIRCRAFTS,ROUTES1)$(ord(ROUTES1) ne ord(ROUTES)),
                                        (b[AIRCRAFTS,ROUTES]*
                                         Aswitch[AIRCRAFTS,ROUTES,ROUTES1]/
                                         A[AIRCRAFTS,ROUTES])*
                                         xswitch[AIRCRAFTS,ROUTES,ROUTES1] } +
             Sum{(AIRCRAFTS,ROUTES1)$(ord(ROUTES1) ne ord(ROUTES)),
                                         b[AIRCRAFTS,ROUTES]*
                                         xswitch[AIRCRAFTS,ROUTES1,ROUTES] } +
             yplus[ROUTES] -
             yminus[ROUTES] =e=  d[ROUTES]- Sum{AIRCRAFTS, b[AIRCRAFTS,ROUTES]*
                                                           x[AIRCRAFTS,ROUTES]};

Def_Obj..
    ExpTotalCost =e=
        Sum{(AIRCRAFTS,ROUTES), Cost[AIRCRAFTS,ROUTES]*x[AIRCRAFTS,ROUTES]} +
        Sum{(AIRCRAFTS,ROUTES,ROUTES1)$(ord(ROUTES1) ne ord(ROUTES)),
                                       (CostSwitch[AIRCRAFTS,ROUTES,ROUTES1] -
                                        Cost[AIRCRAFTS,ROUTES]*
                                        Aswitch[AIRCRAFTS,ROUTES,ROUTES1]/
                                        A[AIRCRAFTS,ROUTES])*
                                        xswitch[AIRCRAFTS,ROUTES,ROUTES1] } +
        Sum{ROUTES, cplus[ROUTES]*yplus[ROUTES]   } +
        Sum{ROUTES, cminus[ROUTES]*yminus[ROUTES] } ;

         yplus.lo[ROUTES]  = 0                    ;
         yminus.lo[ROUTES] = 0                    ;
         xswitch.lo[AIRCRAFTS,ROUTES,ROUTES1] = 0 ;

Model airlift /all / ;
Solve airlift using LP minimazing ExpTotalCost ;
Display ExpTotalCost.l ;





******************************************************
*  Mosel Example Problems
*   ======================
*
* origin file a3refine.mos
*   `````````````````
*   Refinery planning
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Feb. 2002
*******************************************************

* model 'A-3 Refinery planning'

*  CRUDES:   set of string                => Set of crudes
*  ALLPRODS: set of string                => Intermediate and final products
*  FINAL:    set of string                => Final products
*  IDIST:    set of string                => Products obtained by distillation
*  IREF:     set of string                => Products obtained by reforming
*  ICRACK:   set of string                => Products obtained by cracking
*  IPETROL:  set of string                => Interm. products for petrol
*  IDIESEL:  set of string                => Interm. products for diesel

*  IHO                                    => Interm. products for heating oil
*  DEM: array(FINAL) of real              => Min. production
*  COST: array(set of string) of real     => Production costs
*  AVAIL: array(CRUDES) of real           => Crude availability
*  OCT, VAP, VOL: array(IPETROL) of real  => Octane, vapor pressure, and
*                                            volatility values
*  SULF: array(IDIESEL) of real           => Sulfur contents
*  DIST: array(CRUDES,IDIST) of real      => Composition of crudes (in %)
*  REF: array(IREF) of real               => Results of reforming (in %)
*  CRACK: array(ICRACK) of real           => Results of cracking (in %)



Set ALLPRODS / butane     , petrol        , diesel         ,
               petbutane  , reformate     , petcrknaphtha  ,
               dslgasoil  , dslcrknaphtha , dslcrkgasoil   ,
               crude1     , crude2        , refbutane      ,
               hogasoil   , hocrknaphtha  , hocrkgasoil    ,
               distbutane , naphtha       , gasoil         ,
               crknaphtha , crkgasoil     , residue        , heating / ;



* ALLPRODS:= FINAL+IDIST+IREF+ICRACK+IPETROL+IHO+IDIESEL

Set IHO(ALLPRODS)     / hogasoil , hocrknaphtha , hocrkgasoil     / ;
Set FINAL(ALLPRODS)   / butane , petrol , diesel , heating        / ;
Set IPETROL(ALLPRODS) / petbutane , reformate , petcrknaphtha     / ;
Set IDIESEL(ALLPRODS) / dslgasoil , dslcrknaphtha , dslcrkgasoil  / ;
Set CRUDES(ALLPRODS)  / crude1 , crude2                           / ;
Set IREF(ALLPRODS)    / refbutane , reformate                     / ;
Set ICRACK(ALLPRODS)  / crknaphtha , crkgasoil                    / ;
Set IDIST(ALLPRODS)   / distbutane , naphtha , gasoil , residue   / ;

Alias(ALLPRODS,ALLPRODS1);

Parameter DEM[ALLPRODS]  ;
            DEM['butane'] = 20000 ;
            DEM['petrol'] = 40000 ;
            DEM['diesel'] = 30000 ;
            DEM['heating']= 42000 ;

Parameter OCT[ALLPRODS]  ; OCT['petbutane']     = 120     ;
                           OCT['reformate']     = 100     ;
                           OCT['petcrknaphtha'] =  74     ;
Parameter VAP[ALLPRODS]  ; VAP['petbutane']     =  60     ;
                           VAP['reformate']     =   2.6   ;
                           VAP['petcrknaphtha'] =   4.1   ;
Parameter VOL[ALLPRODS]  ; VOL['petbutane']     = 105     ;
                           VOL['reformate']     =   3     ;
                           VOL['petcrknaphtha'] =  12     ;
Parameter SULF[ALLPRODS] ; SULF['dslgasoil']    =   0.03  ;
                           SULF['dslcrknaphtha']=   0.12  ;
                           SULF['dslcrkgasoil'] =   0.76  ;
Parameter AVAIL[ALLPRODS]; AVAIL['crude1']      = 250000  ;
                           AVAIL['crude2']      = 500000  ;
Parameter REF[ALLPRODS]  ; REF['refbutane']     =   0.15  ;
                           REF['reformate']     =   0.85  ;
Parameter CRACK[ALLPRODS]; CRACK['crknaphtha']  =   0.40  ;
                           CRACK['crkgasoil']   =   0.35  ;

Parameter DIST[ALLPRODS,ALLPRODS1] ;
       DIST['crude1','distbutane'] = 0.03 ;
       DIST['crude1','naphtha']    = 0.15 ;
       DIST['crude1','gasoil']     = 0.40 ;
       DIST['crude1','residue']    = 0.15 ;
       DIST['crude2','distbutane'] = 0.05 ;
       DIST['crude2','naphtha']    = 0.20 ;
       DIST['crude2','gasoil']     = 0.35 ;
       DIST['crude2','residue']    = 0.10 ;

Set SET_DIST(ALLPRODS,ALLPRODS1) ;
SET_DIST(ALLPRODS,ALLPRODS1) = Yes$(DIST[ALLPRODS,ALLPRODS1] gt 0.0 ) ;

Parameter COST[ALLPRODS] ;
          COST['crude1'] = 2.1  ;
          COST['crude2'] = 2.1  ;
          COST['naphtha']= 4.18 ;
          COST['residue']= 0.6  ;
          COST['gasoil'] = 2.04 ;



Variable  use[ALLPRODS]        ,
* Quantities used
          produce[ALLPRODS]     ,
* Quantities produced
          T_Cost             ;
Equation
         Eq_1(ALLPRODS)    ,
         Eq_2(ALLPRODS)    ,
         Eq_3(ALLPRODS)    ,
         Eq_4              ,
         Eq_5              ,
         Eq_6              ,
         Eq_7              ,
         Eq_8              ,
         Eq_9              ,
         Eq_10             ,
         Eq_11             ,
         Eq_12             ,
         Eq_13             ,
         Eq_14             ,
         Def_obj            ;

* Relations intermediate products resulting of distillation - raw materials
Eq_1(ALLPRODS)$IDIST(ALLPRODS)..
    produce[ALLPRODS] =l= Sum{ALLPRODS1$CRUDES(ALLPRODS1),
                                        DIST[ALLPRODS1,ALLPRODS]*use[ALLPRODS1]};
* Relations between intermediate products
* Reforming:
Eq_2(ALLPRODS)$IREF(ALLPRODS)..
    produce[ALLPRODS] =l= REF[ALLPRODS]*produce('naphtha')  ;
* Cracking:
Eq_3(ALLPRODS)$ICRACK(ALLPRODS)..
    produce[ALLPRODS] =l= CRACK[ALLPRODS]*produce('residue') ;
Eq_4..
    produce('crknaphtha') =e= produce('petcrknaphtha') +
                              produce('hocrknaphtha')  +
                              produce('dslcrknaphtha')  ;
Eq_5..
    produce('crkgasoil')  =e= produce('hocrkgasoil')   +
                              produce('dslcrkgasoil')   ;
* Desulfurization:
Eq_6..
    produce('gasoil')     =e= produce('hogasoil')      +
                              produce('dslgasoil')      ;
* Relations final products - intermediate products
Eq_7..
    produce['butane']     =e= produce('distbutane')    +
                              produce('refbutane')     -
                              produce('petbutane')      ;
Eq_8..
    produce['petrol']  =e= Sum{ALLPRODS$IPETROL(ALLPRODS), produce[ALLPRODS]}  ;
Eq_9..
    produce['diesel']  =e= Sum{ALLPRODS$IDIESEL(ALLPRODS), produce[ALLPRODS]}  ;
Eq_10..
    produce['heating'] =e= Sum{ALLPRODS$IHO(ALLPRODS)    , produce[ALLPRODS]}  ;

* Properties of petrol
Eq_11..
Sum{ALLPRODS$IPETROL(ALLPRODS),OCT[ALLPRODS]*produce[ALLPRODS]} =g=
                                                      94.0 * produce['petrol'] ;
Eq_12..
Sum{ALLPRODS$IPETROL(ALLPRODS),VAP[ALLPRODS]*produce[ALLPRODS]} =l=
                                                      12.7 * produce['petrol'] ;
Eq_13..
Sum{ALLPRODS$IPETROL(ALLPRODS),VOL[ALLPRODS]*produce[ALLPRODS]} =g=
                                                      17.0 * produce['petrol'] ;
Eq_14..
* Limit on sulfur in diesel oil
Sum{ALLPRODS$IDIESEL(ALLPRODS), SULF[ALLPRODS]*produce[ALLPRODS]}=l=
                                                      0.05*produce['diesel']   ;
* Crude availabilities
use.up[ALLPRODS]$CRUDES(ALLPRODS) = AVAIL[ALLPRODS] ;
use.lo[ALLPRODS] = 0.0 ;
* Production capacities
 produce.up['naphtha'] = 30000 ;
* Reformer
 produce.up['gasoil']  = 50000 ;
* Desulfurization
 produce.up['residue'] = 40000 ;
* Cracker


* Objective function
Def_obj..
    T_Cost =e= Sum{ALLPRODS$CRUDES(ALLPRODS),COST[ALLPRODS]*use[ALLPRODS]    }+
               Sum{ALLPRODS$IDIST(ALLPRODS) ,COST[ALLPRODS]*produce[ALLPRODS]} ;
* Satisfy demands
produce.lo[ALLPRODS] = DEM[ALLPRODS] ;

* XPress solution
*use.fx['crude1']            =      0 ;
*use.fx['crude2']            = 440000 ;

*produce.fx['butane']        =  20000 ;
*produce.fx['petrol']        =  40000 ;
*produce.fx['diesel']        =  30000 ;
*produce.fx['heating']       =  42000 ;
*produce.fx['distbutane']    =  22000 ;
*produce.fx['naphtha']       =  30000 ;
*produce.fx['gasoil']        =  50000 ;
*produce.fx['residue']       =  40000 ;
*produce.fx['refbutane']     =   4500 ;
*produce.fx['reformate']     =  25500 ;
*produce.fx['crknaphtha']    =  16000 ;
*produce.fx['crkgasoil']     =  14000 ;
*produce.fx['petbutane']     =   6500 ;
*produce.fx['petcrknaphtha'] =   8000 ;
*produce.fx['hogasoil']      =  20000 ;
*produce.fx['hocrknaphtha']  =   8000 ;
*produce.fx['hocrkgasoil']   =  14000 ;
*produce.fx['dslgasoil']     =  30000 ;
*produce.fx['dslcrknaphtha'] =      0 ;
*produce.fx['dslcrkgasoil']  =      0 ;


Model A_3_Refinery_planning / all / ;

Solve A_3_Refinery_planning using lp minimazing T_Cost ;

Display T_Cost.l ;






*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file e5combine.mos
*   ``````````````````
*   Combining different modes of transport
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "E-5 Combined transport"


$Set NL  4
Set LEGS  /L1*L%NL% / ;
* Legs of the transport
Set MODES / rail , road , air / ;
* Modes of transport

Alias(MODES,MODES1);

Table CTRANS[MODES,LEGS]
                                        L1 L2 L3 L4
                               rail     30 25 40 60
                               road     25 40 45 50
                               air      40 20 50 45 ;
* Transport cost
Parameter CCHG[MODES,MODES1] ; CCHG['rail','road'] =  5 ;
                               CCHG['rail','air']  = 12 ;
                               CCHG['road','rail'] =  8 ;
                               CCHG['road','air']  = 10 ;
                               CCHG['air','rail']  = 15 ;
                               CCHG['air','road']  = 10 ;
* Cost of changing mode of transport

Binary Variable use[MODES,LEGS]            ,
* 1 if a mode is used, 0 otherwise
                change[MODES,MODES1,LEGS]  ;
* 1 if change from mode m to n
* at end of leg, 0 otherwise

Variable Total_Cost ;

Equation Eq_1(LEGS)              ,
         Eq_2(LEGS)              ,
         Eq_3(MODES,MODES1,LEGS) ,
         Def_obj                 ;

* One mode of transport per leg
Eq_1(LEGS)..
    Sum{MODES, use[MODES,LEGS] } =e= 1 ;

* Change or maintain mode of transport between every pair of legs
Eq_2(LEGS)$(ord(LEGS) ne card(LEGS))..
    Sum{(MODES,MODES1), change[MODES,MODES1,LEGS] } =e= 1 ;

* Relation between modes used and changes
Eq_3(MODES,MODES1,LEGS)$(ord(LEGS) ne card(LEGS))..
    use[MODES,LEGS] + use(MODES1,LEGS+1) =g= 2*change[MODES,MODES1,LEGS] ;


* Objective: total cost
Def_obj..
 Total_Cost =e= Sum{(MODES,LEGS),CTRANS[MODES,LEGS]*use[MODES,LEGS]          }+
                Sum{(MODES,MODES1,LEGS)$(ord(LEGS) ne card(LEGS)),
                                 CCHG[MODES,MODES1]*change[MODES,MODES1,LEGS]} ;

*XPress solution
*use.fx['rail','L1'] = 1 ;
*use.fx['rail','L2'] = 1 ;
*use.fx['rail','L3'] = 1 ;
*use.fx['road','L4'] = 1 ;






* Solve the problem
Model E_5_Combined_transport / All  / ;

Solve E_5_Combined_transport using MIP minimazing Total_Cost ;

Display Total_Cost.l ;

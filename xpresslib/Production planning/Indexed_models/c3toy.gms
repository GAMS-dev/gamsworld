******************************************************
*   Mosel Example Problems
*   ======================
*
* origin file c3toy.mos
*   ``````````````
*   Planning the production of toy lorrys
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "C-3 Toy production"

Set ITEMS / wheel      , steel_bar          , bumper      ,
            chassis    , cabin              , door_window ,
            windscreen , assembled_chassis  , container   ,
            tank       , assembled_cabin    , blue_motor  ,
            red_motor  , headlight          , axle
            red_lorry  , blue_lorry  / ;
Alias (ITEMS1 , ITEMS ) ;
Alias (PREPROD , ITEMS ) ;
* Set of preproducts

* Set of all products
Set FINAL(ITEMS) / blue_lorry , red_lorry / ;
* Set of final products
Set ASMBL(ITEMS) / axle , assembled_chassis ,
                   assembled_cabin , blue_lorry , red_lorry / ;
* Set of assembled products

Parameter CAP / axle                   600 ,
                assembled_chassis     4000 ,
                assembled_cabin       3000 ,
                blue_lorry            4000 ,
                red_lorry             5000 / ;

* Capacity of assembly lines
Parameter DEM / blue_lorry 3000 , red_lorry 3000 / ;

* Demand of lorrys
Parameter CPROD / axle                 6.80 ,
                  assembled_chassis    3.55 ,
                  assembled_cabin      3.20 ,
                  blue_lorry           2.20 ,
                  red_lorry            2.60 / ;


* Assembly costs
Parameter CBUY[ITEMS] / wheel      0.30 , steel_bar          1     , bumper       0.2  ,
                        chassis    0.8  , cabin              2.75  , door_window  0.1  ,
                        windscreen 0.29 , assembled_chassis 30     , container    2.60 ,
                        tank       3    , assembled_cabin    3     , blue_motor   1.65 ,
                        red_motor  1.65 , headlight          0.15  , axle        12.75  / ;


* Purchase costs
Parameter REQ[ITEMS,ITEMS1] ;
    REQ['axle'             ,'wheel'            ] = 2 ;
    REQ['axle'             ,'steel_bar'        ] = 1 ;
    REQ['assembled_chassis','bumper'           ] = 2 ;
    REQ['assembled_chassis','axle'             ] = 2 ;
    REQ['assembled_chassis','chassis'          ] = 1 ;
    REQ['assembled_cabin'  ,'cabin'            ] = 1 ;
    REQ['assembled_cabin'  ,'door_window'      ] = 2 ;
    REQ['assembled_cabin'  ,'windscreen'       ] = 1 ;
    REQ['blue_lorry'       ,'assembled_chassis'] = 1 ;
    REQ['blue_lorry'       ,'container'        ] = 1 ;
    REQ['blue_lorry'       ,'assembled_cabin'  ] = 1 ;
    REQ['blue_lorry'       ,'blue_motor'       ] = 1 ;
    REQ['blue_lorry'       ,'headlight'        ] = 2 ;
    REQ['red_lorry'        ,'assembled_chassis'] = 1 ;
    REQ['red_lorry'        ,'tank'             ] = 1 ;
    REQ['red_lorry'        ,'assembled_cabin'  ] = 1 ;
    REQ['red_lorry'        ,'red_motor'        ] = 1 ;
    REQ['red_lorry'        ,'headlight'        ] = 2 ;
* Items req. for assembling a product


Integer Variable  produce[ITEMS] ,
* Quantity of items produced
                 buy[ITEMS]   ;
* Quantity of items bought

Variable Cost ;

Equation Eq_1(ITEMS) ,
         Def_obj       ;

* Assembly balance
Eq_1(ITEMS)$PREPROD(ITEMS)..
    buy[ITEMS] + produce[ITEMS]$ASMBL(ITEMS) =g=
    Sum{ITEMS1$ASMBL(ITEMS1),REQ[ITEMS1,ITEMS]*produce[ITEMS1]} ;

* Objective: total costs
Def_obj..
    Cost =e= Sum{ITEMS$PREPROD(ITEMS), CBUY[ITEMS]*buy[ITEMS] } +
             Sum{ITEMS$ASMBL(ITEMS), CPROD[ITEMS]*produce[ITEMS]} ;

* Limits on assembly capacity
produce.up[ITEMS]$ASMBL(ITEMS) = CAP[ITEMS] ;
* Satisfy demands
produce.lo[ITEMS] = 0 ;
produce.lo[ITEMS]$FINAL(ITEMS) = DEM[ITEMS] ;
Buy.lo[ITEMS] = 0 ;
Buy.up[ITEMS] = 20000 ;

* Original XPress Solution cost = 238365

*  Buy.fx['wheel']             =  1200 ;
*  Buy.fx['steel_bar']         =   600 ;
*  Buy.fx['bumper']            =   600 ;
*  Buy.fx['axle']              =     0 ;
*  Buy.fx['chassis']           =   300 ;
*  Buy.fx['cabin']             =     0 ;
*  Buy.fx['door_window']       =     0 ;
*  Buy.fx['windscreen']        =     0 ;
*  Buy.fx['assembled_chassis'] =  5700 ;
*  Buy.fx['container']         =  3000 ;
*  Buy.fx['assembled_cabin']   =  6000 ;
*  Buy.fx['blue_motor']        =  3000 ;
*  Buy.fx['headlight']         = 12000 ;
*  Buy.fx['tank']              =  3000 ;
*  Buy.fx['red_motor']         =  3000 ;

*Produce.fx['axle'             ] =   600 ;
*Produce.fx['assembled_chassis'] =   300 ;
*Produce.fx['assembled_cabin'  ] =     0 ;
*Produce.fx['blue_lorry'       ] =  3000 ;
*Produce.fx['red_lorry'        ] =  3000 ;

* Solve the problem
Model C_3_Toy_production / all / ;

Solve C_3_Toy_production using mip minimazing Cost ;

Display Cost.l ;














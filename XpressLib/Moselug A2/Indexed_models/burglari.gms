*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file burglari.mos
*   `````````````````
*   Use of index sets.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke, rev. 2006
*******************************************************
*
* model "Burglar (index set)"

Set ITEMS / camera  , necklace , vase  ,
            picture , tv       , video ,
            chest   , brick / ;
* Index set for items

Scalar WTMAX / 102 / ;
* Maximum weight allowed

Parameter VALUE[ITEMS] ;
* Value of items
Parameter WEIGHT[ITEMS] ;
* Weight of items

 VALUE['camera']   = 15 ;  WEIGHT['camera']   =  2 ;
 VALUE['necklace'] =100 ;  WEIGHT['necklace'] = 20 ;
 VALUE['vase']     = 90 ;  WEIGHT['vase']     = 20 ;
 VALUE['picture']  = 60 ;  WEIGHT['picture']  = 30 ;
 VALUE['tv']       = 40 ;  WEIGHT['tv']       = 40 ;
 VALUE['video']    = 15 ;  WEIGHT['video']    = 30 ;
 VALUE['chest']    = 10 ;  WEIGHT['chest']    = 60 ;
 VALUE['brick']    =  1 ;  WEIGHT['brick']    = 10 ;

Binary Variable take[ITEMS] ;
       Variable MaxVal      ;

Equation Weight_restriction , Def_obj ;

Weight_restriction..
    Sum{ITEMS, WEIGHT[ITEMS]*take[ITEMS]} =l= WTMAX ;

* Objective: maximize total value
Def_obj..
    MaxVal =e= Sum{ITEMS, VALUE[ITEMS]*take[ITEMS] } ;

Model burglari / all / ;
* Solve the MIP-problem
Solve burglari using mip maximazing MaxVal ;

Display MaxVal.l ;
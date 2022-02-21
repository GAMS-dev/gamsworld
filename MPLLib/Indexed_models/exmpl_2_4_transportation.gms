*MPL Model Library MPL Model Library
*Transportation,  Example 2.4,  Murty
*   {  Exmpl2.4_Transportation.mpl  }
*   {  Murty, Operations Research, Deterministic Optimization Models  }
*   {  Chapter 2,  Example 2.4,  Transportation,  Size: 5x6,  Page 33  }

* TITLE  Transportation;

Set mine  / m1*m2 / ;
Set plant / p1*p3 / ;

Parameter Availability[mine] / m1 800 , m2 300 / ;
Parameter Requirement[plant] / p1 400 , p2 500 , p3 200 / ;
Table ShipCost[mine,plant]
                    p1  p2  p3
               m1   11   8   2
               m2    7   5   4   ;

Variables  Ship[mine,plant] ,
           TotalCost        ;

Equation  OreLimit(mine) ,
          OreReq(plant)  ,
          Def_obj        ;

OreLimit(mine)..
        Sum{plant, Ship[mine,plant]} =l=  Availability[mine];

OreReq(plant)..
        Sum{mine, Ship[mine,plant]}  =g=  Requirement[plant];

Def_obj..
    TotalCost =e= Sum{(mine,plant),ShipCost[mine, plant] * Ship[mine, plant] } ;

 Ship.lo[mine,plant] = 0 ;

* MPL model solution
*Ship.fx['m1','p1']      =  100.0000 ;
*Ship.fx['m1','p2']      =  500.0000 ;
*Ship.fx['m1','p3']      =  200.0000 ;
*Ship.fx['m2','p1']      =  300.0000 ;
*Ship.fx['m2','p2']      =    0.0000 ;
*Ship.fx['m2','p3']      =    0.0000 ;

Model m2_4_Transportation / all / ;

Solve m2_4_Transportation using lp minimazing TotalCost ;

Display TotalCost.l ;
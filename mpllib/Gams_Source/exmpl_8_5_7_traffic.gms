* MPL Model Library MPL Model Library
* Traffic, Example 7, Winston
*    {  Exmpl8.5_7Traffic.mpl  }
*    {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*    {  Chapter 8.5,  Example 7, Minimum Cost Flow,  Size: 5x9,  Page 452 }

* TITLE Traffic;

Set node  / n1*n6 / ;

Alias(node,node2) ;

Scalar Cars / 900 / ;

Parameter PathCapacity[node,node2] ; PathCapacity[node,node2] = 0 ;

        PathCapacity['n1','n2'] = 800 ;
        PathCapacity['n1','n3'] = 600 ;
        PathCapacity['n2','n5'] = 100 ;
        PathCapacity['n2','n4'] = 600 ;
        PathCapacity['n5','n6'] = 600 ;
        PathCapacity['n4','n5'] = 600 ;
        PathCapacity['n4','n6'] = 400 ;
        PathCapacity['n3','n5'] = 400 ;
        PathCapacity['n3','n4'] = 300 ;

Parameter TravelTime[node,node2] ; TravelTime[node,node2] = 0 ;
        TravelTime['n1','n2'] = 10 ;
        TravelTime['n1','n3'] = 50 ;
        TravelTime['n2','n5'] = 70 ;
        TravelTime['n2','n4'] = 30 ;
        TravelTime['n5','n6'] = 30 ;
        TravelTime['n4','n5'] = 30 ;
        TravelTime['n4','n6'] = 60 ;
        TravelTime['n3','n5'] = 60 ;
        TravelTime['n3','n4'] = 10 ;

Set links(node,node2) ;
    links(node,node2) = Yes$(TravelTime[node,node2]>0) ;

Variable CarNumber[node,node2] , TotalTime ;

Equation  StartFlow(node) , TransFlow(node) , FinishFlow(node) , Def_obj ;

StartFlow(node)$(ord(node) eq 1)..
         Sum(node2$links(node,node2), CarNumber[node,node2]) =e= Cars;

TransFlow(node)$((ord(node) gt 1)and (ord(node) lt card(node) ) )..
         Sum(node2$links(node,node2), CarNumber[node,node2]) =e=
         Sum(node2$links(node2,node), CarNumber[node2,node]) ;

FinishFlow(node)$(ord(node) eq card(node))..
         Sum(node2$links(node2,node), CarNumber[node2,node])  =e= Cars;

Def_obj..
    TotalTime =e= Sum{(node,node2)$links(node,node2),
                                  CarNumber[node,node2]*TravelTime[node,node2]};

CarNumber.lo[node,node2] = 0 ;
CarNumber.up[node,node2] = PathCapacity[node,node2];

* MPL model solution
* CarNumber.fx['n1','n2']  =      700.0 ;
* CarNumber.fx['n1','n3']  =      200.0 ;
* CarNumber.fx['n2','n4']  =      600.0 ;
* CarNumber.fx['n2','n5']  =      100.0 ;
* CarNumber.fx['n3','n4']  =      200.0 ;
* CarNumber.fx['n3','n5']  =        0.0 ;
* CarNumber.fx['n4','n5']  =      400.0 ;
* CarNumber.fx['n4','n6']  =      400.0 ;
* CarNumber.fx['n5','n6']  =      500.0 ;



Model m8_5_7Traffic / all / ;

Solve m8_5_7Traffic using lp minimazing TotalTime ;

Display TotalTime.l ;
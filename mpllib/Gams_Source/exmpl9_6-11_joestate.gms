* MPL Model Library MPL Model Library
* JoeState, Example 11, Winston
*   {  Exmpl9.6-11_JoeState.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.3,  Example 11,  Travelling Salesman (MIP),  Size: 5x6,  Page 530  }

* TITLE JoeState;

Set city / s1*s5 / ;

Alias(city,city2) ;

Table Distance[city,city2]
              s1    s2    s3    s4    s5
      s1       0   132   217   164    58
      s2     132     0   290   201    79
      s3     217   290     0   113   303
      s4     164   201   113     0   196
      s5      58    79   303   196     0  ;

Set Links(city,city2) ;   Links(city,city2) = Yes$(Distance[city,city2]>0) ;

Parameter NumCity ; NumCity = card(city) ;

Binary Variable
    Route[city,city2] ;

Variable Pn[city]      ,
         TotalDistance ;

Equation VisitOnceA1(city)       ,
         VisitOnceA2(city2)      ,
         PrevSubTour(city,city2) ,
         Def_obj                  ;

VisitOnceA1(city)..
*-> VOA:
    Sum{city2$(ord(city2) ne ord(city)), Route[city,city2]} =e= 1 ;
VisitOnceA2[city2]..
*-> VOA:
    Sum{city$(ord(city2) ne ord(city)) , Route[city,city2]} =e= 1 ;

PrevSubTour(city,city2)$((ord(city2) ne 1)and(ord(city2) ne ord(city)))..
*-> PST:
    Pn[city] - Pn[city2] + NumCity * Route[city,city2] =l= NumCity - 1 ;

Def_obj..
    TotalDistance =e= Sum{(city,city2)$Links(city,city2),Route[city,city2] *
                                                        Distance[city,city2] } ;

Pn.lo[city] = 1        ;
Pn.up[city] = NumCity  ;


* MPL  model solution
*Pn.fx['s1']  =   1.0    ;
*Pn.fx['s2']  =   3.0    ;
*Pn.fx['s3']  =   5.0    ;
*Pn.fx['s4']  =   4.0    ;
*Pn.fx['s5']  =   2.0    ;

Model m9_6_11_JoeState / all / ;

Solve m9_6_11_JoeState using mip minimazing TotalDistance ;

Display TotalDistance.l ;
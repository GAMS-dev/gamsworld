Set Road / a , b , c , d , e , f , g /;
Alias(Road,Road1);
Set Link(Road,Road1)   / a.b , a.c ,
                         b.d , b.e ,
                         c.d , c.f ,
                         d.e , d.f ,
                         e.g , f.g /    ;

Parameter   cap[Road,Road1] ;
* capacities of roads
         cap['a','b'] =   50 ;    cap['a','c'] = 100 ;
         cap['b','d'] =   40 ;    cap['b','e'] =  20 ;
         cap['c','d'] =   60 ;    cap['c','f'] =  20 ;
         cap['d','e'] =   50 ;    cap['d','f'] =  60 ;
         cap['e','g'] =   70 ;    cap['f','g'] =  70 ;

Variable Traff[Road,Road1] , Entering_Traff ;
* Traff[] -> traffic loads

Equation Balance , Def_obj ;

Balance(ROAD)$((ord(ROAD) ne 1) and (ord(ROAD) ne card(ROAD)))..
                  sum{ROAD1$Link(Road1,Road),Traff[ROAD1,ROAD]} =e=
                  sum{ROAD1$Link(Road,Road1),Traff[ROAD,ROAD1]};

Def_obj..        Entering_Traff =e= sum {ROAD, Traff['a',ROAD]};

Traff.lo[Road,Road1] =  0.0;
Traff.up[Road,Road1] =  cap[Road,Road1];

Model netmax /all/;

Solve netmax using nlp maximazing Entering_Traff ;

Display Entering_Traff.l ;



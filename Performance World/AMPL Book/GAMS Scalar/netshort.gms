Set Road / a , b , c , d , e , f , g /;
Alias(Road,Road1);
Set Link(Road,Road1)   / a.b , a.c ,
                         b.d , b.e ,
                         c.d , c.f ,
                         d.e , d.f ,
                         e.g , f.g /    ;

Parameter   Time[Road,Road1] ;
* capacities of roads
        time['a','b'] =   50 ;   time['a','c'] = 100 ;
        time['b','d'] =   40 ;   time['b','e'] =  20 ;
        time['c','d'] =   60 ;   time['c','f'] =  20 ;
        time['d','e'] =   50 ;   time['d','f'] =  60 ;
        time['e','g'] =   70 ;   time['f','g'] =  70 ;
* times to travel roads

* 1 iff (i,j) in shortest path

Variable use[Road,Road1] , Total_Time ;
* Traff[] -> traffic loads

Equation Balance(ROAD) , Eq_Start(Road) , Def_obj ;

Eq_Start(Road)$(ord(Road) eq 1)..
             sum{ROAD1$Link(Road,Road1), Use[Road,Road1]}  =e= 1 ;

Balance(ROAD)$((ord(ROAD) ne 1) and (ord(ROAD) ne card(ROAD)))..
                  sum{ROAD1$Link(Road1,Road),Use[ROAD1,ROAD]} =e=
                  sum{ROAD1$Link(Road,Road1),Use[ROAD,ROAD1]};

Def_obj..  Total_Time =e= sum{(ROAD,ROAD1),time[Road,Road1]*Use[Road,Road1]};

Use.lo[Road,Road1] = 0 ;
Model netshot /all/;

Solve netshot using nlp minimazing Total_Time ;

Display Total_Time.l ;


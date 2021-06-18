*MPL Model Library MPL Model Library
*FlyByNight, Example 4, Winston
*    {  Exmpl8.3_4FlyByNight.mpl  }
*    {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*    {  Chapter 8.3,  Example 4, Maximum Flow,  Size: 5x6,  Page 421 }

* TITLE FlyByNight;

Set city  / Juneau , Seattle , Denver , LosAngeles , Dallas / ;

Alias(city,city2);

Parameter  MaxFlights[city,city2] ; MaxFlights[city,city2] = 0 ;

        MaxFlights['Juneau',    'Seattle'   ]=3;
        MaxFlights['Seattle',   'LosAngeles']=2;
        MaxFlights['Seattle',   'Denver'    ]=3;
        MaxFlights['LosAngeles','Dallas'    ]=1;
        MaxFlights['Denver',    'Dallas'    ]=2;
        MaxFlights['Dallas',    'Juneau'    ]=9;

Set links(city,city2) ;
    links(city,city2) = Yes$(MaxFlights[city,city2]>0) ;

Variable Flights[city,city2] , NumberOfFlights ;

Equation FlowBalance(city) , Def_obj ;

FlowBalance(city)..
 Sum{city2$links(city,city2),Flights[city,city2]} =e=
                              Sum{city2$links(city2,city),Flights[city2,city]} ;


Def_obj..
NumberOfFlights =e= Sum{(city,city2)$((ord(city2) eq card(city2))and
                                      (links(city,city2))   ),
                                                         Flights[city,city2] } ;
Flights.lo[city,city2] = 0 ;
Flights.up[city,city2] = MaxFlights[city,city2] ;


* MPL model solution 
*   Flights.fx['Juneau'    ,'Seattle']        =    3.0000  ;
*   Flights.fx['Seattle'   ,'Denver']         =    2.0000  ;
*   Flights.fx['Seattle'   ,'LosAngeles']     =    1.0000  ;
*   Flights.fx['Denver'    ,'Dallas']         =    2.0000  ;
*   Flights.fx['LosAngeles','Dallas']         =    1.0000  ;
*   Flights.fx['Dallas'    ,'Juneau']         =    3.0000  ;



Model m8_3_4FlyByNight / all / ;

Solve m8_3_4FlyByNight using lp maximazing NumberOfFlights ;

Display NumberOfFlights.l ;
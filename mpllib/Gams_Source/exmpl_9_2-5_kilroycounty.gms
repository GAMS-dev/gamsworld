* MPL Model Library MPL Model Library
* KilroyCounty, Example 5, Winston
*   {  Exmpl9.2-5_KilroyCounty.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.2,  Example 5,  Set Covering (MIP),  Size: 6x6,  Page 486  }

* TITLE  KilroyCounty;

Set city / c1*c6 /;

Alias(city,city2);


Table TravelTime[city,city2]
                c1   c2   c3   c4    c5    c6
           c1    0   10   20   30    30    20
           c2   10    0   25   35    20    10
           c3   20   25    0   15    30    20
           c4   30   35   15    0    15    25
           c5   30   20   30   15     0    14
           c6   20   10   20   25    14     0   ;

Scalar MaxTimeDiff / 15 / ;

Binary Variable Build[city];
       Variable FireStations ;

Equation Within15Minutes(city) , Def_obj ;

Within15Minutes(city)..
*-> WMIN:
    Sum{city2$(TravelTime[city,city2] le MaxTimeDiff),Build[city2]} =g= 1 ;

Def_obj..
    FireStations =e= Sum{city, Build[city]};

* MPL model solution
*Build.fx['c1'] = 0 ;
*Build.fx['c2'] = 1 ;
*Build.fx['c3'] = 0 ;
*Build.fx['c4'] = 1 ;
*Build.fx['c5'] = 0 ;
*Build.fx['c6'] = 0 ;

Model m9_2_5_KilroyCounty / all / ;

Solve m9_2_5_KilroyCounty using mip minimazing FireStations ;

Display FireStations.l ;
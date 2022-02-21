*MPL Model Library MPL Model Library
*Metro Water, Example 8.1-3, Hillier and Lieberman
*   {  Exmpl_8.1-3_MetroWater.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 8.1,  Example 3, Transportation, Size 9x20 , Page 362  }
* TITLE MetroWater;

Set river / Colombo , Sacron , Calorie , Dummy / ;
Set city  / Berdoo_min , Berdoo_extra , LosDevils , SanGo , Hollyglass / ;

Scalar M / 999 / ;
Table  DistCost[river,city]
             Berdoo_min Berdoo_extra LosDevils SanGo Hollyglass
Colombo              16           16        13    22         17
Sacron               14           14        13    19         15
Calorie              19           19        20    23        999
Dummy               999            0       999     0          0 ;

Parameter Supply[river] / Colombo 50 ,
                          Sacron  60 ,
                          Calorie 50 ,
                          Dummy   50  / ;

Parameter Demand[city]  / Berdoo_min   30 ,
                          Berdoo_extra 20 ,
                          LosDevils    70 ,
                          SanGo        30 ,
                          Hollyglass   60  / ;

Variable Distribute[river, city] , TotalCost ;
*-> dstb;

Equation Source(river) , Destination(city) , Def_obj ;

Source(river)..     SUM{city , Distribute[river, city]} =e= Supply[river];

Destination(city).. SUM{river, Distribute[river, city]} =e= Demand[city];

Def_obj..
      TotalCost =e= SUM{(river, city), 10000000 * DistCost[river,city] *
                                                  Distribute[river, city]};
Distribute.lo[river, city] = 0 ;

Model m8_1_3_MetroWater / all / ;

Solve m8_1_3_MetroWater using nlp minimazing TotalCost ;

Display TotalCost.l ;


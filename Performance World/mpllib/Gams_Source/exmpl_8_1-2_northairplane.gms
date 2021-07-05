*MPL Model Library MPL Model Library
*Northern Airplane, Example 8.1-2, Hillier and Lieberman
*   {  Exmpl_8.1-2_NorthAirplane.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 8.1,  Example 2, Transportation, Size 9x20, Page 359  }
* TITLE  NorthernAirplane;

Set produce / p1*P4 / ;
Set install / i1*i5 / ;

Scalar M / 999 / ;

Table
   DistCost[produce,install]
                              i1     i2     i3     i4    i5
                    p1      1.080  1.095  1.110  1.125    0
                    p2      999    1.110  1.125  1.140    0
                    p3      999    999    1.100  1.115    0
                    p4      999    999    999    1.130    0  ;

Parameter Supply[produce] / p1 25 , p2 35 , p3 30 , p4 10 / ;
Parameter Demand[install] / i1 10 , i2 15 , i3 25 , i4 20 , i5 30 / ;

Variable
          Engines[produce,install] ,
*-> Eng;
          TotalCost                 ;
Equation  Production(produce) , Installations(install) , Def_obj ;

Production(produce)..
            SUM{install, Engines[produce,install]} =e= Supply[produce];
Installations(install)..
            SUM{produce, Engines[produce,install]} =e= Demand[install];
Def_obj..
            TotalCost =e= SUM((produce,install),DistCost[produce,install] *
                                                Engines[produce,install]);
Engines.lo[produce,install] = 0 ;

Model m8_1_2_NorthAirplane / all / ;

Solve m8_1_2_NorthAirplane using nlp minimazing TotalCost ;

Display TotalCost.l ;

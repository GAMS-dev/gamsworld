* MPL Model Library MPL Model Library
* JCNickles, Example 4, Winston
*   {  Exmpl9.2-4_JCNickles.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.2,  Example 4,  Lockbox (MIP),  Size: 5x6,  Page 483  }

* TITLE  JCNickles;

Set region / West , Midwest , East , South   / ;
Set   city / LA   , Chicago , NYC  , Atlanta / ;

Scalar AnnualCost / 50000 / ;

Parameter Payment[region] / West 7 , Midwest 5 , East 6 , South 4 / ;
          Payment[region] =10000 * Payment[region];

Table PaymentTime[region,city]
               LA    Chicago  NYC   Atlanta
    West        2       6      8       8
    Midwest     6       2      5       5
    East        8       5      2       5
    South       8       5      5       2      ;

Scalar AnnualInterest / 0.20 / ;

Parameter AnnualLostInterest[region,city] ;
          AnnualLostInterest[region,city] = AnnualInterest          *
                                            Payment[region]         *
                                            PaymentTime[region,city]  ;
Binary Variables  Operate[city]     ,
                  Send[region,city] ;
       Variables  TotalCost         ;

Equation SingleCityPayment(region) , OperateLockBox(region,city) , Def_obj ;

SingleCityPayment(region)..
*-> SCP:
        Sum{city, Send[region,city]} =e= 1 ;

OperateLockBox(region,city)..
*-> OLB:
Send[region,city] =l= Operate[city];

Def_obj..
    TotalCost =e= Sum{(region,city), Send[region,city] *
                                     AnnualLostInterest[region,city]} +
                  Sum{        city , Operate[city]     *
                                     AnnualCost                     }  ;


* MPL model solution
*Send.fx['West'    ,'LA']          =    1.0000 ;
*Send.fx['West'    ,'Chicago']     =    0.0000 ;
*Send.fx['West'    ,'NYC']         =    0.0000 ;
*Send.fx['West'    ,'Atlanta']     =    0.0000 ;
*Send.fx['Midwest' ,'LA']          =    0.0000 ;
*Send.fx['Midwest' ,'Chicago']     =    0.0000 ;
*Send.fx['Midwest' ,'NYC']         =    1.0000 ;
*Send.fx['Midwest' ,'Atlanta']     =    0.0000 ;
*Send.fx['East'    ,'LA']          =    0.0000 ;
*Send.fx['East'    ,'Chicago']     =    0.0000 ;
*Send.fx['East'    ,'NYC']         =    1.0000 ;
*Send.fx['East'    ,'Atlanta']     =    0.0000 ;
*Send.fx['South'   ,'LA']          =    0.0000 ;
*Send.fx['South'   ,'Chicago']     =    0.0000 ;
*Send.fx['South'   ,'NYC']         =    1.0000 ;
*Send.fx['South'   ,'Atlanta']     =    0.0000 ;








Model m9_2_4_JCNickles / all / ;

Solve m9_2_4_JCNickles using mip minimazing TotalCost ;

Display TotalCost.l ;











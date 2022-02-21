* MPL Model Library MPL Model Library
* DorianAutoMedia, Example 8, Winston
*   {  Exmpl9.2-8_DorianAutoMedia.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.2,  Example 8, Piecewise Linear (MIP),  Size: 5x6,  Page 494  }

* TITLE DorianAutoMedia;

Set mag     / jocks , family / ;
Set adlevel / a1*a3 / ;

Table Exposure[mag,adlevel]

                  a1   a2   a3
     jocks       10.0  3.0  2.5
     family       8.0  6.0  2.0   ;

          Exposure[mag,adlevel] = Exposure[mag,adlevel] * 1000 ;

Table AdsInLevel[mag,adlevel]
                  a1   a2   a3
     jocks         6    4    5
     family        4    8    3    ;

Scalar Budget / 20000 / ;
Scalar AdCost /  1000 / ;

Integer Variables Advertise[mag,adlevel];
        Variables TotalExposure ;

Equation BudgetLimit ,
         Def_obj      ;

BudgetLimit..
*-> BUDL:
     Sum{(mag,adlevel), Advertise[mag,adlevel] * AdCost} =l= Budget;

Def_obj..
     TotalExposure =e= Sum{(mag,adlevel), Advertise[mag,adlevel] *
                                               Exposure[mag,adlevel]   } ;

Advertise.up[mag,adlevel] = AdsInLevel[mag,adlevel];

* MPL model solution
*Advertise.fx['jocks','a1']      =   6.0000  ;
*Advertise.fx['jocks','a2']      =   2.0000  ;
*Advertise.fx['jocks','a3']      =   0.0000  ;
*Advertise.fx['family','a1']     =   4.0000  ;
*Advertise.fx['family','a2']     =   8.0000  ;
*Advertise.fx['family','a3']     =   0.0000  ;


Model m9_2_8_DorianAutoMedia / all / ;

Solve m9_2_8_DorianAutoMedia using mip maximazing TotalExposure ;

Display TotalExposure.l ;
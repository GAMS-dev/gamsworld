*MPL Model Library MPL Model Library
*Calif. Manufacturing, Example 12.1-1, Hillier and Lieberman
*   {  Exmpl12.1-1_CalifManf.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 12.1,  Example 1, Facility Location, Size 4x4, Page 577  }

*TITLE   CalifManufactCo;

Set location / WLA , FLA , WSF , FSF / ;

Parameter NPV[location]     / WLA 6 , FLA 9 , WSF 4 , FSF 5 / ;
*In millions
Parameter Capital[location] / WLA 5 , FLA 6 , WSF 2 , FSF 3 / ;
*In millions

Binary Variable x[location];

Variable TotalNPV ;

Equation Budget , Warehouse , Cnt(location) , Def_obj ;

Budget..    Sum{location, Capital[location] * x[location]} =l= 10 ;

Warehouse.. Sum{location$(ord(location) lt card(location)),x[location] } =l= 1 ;

Cnt(location)$(ord(location) gt 1).. -1*x[location] + x[location+2] =l= 0 ;

Def_obj..  TotalNPV =e= Sum{location, NPV[location] * x[location] } ;

* MPL solutions:

x.fx['WLA'] = 0 ;
x.fx['FLA'] = 1 ;
x.fx['WSF'] = 0 ;
x.fx['FSF'] = 1 ;


Model m12_1_1_CalifManf / all / ;

Solve m12_1_1_CalifManf using mip maximazing TotalNPV ;

Display TotalNPV.l ;
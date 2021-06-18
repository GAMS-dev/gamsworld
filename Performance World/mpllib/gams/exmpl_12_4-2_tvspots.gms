*MPL Model Library MPL Model Library
*TV Spots, Example 12.4-2a, Hillier and Lieberman
*   {  Exmpl12.4-2_TVSpots.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 12.4,  Example 2a, Marketing, Size 4x9, Page 594  }

* TITLE TVSpots;

Set product / p1*p3 / ;
Set spots   / s0*s3 / ;

Table Profit[spots, product]
                      p1   p2   p3
             s0       0    0    0
             s1       1    0   -1
             s2       3    2    2
             s3       3    3    4  ;

Set J(spots) / s1 , s2 , s3 / ;

Binary Variable
   y[spots,product];
*Equals 1 if product i fills j spots

Variable TotProfit ;

Equation NumProd(product) , NumSpots , Def_obj ;

NumProd(product)..
        Sum{spots$J(spots),y[spots,product]} =l= 1 ;

NumSpots..
        Sum{(product, spots)$J(spots),(ord(spots)-1)*y[spots,product]} =e= 5 ;

Def_obj..
        TotProfit =e= Sum{(product,spots),Profit[spots, product] *
                                          y[spots,product]        } ;

* MPL solution
*y.fx[spots,product] = 0 ;
*y.fx['s2','p1']     = 1 ;
*y.fx['s3','p3']     = 1 ;

Model m12_4_2_TVSpots / all / ;

Solve m12_4_2_TVSpots using mip maximazing TotProfit ;

Display TotProfit.l ;
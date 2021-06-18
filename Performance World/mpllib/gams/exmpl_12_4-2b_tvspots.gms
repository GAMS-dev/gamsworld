*MPL Model Library MPL Model Library
*TV Spots, Example 12.4-2b, Hillier and Lieberman
*   {  Exmpl12.4-2b_TVSpots.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 12.4,  Example 2b, Marketing, Size 7x9, Page 595  }

* TITLE TVSpots ;

Set spots          / s0*s3 / ;

Alias (spots,spots1) ;

Set product(spots) / s1*s3 / ;
Set J(spots)       / s2 , s3 / ;
Set spots_more_zero(spots) / s1 ,  s2 , s3 / ;

Table Slope[spots1, spots]
                    s0  s1  s2  s3
            s1       0   1   2   0
            s2       0   0   2   1
            s3       0  -1   3   2  ;

Binary Variable
   y[spots1,spots];

Variable TotProfit ;

Equation Cnst(spots1,spots) , Tot , Def_obj ;

Cnst(spots1,spots)$(J(spots)and product(spots1))..
          y[spots1,spots] - y[spots1, spots-1] =l= 0 ;

Tot..
          Sum{(spots1,spots)$(product(spots1) and(ord(spots) gt 1)),
                                                      y[spots1,spots]} =e= 5 ;

Def_obj..
          TotProfit =e= Sum{(spots1,spots)$product(spots1),Slope[spots1,spots] *
                                                               y[spots1,spots]        } ;

y.fx[spots1,spots]$(ord(spots) eq 1) = 0 ;

* MPL solution
*y.fx['s1','s1'] = 1 ;
*y.fx['s1','s2'] = 1 ;
*y.fx['s1','s3'] = 0 ;
*y.fx['s2','s1'] = 0 ;
*y.fx['s2','s2'] = 0 ;
*y.fx['s2','s3'] = 0 ;
*y.fx['s3','s1'] = 1 ;
*y.fx['s3','s2'] = 1 ;
*y.fx['s3','s3'] = 1 ;

Model m12_4_2b_TVSpots / all / ;

Solve m12_4_2b_TVSpots using mip maximazing TotProfit ;

Display TotProfit.l ;
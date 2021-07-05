* MPL Model Library MPL Model Library
* Product-Mix,  Example 1.2-1,  H.P. Williams
*    {  Exmpl1.2-1_ProdMix.mpl  }
*    {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*    {  Chapter 1.2,  Example 1,  Product-Mix,  Size: 3x5,  Page 5  }

* TITLE EngineeringFactory;

Set product / p1*p5 / ;
Set process / Grinding , Drilling / ;

Parameter Profit[product] / p1 550 , p2 600 , p3 350 , p4 400 , p5 200 / ;
Parameter Machines[process] / Grinding 3 , Drilling 2 / ;

Table ProcessHours[process,product]
                      p1  p2  p3  p4  p5
      Drilling        12  20   0  25  15
      Grinding        10   8  16   0   0 ;
Set Exist(process,product) ;
    Exist(process,product) = Yes$(ProcessHours[process,product] > 0) ;

Scalar AssemblyTime        / 20 / ;
Scalar DaysPerWeek         /  6 / ;
Scalar HoursPerShift       /  8 / ;
Scalar Workers             /  8 / ;

Scalar HoursPerDay    ;
       HoursPerDay = 2*HoursPerShift;
Scalar WorkHoursAvail ;
       WorkHoursAvail =  Workers * DaysPerWeek * HoursPerShift;

Parameter MachHoursAvail[process] ;
          MachHoursAvail[process] = Machines[process] *DaysPerWeek *HoursPerDay;

Variables Produce[product] ,
*-> Prod;
          TotalProfit      ;

Equation ProcessLimit(process) ,
         WorkLimit             ,
         Def_obj               ;

ProcessLimit(process)..
*-> Proc:
       Sum{product$Exist(process,product),ProcessHours[process,product] * Produce[product]}
                                                    =l= MachHoursAvail[process];

WorkLimit..
       Sum{product,AssemblyTime * Produce[product]} =l= WorkHoursAvail;

Def_obj..
    TotalProfit =e= Sum{product, Profit[product] * Produce[product] } ;

Produce.lo[product] = 0.0 ;

* MPL  model solution
*Produce.fx['p1']  =  12.0 ;
*Produce.fx['p2']  =   7.2 ;
*Produce.fx['p3']  =   0.0 ;
*Produce.fx['p4']  =   0.0 ;
*Produce.fx['p5']  =   0.0 ;
* TotalProfit = 10920;

* GAMS  model solution
*Produce.fx['p1']  =  16.0 ;
*Produce.fx['p2']  =   0.0 ;
*Produce.fx['p3']  =   3.2 ;
*Produce.fx['p4']  =   0.0 ;
*Produce.fx['p5']  =   0.0 ;
* TotalProfit = 9920;


Model m1_2_1_ProdMix / all / ;

Solve m1_2_1_ProdMix using lp maximazing TotalProfit ;

Display TotalProfit.l ;

Parameter A[process] , B ;

A[process] = 0.000001+
MachHoursAvail[process] - Sum{product$Exist(process,product),
                              ProcessHours[process,product] * Produce.l[product]}                                                     ;
B =
WorkHoursAvail - Sum{product,AssemblyTime * Produce.l[product]}  ;

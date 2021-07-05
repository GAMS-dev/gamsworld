*MPL Model Library MPL Model Library
*Multi-Plant Planning,  Example 4.1-1,  H.P.Williams
*   {  Exmpl4.1-1_MultPlant.mpl  }
*   {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*   {  Chapter 4.1,  Example 1,  Production Planning,  Size: 5x4,  Page 34  }

* TITLE  MultiPlantPlanning;

Set factory  / A , B / ;
Set product  / Standard , Deluxe /
*-> (Std, Dlx);
Set process  / Grinding , Polishing / ;

Parameter Profit[product] / Standard 10 , Deluxe 15 / ;

Table ProcessCapacity[factory,process]
        Grinding  Polishing
   A       80        60
   B       60        75     ;

Parameter ProcessTime[process,factory,product] ;
Table first[process, factory]
                     A  B
       Grinding      4  5
       Polishing     2  5   ;

Table Second[process, factory]
                     A  B
       Grinding      2  3
       Polishing     5  6   ;


ProcessTime[process,factory,'Standard'] =  first[process,factory] ;
ProcessTime[process,factory,'Deluxe']   = second[process,factory] ;

Scalar RawUse   /   4 / ;
Scalar RawAvail / 120 / ;

Variables  Produce[factory,product] ,
*-> Prod;
           TotalProfit              ;

Equation RawLimit                      ,
         ProcessLimit(factory,process) ,
         Def_obj                       ;

RawLimit..
       Sum{(factory, product), RawUse * Produce[factory,product]}  =l=  RawAvail;

ProcessLimit(factory,process)..
   Sum{product,ProcessTime[process,factory,product] *
               Produce[factory,product]} =l=  ProcessCapacity[factory,process] ;

Def_obj..
   TotalProfit =e= Sum{(factory, product), Profit[product] *
                                            Produce[factory,product] };
Produce.lo[factory,product] = 0 ;

* MPL model solution
*Produce.fx['A','Standard']     =     9.1667 ;
*Produce.fx['A','Deluxe']       =     8.3333 ;
*Produce.fx['B','Standard']     =     0.0000 ;
*Produce.fx['B','Deluxe']       =    12.5000 ;


Model m4_1_1_MultPlant / all / ;

Solve m4_1_1_MultPlant using lp maximazing TotalProfit ;

Display TotalProfit.l ;


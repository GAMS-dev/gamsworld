$ontext
GAMS - General Algebraic Modeling System AMPL Book Model Library

Copyright (c) 2019 GAMS Software GmbH <support@gams.com>
Copyright (c) 2019 GAMS Development Corp. <support@gams.com>
Copyright (c) 2019 Andre Savitsky <andresavit@yandex.ru>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
$offtext

Set Sities /NE , SE , BOS , EWR , BWI , ATL , MCO /;
Set D_CITY(Sities) / NE , SE /;
Set W_CITY(Sities) / BOS , EWR , BWI , ATL , MCO /;

Alias(Sities,Sities_1);

Set DW_LINKS(Sities,Sities_1) / NE.BOS , NE.EWR , NE.BWI ,
                                SE.EWR , SE.BWI , SE.ATL , SE.MCO /;
Parameter p_supply / 450 / ;
* amount available at plant

Parameter w_demand(Sities) /  BOS  90,  EWR 120,  BWI 120,  ATL  70,  MCO  50 /;
* amounts required at warehouses

Parameter  pd_cost / NE 2.5 ,  SE 3.5 /;
Parameter  pd_cap /  NE 250 ,  SE 250 / ;

Parameter dw_cost(sities,sities_1) /  NE.BOS   1.7 ,  NE.EWR     0.7 ,
                                      NE.BWI   1.3 ,  SE.EWR     1.3 ,
                                      SE.BWI   0.8 ,  SE.ATL     0.2 ,
                                      SE.MCO   2.1 /;

Parameter dw_cap(sities,sities_1)  /  NE.BOS   100 ,  NE.EWR     100 ,
                                      NE.BWI   100 ,  SE.EWR     100 ,
                                      SE.BWI   100 ,  SE.ATL     100 ,
                                      SE.MCO   100 /;

Positive Variables DW_Ship[Sities,Sities_1] , PD_Ship[Sities] ;
* packages to be shipped
Variables Total_Cost ;

Equation Eq_check , Eq_P_Bal , Eq_D_Bal(Sities) , Eq_W_Bal(Sities_1) , Def_obj ;

Eq_check.. p_supply =e= sum{Sities$W_CITY(Sities), w_demand[Sities]};

Eq_P_Bal..
  sum{Sities$D_CITY(Sities), PD_Ship[Sities]} =e= p_supply;

Eq_D_Bal(Sities)$D_CITY(Sities)..
                      PD_Ship[Sities] =e= sum{Sities_1$DW_LINKS(Sities,Sities_1),
                                                      DW_Ship[Sities,Sities_1]};

Eq_W_Bal(Sities_1)..
                      sum{Sities$DW_LINKS(Sities,Sities_1),
                               DW_Ship[Sities,Sities_1]} =e= w_demand[Sities_1];

Def_obj..
Total_Cost =e=  sum{Sities$D_CITY(Sities),
                                          pd_cost[Sities] * PD_Ship[Sities]} +
                sum{(Sities,Sities_1)$DW_LINKS(Sities,Sities_1),
                           dw_cost[Sities,Sities_1] * DW_Ship[Sities,Sities_1]};

PD_Ship.up[Sities] = pd_cap[Sities] ;
DW_Ship.up[Sities,Sities_1] = dw_cap[Sities,Sities_1] ;

Model net3 /all/;

Solve net3 using lp minimizing total_cost ;

Display total_cost.l ;






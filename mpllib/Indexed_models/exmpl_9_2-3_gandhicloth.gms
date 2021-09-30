* MPL Model Library MPL Model Library
* GandhiCloth, Example 3, Winston
*   {  Exmpl9.2-3_GandhiCloth.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.2,  Example 3,  Fixed Charge (MIP),  Size: 5x6,  Page 480  }

* TITLE  StockCoBudgeting;

Set clothing / shirts , shorts , pants / ;

Parameter ProdCost[clothing] / shirts 200 , shorts 150 , pants 100 / ;
Parameter Labor[clothing]    / shirts   3 , shorts   2 , pants   6 / ;
Parameter ClothUse[clothing] / shirts   4 , shorts   3 , pants   4 / ;
Parameter Revenue[clothing]  / shirts  12 , shorts   8 , pants  15 / ;
Parameter VarCost[clothing]  / shirts   6 , shorts   4 , pants   8 / ;
Parameter M[clothing]        / shirts  40 , shorts  54 , pants  25 / ;

Scalar LaborCap   / 150 / ;
Scalar ClothAvail / 160 / ;


Binary Variables RentMachine[clothing] ;

       Variables Produce[clothing] , Profit ;

Equation LaborLimit , ClothLimit , Assignmachine(clothing) , Def_obj ;

LaborLimit..
*-> LBL:
        Sum{clothing, Produce[clothing] * Labor[clothing]}    =l= LaborCap;

ClothLimit..
*-> CHL:
        Sum{clothing, Produce[clothing] * ClothUse[clothing]} =l= ClothAvail;

Assignmachine(clothing)..
*-> AMAC:
        Produce[clothing] =l= M[clothing] * RentMachine[clothing];

Def_obj..
        Profit =e= Sum{clothing, Revenue[clothing]  * Produce[clothing] -
                                 VarCost[clothing]  * Produce[clothing] -
                                 ProdCost[clothing] * RentMachine[clothing] };

* MPL model solution

*Produce.fx['shirts'] =  0 ;
*Produce.fx['shorts'] =  0 ;
*Produce.fx['pants']  = 25 ;



Model m9_2_3_GandhiCloth / all / ;

Solve m9_2_3_GandhiCloth using mip maximazing Profit ;

Display Profit.l ;
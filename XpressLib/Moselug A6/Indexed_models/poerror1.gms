
* model Transport

Positive Variable  small ,
                   large ;

         Variable Profit ;

Equation Boxwood ,
         Lathe   ,
         Def_obj ;

 Boxwood..   small + 3*large =l= 200 ;
 Lathe..   3*small + 2*large =l= 160 ;
 Def_obj.. Profit =e=   5*small + 20*large ;

Model Poerror1 / all / ;
* Solve the MIP-problem
Solve Poerror1 using lp maximazing Profit ;

Display Profit.l ;
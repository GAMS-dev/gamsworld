******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file chess.mos
*   ``````````````
*   Modeling a small LP problem.
*
*   (c) 2001 Dash Associates
*       author: Bob Daniel
********************************************************!)
*
* model "Chess"

Positive Variable small ,
* Number of small chess sets to make
         large ;
* Number of large chess sets to make
         Variable
         Profit ;

Equation Lathe   ,
         Boxwood ,
         Def_obj ;


 Lathe..     3*small + 2*large =l= 160                 ;
* Lathe-hours
 Boxwood..   small + 3*large   =l= 200                 ;
* kg of boxwood
Def_obj..    Profit            =e=  5*small + 20*large ;
* Objective function


Model chess / all / ;

Solve chess using lp maximazing Profit ;

Display Profit.l ;

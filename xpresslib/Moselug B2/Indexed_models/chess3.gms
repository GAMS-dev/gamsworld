******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file chess3.mos
*   ```````````````
*   Indexing arrays by variables.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model Chess3


Variable small ,
         large ,
         Profit ;
Equation Lathe   ,
         Boxwood ,
         Def_obj ;

Lathe..     3*small + 2*large =l= 160       ;
Boxwood..     small + 3*large =l= 200       ;
Def_obj..    Profit =e=  5*small + 20*large ;

large.lo = 0 ;
small.lo = 0 ;

Model Chess3 / all / ;

Solve Chess3 using lp maximazing Profit ;

Display Profit.l ;
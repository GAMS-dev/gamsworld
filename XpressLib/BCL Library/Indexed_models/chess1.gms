********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file chess1.mos
*  ```````````````
*  Small LP-problem.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke
**********************************************************

* model Chess1                      ! Start a new model


Variable
* Number of small chess sets to make
         xs     ,
* Number of large chess sets to make
         xl     ,
         Profit ;

Equation mc_time ,
         wood    ,
         Def_Obj ;

* Limit on available machine time
mc_time..
    3*xs + 2*xl =l= 400 ;

* Limit on available wood
wood..
    xs + 3*xl   =l= 200 ;

* Define the objective function
Def_Obj..
    Profit =e= 5*xs + 20*xl ;

* XPress solution
* xs.fx = 0 ;
* xl.fx = 66.666667 ;

* GAMS solution
*xs.fx = 114.2857 ;
*xl.fx = 28.5714 ;

*Solve the LP
Model Chess1 / all / ;

Solve Chess1 using MIP maximazing Profit ;

Display Profit.l ;
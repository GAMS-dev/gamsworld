*****************************************************************
*   CP example problems
*   ===================
*
*   file minmax.mos
*   ```````````````
*   Minimum and maximum constraints.
*
*   (c) 2005 Artelys SA and Dash Associates
*
******************************************************************
* model "Min and Max"
*  uses "kalis"

Set R / r1*r5 / ;
Variable  x[R] ,
          v    ,
          w    ,
          y    ;
Equation
         Eq_1(R) ,
         Eq_2    ,
         Eq_3    ;

Eq_1(R)..
* Minimum constraint with automated posting
    v =l= x[R]  ;

Eq_2..
* Maximum constraint with explicit posting
    w =g= Max{x['r2'] , x['r3'], x['r5'] } ;

Eq_3..
* Maximum constraint on list of variables
    y =g= Max{x['r2'] , x['r3'], x['r4'] } ;


Loop{R, x.fx[R] =  2*ord(R) + round(5*Uniform(0,1) + 0.5) };

Model Min_and_Max_1 / Eq_1 / ;
Solve Min_and_Max_1 using LP maximazing v ;
Display v.l ;
x.fx['r1'] = 2 ;

Model Min_and_Max_2 / Eq_2 / ;
Solve Min_and_Max_2 using DNLP minimazing w ;
Display w.l ;

Model Min_and_Max_3 / Eq_3 / ;
Solve Min_and_Max_3 using DNLP minimazing y ;
Display y.l ;




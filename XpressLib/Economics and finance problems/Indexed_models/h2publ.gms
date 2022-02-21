*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file h2publ.mos
*   ```````````````
*   Planning a publicity campaign for a new product
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "H-2 Publicity"


Set MEDIA / m1*m6 / ;
* Set of media types

Parameter REACH[MEDIA]  / m1 12000 , m2 1500 , m3  2000 ,
                          m4 6000 , m5  3000 , m6  9000  / ;
* Number of people reached
Parameter COST[MEDIA]   / m1  1500 , m2 8000 , m3 12000 ,
                          m4 9000 , m5 24000 , m6 51000  / ;
* Unitary cost
Parameter MAXUSE[MEDIA] / m1     4 , m2    2 , m3     8 ,
                          m4   60 , m5     4 , m6     8  / ;
* Maximum use
Parameter SCORE[MEDIA]  / m1     3 , m2    7 , m3     8 ,
                          m4    2 , m5     6 , m6     9  / ;
* Quality rating (best=highest value)
Scalar    BUDGET / 250000 / ;
* Available publicity budget
Scalar    TARGET / 100000 / ;
* Number of people to be reached


Set NAMES / Weekly_newspaper , Monthly_magazine , Weekly_magazine ,
            Radio_spot       , Billboard        , TV_spot          / ;


Integer Variable use[MEDIA] ;
* Use made of different media

Variable         Perceive   ;

Equation Eq_1    ,
         Eq_2    ,
         Def_obj ;

* Budgetary limit
Eq_1..
    Sum{MEDIA, COST[MEDIA]*use[MEDIA] } =l= BUDGET ;

* Outreach of campaign
Eq_2..
    Sum{MEDIA, REACH[MEDIA]*use[MEDIA] }  =g= TARGET ;

* Objective: quality of perception of the campaign
Def_obj..
    Perceive =e= Sum{MEDIA , SCORE[MEDIA] * use[MEDIA] } ; 

  use.lo[MEDIA] = 0 ;
  use.up[MEDIA] = MAXUSE[MEDIA] ;

* Solve the problem
Model H_2_Publicity / All / ;

Solve H_2_Publicity using MIP maximazing Perceive ;

Display Perceive.l ;
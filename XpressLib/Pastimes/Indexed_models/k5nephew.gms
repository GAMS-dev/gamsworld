*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file k5nephew.mos
*   `````````````````
*   Distributing wine barrels among nephews
*
*   A farmer wishes to distribute his 45 wine barrels among
*   his 5 nephews. 9 barrels are full, 9 filled to 3/4,
*   9 half-full, 9 filled to a quarter, and 9 are empty.
*   Each nephew is to receive the same number of barrels
*   and the same volume of wine. Furthermore, each nephew
*   must receive at least one barrel of every type and
*   no two of the nephews must be allocated exactly the
*   same number of barrels of every fill type.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "K-5 Nephew"

$Set NN 5
$Set NT 5

Set NEPHEWS / n1*n%NN% / ;
* Nephews
Set TYPES   / t1*t%NT% / ;
* Contents types of wine barrels

Scalar BARRELS / 45 / ;

* Factors for "alldifferent" constraint
Parameter COEF[TYPES] / t1 10000 , t2 1000 , t3 100 , t4 10 , t5 1 / ;

* Fill level of barrels
Parameter FILL[TYPES] / t1 1 , t2 0.75 , t3 0.5 , t4 0.25 , t5 0 / ;

Integer Variable
* Barrels of type t for every nephew
         give[NEPHEWS,TYPES] ;
Variable
* 'Pattern': value of the product
*            c*give(n,t)     ,
         p[NEPHEWS]
         Obj                 ;

Equation Eq_1(NEPHEWS) ,
         Eq_2(TYPES)   ,
         Eq_3(NEPHEWS) ,
         Eq_4(NEPHEWS) ,
         Eq_5(NEPHEWS) ,
         Def_Obj        ;
* Barrels per nephew
Eq_1(NEPHEWS)..
    Sum{TYPES,   give[NEPHEWS,TYPES] } =e= BARRELS/%NN% ;

Eq_2(TYPES)..
    Sum{NEPHEWS, give[NEPHEWS,TYPES] } =e= BARRELS/%NN% ;

* Equilibrated contents
Eq_3(NEPHEWS)..
    Sum{TYPES, FILL[TYPES]*give[NEPHEWS,TYPES] } =e=
                                BARRELS/%NN% * (Sum{TYPES, FILL[TYPES] })/%NT% ;

* Every nephew receives a different number of barrels of any given type
* (that is, a different pattern for every nephew)
Eq_4(NEPHEWS)..
    Sum{TYPES, COEF[TYPES]*give[NEPHEWS,TYPES] } =e= p[NEPHEWS] ;

Eq_5(NEPHEWS)$(ord(NEPHEWS) gt 1)..
    p[NEPHEWS] - p[NEPHEWS-1] =g= 1 ;

Def_Obj..
    Obj =e= 0 ;

give.lo[NEPHEWS,TYPES] = 1    ;
give.up[NEPHEWS,TYPES] = %NN% ;

* Solve the problem: no objective
Model K_5_Nephew / all / ;
* Solve the MIP-problem
Solve K_5_Nephew using MIP minimazing Obj ;

Display Obj.l ;



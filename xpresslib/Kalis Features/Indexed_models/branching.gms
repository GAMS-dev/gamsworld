*****************************************************************
*   CP example problems
*   ===================
*
*   file branching.mos
*   ``````````````````
*   User branching variable and value choice.
*   The model parameter `ALG' selects one of the predefined
*   branching strategies.
*
*   (c) 2005 Artelys SA and Dash Associates, rev. 2007
*
******************************************************************
* model "User branching"
* uses "kalis"


Set R / r1*r10 / ;
Set odd(R) ;
Loop{R$(mod(ord(R),2) = 1),
    odd(R) = Yes;
    } ;

Alias(R,RR);

Parameter C[R] / r1  4 , r2  7 , r3  2 , r4  6 , r5   9 ,
                 r6  0 , r7 -1 , r8  3 , r9  8 , r10 -2  / ;


Variable  y[R] ,
          Obj  ;

Equation
         Eq_1    ,
         Eq_2    ,
         Eq_3    ,
         Eq_4(R,RR),
         Def_Obj ;


Eq_1(R)$odd(R)..
 y[R] =g= y[R+1] + 1 ;

Eq_2..
 y['r4'] + y['r1'] =e= 13 ;

Eq_3..
 y['r7']*y['r7'] =g= 26 ;


* all_different(y)
Eq_4(R,RR)$((ord(RR) gt ord(R))and(ord(R) lt card(R)))..
     SQR(y[R]-y[RR]) =g= 1 ;

Def_Obj..
    Obj =e= Sum{R,y[R]} ;

y.lo[R] =  0 ;
y.up[R] = 20 ;
y.up['r8'] = 15 ;

* X-Press Kalis solution
y.fx['r1']  = 13 ;
y.fx['r2']  =  6 ;
y.fx['r3']  = 10 ;
y.fx['r4']  =  0 ;
y.fx['r5']  = 16 ;
y.fx['r6']  =  9 ;
y.fx['r7']  =  8 ;
y.fx['r8']  =  3 ;
y.fx['r9']  = 15 ;
y.fx['r10'] =  7 ;

Model User_branching / all / ;

Solve User_branching using MIQCP maximazing Obj ;

Display Obj.l ;

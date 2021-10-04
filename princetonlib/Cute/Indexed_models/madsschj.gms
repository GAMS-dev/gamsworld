* Cute AMPL model  (translation to GAMS)
*
* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source:
*   K. Madsen and H. Schjaer-Jacobsen,
*   "Linearly Constrained Minmax Optimization",
*   Mathematical Programming 14, pp. 208-223, 1978.

*   SIF input: Ph. Toint, August 1993.

*   classification LQR2-AN-V-V

$Set N   80

Set i /i1*i%N%/;

Alias(k,i);

Set right_1(i) /i2*i%N%/;
Set right_2(i) /i3*i%N%/;
Set left(i)    /i1*i%N%/;   left('I%N%')     = no;
Set inside(k)  /i2*i%N%/;   inside(k)$(ord(k)=card(K))   =no;
                            inside(k)$(ord(k)=card(K)-1) =no;

Variable x(i) , z , f ;

Equation
         cons1 ,
         cons2 ,
         cons3 ,
         cons4(k) ,
         cons5(k) ,
         cons6 ,
         Def_obj ;

cons1.. z         - sum{i$right_1(i), x[i]} + 1 -   sqr(x['i1'])   =g= 0;
cons2.. z-x['i1'] - sum{i$right_2(i), x[i]} + 1 -   sqr(x['i1'])   =g= 0;
cons3.. z-x['i1'] - sum{i$right_2(i), x[i]} + 1 - 2*sqr(x['i2'])   =g= 0;

cons4(k)$(inside(k))..
                  z -sum{i$(ord(i) < ord(k)),x[i]} -
                     sum{i$(ord(i) > ord(k)),x[i]} + 1 -      sqr(x[k+1]) =g= 0;

cons5(k)$(inside(k))..
                  z -sum{i$(ord(i) < ord(k)), x[i]} -
                     sum{i$(ord(i) > ord(k)), x[i]} + 1 -   2*sqr(x[k+1]) =g= 0;

cons6.. z         - sum{i$left(i) , x[i]} + 1   - sqr(x['i%N%']) =g= 0;

Def_obj..  f =e= z ;

x.l(i) = 10 ;
z.l    =  0 ;

Model madsschj /all/;

Solve madsschj  using nlp minimize f ;

display right_1 ;
display right_2 ;
display left    ;
display inside  ;
display f.l ;
display x.l ;
display z.l ;

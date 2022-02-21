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
*   N. Gould, private communication.

*   SIF input: Nick Gould, June 1990.

*   classification OBR2-AY-4-0
$Set N 4
Set i /1*%N%/;


Variable  x[i],       f   ;

Equation Def_obj;
Def_obj.. f=e=
        x['3']-1 +
        sqr(x['1'])+
        sqr(x['2']) + sqr(x['3']+x['4']) +
        sqr(sin(x['3'])) + sqr(x['1'])*sqr(x['2']) + x['4']-3 +
        sqr(sin(x['3'])) +
        sqr(x['4']-1)    +
        sqr(sqr(x['2'])) +
        sqr(sqr(x['3'])  + sqr(x['4']+x['1'])) +
        sqr(x['1']-4 + sqr(sin(x['4'])) + sqr(x['2'])*sqr(x['3'])) +
        power((sin(x['4'])),4);

Model allinitu /all/;

Solve allinitu using nlp minimize f;

display x.l;
display f.l;

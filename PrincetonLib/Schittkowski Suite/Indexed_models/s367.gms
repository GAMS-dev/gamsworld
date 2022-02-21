* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 7
Set i /1*%N%/;
Set inside(i) /1*4/;
Positive Variable     X[I];
Variable              f   ;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Def_obj;

Eq_1.. 10 - sum{i,x[i]} =g= 0;
Eq_2..  5 - sum{i$inside(i),x[i]}=g=0;
Eq_3..  5 - x['1'] - x['3'] - x['5'] - sqr(x['6']) - sqr(x['7']) =g= 0;
Eq_4..  2*x['4'] + x['5'] + 0.8*x['6'] + x['7'] - 5              =e= 0;
Eq_5.. sqr(x['2']) + sqr(x['3']) + sqr(x['5']) + sqr(x['6']) - 5 =e= 0;
Def_obj.. f=e= -5*x['1']-5*x['2']-4*x['3']-x['1']*x['3']-6*x['4']-
               (5*x['5'])/(1+x['5'])-(8*x['6'])/(1+x['6'])-
                                  10*(1-2*exp(-x['7'])+exp(-2*x['7']));


x.l[i]         =    0.1      ;

*x.fx['1']         =    1.657    ;
*x.fx['2']         =    1.231    ;
*x.fx['3']         =    0.713    ;
*x.fx['4']         =    1.39     ;
*x.fx['5']         =    1.27     ;
*x.fx['6']         =    1.16     ;
*x.fx['7']         =    0.0      ;


Model s367 /all/;

Solve s367 using nlp minimize f;

display x.l;
display f.l;

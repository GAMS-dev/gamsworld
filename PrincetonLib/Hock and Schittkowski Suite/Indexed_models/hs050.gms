* Shitkovski AMPL model  (translation to GAMS)

Set I /1*5/;

Variable  x[I], Obj;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1.. x['1'] + 2*x['2'] + 3*x['3'] =e= 6;
Eq_2.. x['2'] + 2*x['3'] + 3*x['4'] =e= 6;
Eq_3.. x['3'] + 2*x['4'] + 3*x['5'] =e= 6;

Def_obj..
       Obj=e= sqr(x['1']-x['2'])+sqr(x['2']-x['3'])
             +sqr(sqr(x['3']-x['4']))
             +sqr(x['4']-x['5'])                    ;


x.l['1']    =  35;
x.l['2']    = -31;
x.l['3']    =  11;
x.l['4']    =   5;
x.l['5']    =  -5;

Model hs050 /all/;
Solve hs050 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =  0

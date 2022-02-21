* Shitkovski AMPL model  (translation to GAMS)

Set I /1,2/;

Variable  x[I],Obj;

Equation Def_obj;

Def_obj.. Obj=e=x['2'] + 0.00001* sqr(x['2']-x['1']);

x.lo['2']=0;

x.l['1'] = 10;
x.l['2'] =  1;

Model hs003 /all/;
Solve hs003 using nlp minimaze obj;

display x.l  ;
display obj.l;

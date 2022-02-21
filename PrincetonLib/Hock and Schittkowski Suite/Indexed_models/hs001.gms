* Shitkovski AMPL model  (translation to GAMS)
Set I /1*2/;

Variable x[I],
          Obj;

Equation Def_obj;

Def_obj.. Obj=e=100*sqr(x['2']-sqr(x['1']))+sqr(1-x['1']);

x.lo['2'] = -1.5;
x.l['1']  = -2  ;
x.l['2']  =  1  ;

Model hs001 /all/;
Solve hs001 using nlp minimaze obj;

display x.l  ;
display obj.l;

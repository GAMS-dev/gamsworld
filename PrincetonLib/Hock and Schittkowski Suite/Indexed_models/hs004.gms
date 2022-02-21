* Shitkovski AMPL model  (translation to GAMS)

Set I /1*2/;

Variable x[I],
          Obj;

Equation Def_obj;

Def_obj.. Obj =e=  power((x['1']+1),3)/3 + x['2'];

x.lo['1'] = 1    ;
x.lo['2'] = 0    ;

x.l['1']  = 1.125;
x.l['2']  = 0.125;

Model hs004 /all/;
Solve hs004 using nlp minimaze obj;

display x.l  ;
display obj.l;

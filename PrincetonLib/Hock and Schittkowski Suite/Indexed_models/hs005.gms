* Shitkovski AMPL model  (translation to GAMS)
Set I /1*2/;

Variable x[I],
          Obj;

Equation Def_obj;

Def_obj..
Obj=e=sin(x['1']+x['2'])+sqr(x['1']-x['2'])-1.5*x['1']+2.5*x['2']+1;

x.lo['1'] =-1.5;
x.lo['2'] =-3  ;
x.up['1'] = 4  ;
x.up['2'] = 3  ;

x.l['1'] = 0;
x.l['2'] = 0;

Model hs005 /all/;
Solve hs005 using nlp minimaze obj;

display x.l  ;
display obj.l;
parameter a; a =-(sqrt(3)/2 + 3.14159/3);
display a;

* Shitkovski AMPL model  (translation to GAMS)

Set I /1*3/;
Set J /1*99/;
Parameter u[J]; u[J]= 25 + exp(log(-50*log(ord(J)/100))*(2/3))  ;

Variable  x[I],Obj;

Equation Def_obj;

Def_obj.. Obj =e=

  sum{J,
   sqr(
      -ord(J)/100 +
exp(log(exp(-(u[J] - x['2']))*x['3'])
  /x['1'])
       )
     };


x.lo['1'] = 1/10 ;
x.lo['2'] =   0  ;
x.lo['3'] =   0  ;
x.up['1'] =  100  ;
x.up['2'] =   25.6;
x.up['3'] =    5  ;

x.l['1'] = 100  ;
x.l['2'] =  12.5;
x.l['3'] =     3;

Model hs025 /all/;
Solve hs025 using nlp minimaze obj;
display x.l  ;
display obj.l;

* optimal obj =  + 0;

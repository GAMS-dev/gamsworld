* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;
parameter pi;  pi= 3.1415;

Variable  x[I]  ,
          u     ,
          f     ;
Equation
         Eq_1   ,
         Def_obj;

Eq_1..     u =e=  (1/(2*pi))*arctan(x['2']/x['1'])  ;
Def_obj..  f =e=
       100*(sqr(x['3']-10*u)+sqr(sqrt(sqr(x['1'])+sqr(x['2']))-1))+sqr(x['3']);

x.lo['1']=0.0001;
Model s247 /all/;

Solve s247 using nlp minimize f;

display x.l;
display f.l;

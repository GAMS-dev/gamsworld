* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set I /i1*i%N%/;

Parameter A(i) /i1    8204.37,i2    9008.72,i3    9330.46/;

Positive Variable x(i)
         Variable w(i) , f

Equation cons1 , cons2 , cons3 , cons4 , Def_obj ;

cons1.. x['i1'] + x['i2'] + x['i3'] - 1 =e= 0;
cons2.. w['i1']=e=(x['i1']+x['i2']+x['i3']+0.03)/(0.09*x['i1']+x['i2']+x['i3']+0.03);
cons3.. w['i2']=e=(x['i2']+x['i3']+0.03)/(0.07*x['i2']+x['i3']+0.03);
cons4.. w['i3']=e=(x['i3']+0.03)/(0.13*x['i3']+0.03);
Def_obj.. f=e=sum{i, (A[i]*log(w[i])) };

x.up[i]   =    1.0;
x.l['i1'] =    0.7;
x.l['i2'] =    0.2;
x.l['i3'] =    0.1;
w.lo[i]   =    0.000001;
Model s347 /all/;
Solve s347 using nlp minimazing f ;

display x.l;
display f.l;

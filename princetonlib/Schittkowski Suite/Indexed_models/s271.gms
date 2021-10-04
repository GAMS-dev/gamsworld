* Shitkovski AMPL model  (translation to GAMS)
$Set N 6
Set I /1*%N%/;

Variable  X[I], f      ;

Equation Def_obj;
Def_obj..  f =e= 10*sum{i,  ( (16-ord(i))*sqr(x[i]-1)  )  };

x.l[I] =  0 ;

Model s271 /all/;
Solve s271 using nlp minimize f;
display x.l;
display f.l;

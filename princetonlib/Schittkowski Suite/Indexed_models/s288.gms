* Shitkovski AMPL model  (translation to GAMS)
$Set N 20
Set I /1*%N%/;
Set ii(i) /1*5/;
Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e=
sum{i$ii(i),(sqr(x[i]+10*x[i+5])        + 5*sqr(x[i+10]-x[i+15])
             +power((x[i+5]-2*x[i+10]),4)+10*power((x[i]-x[i+15]),4))};


 x.l['1'] =    3;
 x.l['2'] =    3;
 x.l['3'] =    3;
 x.l['4'] =    3;
 x.l['5'] =    3;
 x.l['6'] =   -1;
 x.l['7'] =   -1;
 x.l['8'] =   -1;
 x.l['9'] =   -1;
x.l['10'] =   -1;
x.l['11'] =    0;
x.l['12'] =    0;
x.l['13'] =    0;
x.l['14'] =    0;
x.l['15'] =    0;
x.l['16'] =    1;
x.l['17'] =    1;
x.l['18'] =    1;
x.l['19'] =    1;
x.l['20'] =    1;

Model s288 /all/;

Solve s288 using nlp minimize f;

display x.l;
display f.l;

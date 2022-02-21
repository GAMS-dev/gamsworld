* Shitkovski AMPL model  (translation to GAMS)
$Set N 30
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e= 1-exp(-sum{i,(sqr(x[i])/60)});

 x.l['1'] =-1.03;
 x.l['2'] = 1.07;
 x.l['3'] =-1.10;
 x.l['4'] = 1.13;
 x.l['5'] =-1.17;
 x.l['6'] = 1.20;
 x.l['7'] =-1.23;
 x.l['8'] = 1.27;
 x.l['9'] =-1.30;
x.l['10'] = 1.33;
x.l['11'] =-1.37;
x.l['12'] = 1.40;
x.l['13'] =-1.43;
x.l['14'] = 1.47;
x.l['15'] =-1.50;
x.l['16'] = 1.53;
x.l['17'] =-1.57;
x.l['18'] = 1.60;
x.l['19'] =-1.63;
x.l['20'] = 1.67;
x.l['21'] =-1.70;
x.l['22'] = 1.73;
x.l['23'] =-1.77;
x.l['24'] = 1.80;
x.l['25'] =-1.83;
x.l['26'] = 1.87;
x.l['27'] =-1.90;
x.l['28'] = 1.93;
x.l['29'] =-1.97;
x.l['30'] = 2.00;

Model s289 /all/;

Solve s289 using nlp minimize f;

display x.l;
display f.l;

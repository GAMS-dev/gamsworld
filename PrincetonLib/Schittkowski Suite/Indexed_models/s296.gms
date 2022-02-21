* Shitkovski AMPL model  (translation to GAMS)
$Set N 16
Set I /1*%N%/;
Set k[i] ; k[i]=YES$(ord(i) ne card(i));

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..  f =e= sum{i$k[i],(100*sqr(x[i+1]-sqr(x[i]))+sqr(1-x[i]))};

x.l['1']  = -1.2;
x.l['2']  =  1  ;
x.l['3']  = -1.2;
x.l['4']  =  1  ;
x.l['5']  = -1.2;
x.l['6']  =  1  ;
x.l['7']  = -1.2;
x.l['8']  =  1  ;
x.l['9']  = -1.2;
x.l['10'] =  1  ;
x.l['11'] = -1.2;
x.l['12'] =  1  ;
x.l['13'] = -1.2;
x.l['14'] =  1  ;
x.l['15'] = -1.2;
x.l['16'] =  1  ;

Model s296 /all/;

Solve s296 using nlp minimize f;

display x.l;
display f.l;

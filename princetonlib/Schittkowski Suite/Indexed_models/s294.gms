* Shitkovski AMPL model  (translation to GAMS)
$Set N 6
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

x.up['1']  = -0.6;

Model s294 /all/;

Solve s294 using nlp minimize f;

display x.l;
display f.l;

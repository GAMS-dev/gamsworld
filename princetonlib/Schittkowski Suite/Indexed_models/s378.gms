* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 10
Set i /1*%N%/;
Alias(i,j);
parameter A(i) /1 -6.089 ,2  -17.164,3  -34.054,
                4 -5.914 ,5  -24.721,6  -14.986,
                7 -24.100,8  -10.708,9  -26.662,10 -22.179/;

Variable      x[i],  f   ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;
Eq_1.. exp(x['1'])+2*exp(x['2'])+2*exp(x['3'])+  exp(x['6'])+ exp(x['10'])-2
                                                                      =e= 0;
Eq_2.. exp(x['4'])+2*exp(x['5'])+  exp(x['6'])+  exp(x['7'])              -1
                                                                      =e= 0;
Eq_3.. exp(x['3'])+  exp(x['7'])+  exp(x['8'])+2*exp(x['9'])+ exp(x['10'])-1
                                                                      =e= 0;
Def_obj.. f=e= sum{i,exp(x[i])*(A[i]+x[i]-log(sum{j,exp(x[j])}))} ;

x.up[i]   =   10.0    ;
x.lo[i]   =  -10.0    ;
x.l[i]    =    -2.3    ;
Model s378 /all/;

Solve s378 using nlp minimize f;

display x.l;
display f.l;

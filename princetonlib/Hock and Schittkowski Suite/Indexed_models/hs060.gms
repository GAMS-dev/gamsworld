$Set N 3
Set I /i1*i%N%/;
Variable x(i) , obj ;

Equation constr1 , Def_obj ;

Def_obj..
obj=e= sqr(x['i1'] - 1      ) +
       sqr(x['i1'] - x['i2']) +
    power((x['i2'] - x['i3']),4)  ;

constr1..  x['i1']*(1+sqr(x['i2']))+power(x['i3'],4)=e=4+3*sqrt(2);

x.lo[i] = -10 ;
x.up[i] =  10 ;

x.l['i1'] = 2 ;
x.l['i2'] = 2 ;
x.l['i3'] = 2 ;

* x[1] := 1.104859024;
* x[2] := 1.196674194;
* x[3] := 1.535262257;
Model hs60 /all/;

Solve hs60 using nlp minimazing obj;

display x.l;

obj.l = obj.l - 0.03256820025;

display obj.l ;

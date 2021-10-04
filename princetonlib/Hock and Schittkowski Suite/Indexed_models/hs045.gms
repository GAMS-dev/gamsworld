* Shitkovski AMPL model  (translation to GAMS)

Set I /1*5/;

Positive Variable  x[I];
         Variable   Obj;

Equation
*       Eq_1   ,
        Def_obj;

*Eq_1.. x['1'] + 2*x['2'] =l= 8;
Def_obj.. Obj=e=2-prod{i,(x[i])}/120;
* below string important for GAMS version of model
x.lo[i]   = 0.2        ;
x.up[i]   = ord(i)     ;
x.l[i]     = 0         ;

Model hs045 /all/;
Solve hs045 using nlp minimaze Obj;
display x.l  ;
display obj.l;

* optimal     obj =  1

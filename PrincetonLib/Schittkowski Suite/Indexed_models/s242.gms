* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
$Set M 10
Set I /1*%N%/;
Set J /1*%M%/;
Parameter t[J]; t[J]=0.1*ord(J);

Positive Variable     x[I];
         Variable     f   ;

Equation Def_obj;


Def_obj..  f =e= sum{J,
   sqr((exp(-x['1']*t[J])-exp(-x['2']*t[J]))-x['3']*(exp(-t[J])-exp(-10*t[J])))
                    };
x.up[I] =  10. ;
x.l['1'] =  2.5;
x.l['2'] = 10  ;
x.l['3'] = 10  ;

Model s242 /all/;

Solve s242 using nlp minimize f;

display x.l      ;
display f.l      ;

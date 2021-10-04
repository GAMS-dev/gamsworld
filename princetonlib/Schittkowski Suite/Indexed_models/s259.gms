* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e= 100  * sqr(x['2']-sqr(x['1'])) +   sqr(1-x['1']    )
                     + 90  * sqr(x['4']-sqr(x['3'])) + power((1-x['3']),3)
                     + 10.1* sqr(x['2']-   1      )  +   sqr(x['4']-1    )
                     + 19.8*(    x['2']-1)           *      (x['4']-1    );

x.up['4'] =  1 ;
x.l['1']  =  0 ;
x.l['2']  =  0 ;
x.l['3']  =  0 ;
x.l['4']  =  0 ;

Model s259 /all/;

Solve s259 using nlp minimize f;

display x.l;
display f.l;

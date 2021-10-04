* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e= 100  *(    x['2']-sqr(x['1']))+sqr(1-x['1'])
                     + 90  *(    x['4']-sqr(x['3']))+sqr(1-x['3'])

                     + 10.1*(sqr(x['2']-1)+sqr(x['4'] - 1))
                     + 19.8*(    x['2']-1) *(x['4']-1)      ;

*x.l['1'] =  -3 ;
x.l['1'] =  1 ;
x.l['2'] =   1 ;
*x.l['3'] =  -3 ;
x.l['3'] =  1 ;
x.l['4'] =  1 ;

*x.l['4'] =   1 ;
*x.fx['2'] =   1 ;
*x.fx['3'] =  -3 ;
*x.fx['4'] =   1 ;


* MINIMUM not exist

Model s255 /all/;

Solve s255 using nlp minimize f;

display x.l;
display f.l;

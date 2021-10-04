* n-dimension
$Set n  2
* m-number of points
$Set m  3

Set i /1*%m%/;
Set j /1*%n%/;


table a[i,j]
                          1    2
                1         0    0
                2         4    0
                3         2    4  ;

Variable  x[j]   ,
          ep     ,
          sumLone;
Equation  defobj;

defobj.. sumLone=e= ep+sum{i,sqrt(sqr(ep) +sum{j,sqr(x[j] - a[i,j])})};

ep.lo = 1.0e-8;
ep.l  = 1.0   ;

x.l['1'] = 1;
x.l['2'] = 0;

model f_t_vareps /all/;
solve f_t_vareps using nlp minimize sumLone;

display x.l;

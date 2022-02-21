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
          t[i]   ,
          ep     ,
          sumLone;
Equation t_def[i],
         defobj  ;

t_def[i].. ep+sqrt(sqr(ep) +sum{j,sqr(x[j] - a[i,j])})=l=t[i];
defobj..   sumLone=e= sum{i, t[i]};

ep.lo = 1.0e-8;
ep.l  = 1.0   ;

x.l['1'] = 1;
x.l['2'] = 0;
* fermat subgroup of models 
model socp_vareps /all/;
solve socp_vareps using nlp minimize sumLone;

display x.l;

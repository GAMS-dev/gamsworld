* n-dimension
$Set n  2
* m-number of points
$Set m  3

Set i /1*%m%/;
Set j /1*%n%/;

parameter  ep;    ep = 1.0e-8;

table a[i,j]
                          1    2
                1         0    0
                2         4    0
                3         2    4  ;

Variable  x[j],
          sumLone;
Equation  defobj;

defobj.. sumLone=e= sum{i,sqrt(ep+sum{j,sqr(x[j] - a[i,j])})};

x.l['1'] = 1;
x.l['2'] = 0;

model fermat_eps /all/;
solve fermat_eps using nlp minimize sumLone;

display x.l;

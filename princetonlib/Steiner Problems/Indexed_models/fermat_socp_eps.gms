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
          t[i],
          sumLone;
Equation  t_def[i],
          defobj  ;

t_def[i].. sqrt(sum{j,(ep+sqr(x[j] - a[i,j]))}) =l=t[i];
  defobj.. sumLone=e= sum{i,t[i]};

x.l['1'] = 1;
x.l['2'] = 0;

model socp_eps /all/;
solve socp_eps using nlp minimize sumLone;

display x.l;

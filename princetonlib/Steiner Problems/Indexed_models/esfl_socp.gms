* Euclidean single facility location problem

* Objective Function:  convex
* Constraint Functions: none

$Set d 2
$Set m 1000

* d - dimension
* m - number of facilities

Set i /1*%d%/;
Set j /1*%m%/;

parameter  a[i,j] - coordinates of existing facility              ;
parameter  w[j]   - weight associated with each existing facility ;
a[i,j] = Uniform(0,1);
w[j]   = Uniform(0,1);

Variable  x[i]    ,
          t[j]    ,
          sumEucl ;

Equation t_def[j]
         defobj  ;

t_def[j]..  sqrt(sum {i,sqr(x[i]-a[i,j])}) =l= t[j];
defobj..    sumEucl=e=sum{j,(w[j]*t[j])} ;

x.l[i] =0.5;

model esfl_socp /all/;
solve esfl_socp using nlp minimize sumEucl;

display x.l;

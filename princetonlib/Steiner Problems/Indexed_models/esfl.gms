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
          sumEucl ;

Equation  defobj  ;

defobj.. sumEucl=e=sum{j,(w[j]*sqrt(sum {i,sqr(x[i]-a[i,j])}))} ;

model esfl /all/;
solve esfl using nlp minimize sumEucl;

display x.l;

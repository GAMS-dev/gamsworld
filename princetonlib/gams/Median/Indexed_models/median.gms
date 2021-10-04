* Cute AMPL model  (translation to GAMS)
*
* Objective  function: convex nonlinear
* Constraint functions: none

* Computes the median of m numbers by minimizing
* the sum of the distances.  When m is odd, median
* lies at the middle data point.  The corresponding
* distance term becomes "singular"
* and loqo fails.

$Set M 19
Set i /i1*i%M%/;

Parameter a(i) ; a(i) = Uniform(0,1) ;

Variable x , sum_dists ;

Equation Def_obj ;

Def_obj..  sum_dists =e= sum{i,abs(x-a[i]) };

x.l = 0.5;
* solver baron
Model median /all/;

Solve median using dnlp minimize sum_dists ;

display   a            ;
display   x.l          ;
display   sum_dists.l  ;

* Cute AMPL model  (translation to GAMS)
*
* Objective  function: convex nonlinear
* Constraint functions: none

* Computes the median of m numbers by minimizing
* the sum of the distances.  When m is odd, median
* lies at the middle data point.  The corresponding
* distance term becomes almost "singular" but doesn't
* create any problems.

$Set M 19
Set i /i1*i%M%/;

Parameter epsi  ; epsi = 1.0e-8 ;
Parameter a(i) ; a(i) = Uniform(0,1) ;

Variable x , sum_dists ;

Equation Def_obj ;

Def_obj..  sum_dists =e= sum{i,sqrt(epsi+sqr(x-a[i]))};

x.l = 0.5;

Model median_eps /all/;

Solve median_eps  using nlp minimize sum_dists;

display   a            ;
display   x.l          ;
display   sum_dists.l  ;

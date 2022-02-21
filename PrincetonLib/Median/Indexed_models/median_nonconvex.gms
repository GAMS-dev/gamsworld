* Cute AMPL model  (translation to GAMS)
*
* Objective function: linear
* Constraint functions: second-order cone
* Feasible set: convex

* Computes the median of m numbers by minimizing
* the sum of the distances.  When m is odd, median
* lies at the middle data point.  The corresponding
* second-order cone constraint becomes "singular"
* and loqo fails.

$Set M 19
Set i /i1*i%M%/;

Parameter a(i) ; a(i) = Uniform(0,1) ;

Positive Variable t(i) ;
Variable x , lin ;

Equation Dist(i) , Def_obj ;

Dist(i)..  sqr(x-a[i]) =l= (t[i]) ;
Def_obj..  lin=e= sum{i, sqrt(t[i]+1.0e-10) };

x.l = 0.5;

Model median_nonconvex /all/;

Solve median_nonconvex using nlp minimize lin;

display   a            ;
display   x.l          ;
display   lin.l  ;

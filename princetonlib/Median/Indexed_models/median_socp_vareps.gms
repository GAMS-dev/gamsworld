* Cute AMPL model  (translation to GAMS)
*
* Constraint functions: second-order cone
* Feasible set: convex

* Computes the median of m numbers by minimizing
* the sum of the distances.  When m is odd, median
* lies at the middle data point.  The corresponding
* second-order cone constraint becomes almost "singular"
* but doesn't cause any problems.

$Set M 3
Set i /i1*i%M%/;

Parameter a(i) ; a(i) = Uniform(0,1) ;

Variable epsi , x , t(i) , lin ;

Equation Dist(i) , Def_obj ;

Dist(i).. sqrt(sqr(epsi)+sqr(x-a[i])) =l= t[i];
Def_obj..   lin=e= epsi + sum{i, t[i] };

epsi.lo = 1.0e-7;
epsi.l  = 1 ;

Model socp_vareps /all/;

Solve socp_vareps  using nlp minimize lin;

display   a            ;
display   x.l          ;
display   lin.l  ;

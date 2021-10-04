* Cute AMPL model  (translation to GAMS)
*
* Objective function: linear
* Constraint functions: second-order cone
* Feasible set: convex

* Computes the median of m numbers by minimizing
* the sum of the distances.  When m is odd, median
* lies at the middle data point.  The corresponding
* second-order cone constraint becomes almost "singular"
* but doesn't cause any problems.

$Set M 3
Set i /i1*i%M%/;

Parameter epsi; epsi = 1.0e-8 ;
Parameter a(i) ; a(i) = Uniform(0,1) ;

Variable x , t(i) , lin ;

Equation Dist(i) , Def_obj ;

Dist(i)..  sqrt(epsi+sqr(x-a[i])) =l= t[i];
Def_obj.. lin=e= sum{i, t[i] };

Model socp /all/;

Solve socp using nlp minimize lin;

display   a            ;
display   x.l          ;
display   lin.l  ;

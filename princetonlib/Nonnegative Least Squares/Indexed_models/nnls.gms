* Objective: convex quadratic
* Constraints: bounds

$Set M 1000
$Set N  300
Set I /i1*i%M%/;
Set J /j1*j%N%/;

Parameter A(i,j)  ;  A(i,j)  =  0  ;
Parameter A1(i,j) ;  A1(i,j) =  Uniform(0,1);
A[i,j]$(A1[i,j]<0.21)=10*(Uniform(0,1)-1);

Parameter x0(j)  ;  x0(j)  =  Uniform(0,1)                                    ;

Parameter b(i)   ;  b(i)   =  sum{j,(A[i,j]*x0[j])} +100*(Uniform(0,1)-0.5) ;

Positive Variable x(j)    ;
         Variable sum_sqs ;

Equation Def_obj ;

Def_obj..  sum_sqs=e= sum{i, sqr( b[i] - sum{j,A[i,j]*x[j]} ) } ;

Model nnls /all/;

Solve nnls using nlp minimazing sum_sqs ;

Display sum_sqs.l;
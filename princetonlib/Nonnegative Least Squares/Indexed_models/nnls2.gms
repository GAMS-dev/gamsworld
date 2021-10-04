* Objective: convex quadratic
* Constraints: linear

$Set M 500
$Set N 150
Set I /i1*i%M%/;
Set J /j1*j%N%/;

Parameter  x0(j) ;  x0(j)  =  Uniform(0,1);

Parameter A1(i,j) ;  A1(i,j) =  Uniform(0,1);
Parameter A(i,j)  ;  A(i,j)  =  0 ;

                      A[i,j]$(A1[i,j]<0.21)=10*(Uniform(0,1)-1);
Parameter   b(i) ;  b(i)   =  sum{j,(A[i,j]*x0[j])} +(Uniform(0,1)-0.5) ;



Positive Variable x(j)           ;
         Variable t(i) , sum_sqs ;

Equation Defs(i) , Def_obj ;


Defs(i)..  t[i] =e= b[i] - sum{j, A[i,j]*x[j] };

Def_obj..  sum_sqs =e= sum{i,sqr(t[i]) };

Model nnls2 /all/;

Solve nnls2 using nlp minimazing sum_sqs ;

Display sum_sqs.l;
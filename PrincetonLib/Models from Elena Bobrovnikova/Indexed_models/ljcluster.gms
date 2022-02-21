* ljcluster.mod       OUR2-AY-V20-0
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Lennard-Jones Clusters in d dimensions

* Ref.: The MINPACK-2 Test Problem Collection, by B.M. Averick,
* R.G. Carter, J.J. More' and G.-L. Xue. Argonne National Laboratory,
* Mathematics and Computer Science Division, Preprint MCS-P153-0692,
* June 1992, pp. 41-45.

* Number of variables: 20;
* Number of constraints: 0;
* Objective partially separable
* Objective nonconvex

$Set N1 2
$Set N2 10
* N1     - space dimension
* N2     - number of atoms
* P[*,*] - pairs  of atoms
* r[i,j] - distance separating atoms i and j

Set D /1*%n1%/;
Set I /1*%n2%/;
Alias(I,J);

Set P[I,J];

Variable  x[I,D],
          r[I,J],
          energy;

Equation  Distance[I,J]
          Defobj;

Distance[I,J]$(ord(i)>ord(j)).. r[i,j]=e= sqrt(sum{D, sqr(x[I,D] - x[J,D])}) ;

Defobj.. energy=e=sum{i,sum{j$(ord(i)>ord(j)),(1/(power(r[i,j],12))-2/(power(r[i,j],6)))}};

X.lo[I,D]=1;
X.l[I,D]=ord(i);
r.lo[i,j]=0.8;

option domlim=9999;

Model ljcluster /all/;
Solve ljcluster using nlp minimize energy;
display energy.l;

/*Provide dimension of the problem.  Integer >= 1.*/
#define N 17
/*Provide the diameter of the feasible region.*/
/*Provide maximum number of iterations.*/
#define MAXITER 100*N*N/*500*N */

#define PI 3.14159265359

void bounds(double lb[], double ub[]);
int feasible(double x[]);
double objfn(double x[]);

void bounds(double lb[], double ub[])
/*Provide lower and upper bounds for each of N variables.
 Number of bounds is equal to N.*/
{
	int i;

	for (i=0; i<N; i++)
	{
		lb[i] = -32768;
		ub[i] = 32768;
	}

}

int feasible(double x[])
/*Test feasibility of x.  Return 1 if feasible, 0 if not.*/
{
	return 1;
}

double objfn(double x[])
/*Calculate objective function value of x[].*/
{
	int i, j, m=100;
	double sum=0.0;
	double d=10558.145;
	double u=0.0, v=0.0, w=0.0;
	double p1, p2, p3=0.0;
	double pj;

	for (i=0; i<N; i++) u+= pow(1.2,N-i-1)*x[i];
	if (u < d)
	{
		p1 = (u-d)*(u-d);
	}
	else p1 = 0;

	for (i=0; i<N; i++) v+= pow(-1.2,N-i-1)*x[i];
	if (v < d)
	{
		p2 = (v-d)*(v-d);
	}
	else p2 = 0;

	for (j=0; j<=m; j++) 
	{
		w = 0.0;
		for (i=0; i<N; i++) w+= pow(2.0/m*j,N-i-1)*x[i];
		if (w>1) pj = (w-1)*(w-1);
		else if (w<-1) pj = (w+1)*(w+1);
		else pj = 0.0;
		p3 += pj;
	}

	sum = p1+p2+p3;

    return (sum);

}

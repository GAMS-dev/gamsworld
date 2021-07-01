/*Provide dimension of the problem.  Integer >= 1.*/
#define N 20
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
		lb[i] = 0;
		ub[i] = PI;
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
	int j;
	double sum=0.0, prod1=1.0, prod2=1.0;
	double A=2.5, B=5.0, z=PI/6;

	for (j=0; j<N; j++)
	{
		prod1 *= sin(x[j]-z);
		prod2 *= sin(B*(x[j]-z));
	}
	sum = -1*(A*prod1 + prod2);

	return (sum);

}

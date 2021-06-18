/*Provide dimension of the problem.  Integer >= 1.*/
#define N 10
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
		lb[i] = -1.0*N*N;
		ub[i] = 1.0*N*N;
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
	int i;
	double sum=0.0, obj1=0.0, obj2=0.0;

	for (i=0; i<N; i++)
	{
		obj1 += pow(x[i]-1.0,2);
	}
	for (i=1; i<N; i++)
	{
		obj2 += x[i]*x[i-1];
	}

	sum = obj1-obj2;

	return (sum);

}

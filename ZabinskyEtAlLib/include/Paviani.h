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
		lb[i] = 2;
		ub[i] = 10;
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
	double sum=0.0, sum1=0.0, prod1=1.0, prod=1.0;

	for (j=0; j<N; j++)
	{
		prod1 = prod1*x[j];
		sum1 = sum1 + pow((double) log(x[j]-2),2) + pow((double) log(10-x[j]),2);
	}

	prod = pow((double) prod1,0.2);
	sum = sum1-prod;

	return (sum);

}

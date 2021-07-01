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
  lb[0] = -1;
  ub[0] = 1;
  lb[1] = -1;
  ub[1] = 1;
  lb[2] = -1;
  ub[2] = 1;
  lb[3] = -1;
  ub[3] = 1;
  lb[4] = -1;
  ub[4] = 1;
  lb[5] = -1;
  ub[5] = 1;
  lb[6] = -1;
  ub[6] = 1;
  lb[7] = -1;
  ub[7] = 1;
  lb[8] = -1;
  ub[8] = 1;
  lb[9] = -1;
  ub[9] = 1;

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
	double sum=0.;

	for (j=0; j<N; j++)
	{
		sum+=x[j]*x[j];
	}
	sum = -exp(-.5*sum);

	return (sum);

}

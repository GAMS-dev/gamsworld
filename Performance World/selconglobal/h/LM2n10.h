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
  lb[0] = -5;
  ub[0] = 5;
  lb[1] = -5;
  ub[1] = 5;
  lb[2] = -5;
  ub[2] = 5;
  lb[3] = -5;
  ub[3] = 5;
  lb[4] = -5;
  ub[4] = 5;
  lb[5] = -5;
  ub[5] = 5;
  lb[6] = -5;
  ub[6] = 5;
  lb[7] = -5;
  ub[7] = 5;
  lb[8] = -5;
  ub[8] = 5;
  lb[9] = -5;
  ub[9] = 5;
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
	double sum=0., zw1, zw2;

	zw1 = pow(sin(3*PI*x[0]),2);
	zw2 = pow(x[N-1]-1,2)*(1+pow(sin(2*PI*x[N-1]),2));

	for (j=0; j<(N-1); j++)
	{
		zw1 += pow(x[j]-1,2)*(1+pow(sin(3*PI*x[j+1]),2));
	}
	sum = .1*(zw1+zw2);

	return (sum);

}

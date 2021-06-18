/*Provide dimension of the problem.  Integer >= 1.*/
#define N 4
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
  lb[0] = -10;
  ub[0] = 10;
  lb[1] = -10;
  ub[1] = 10;
  lb[2] = -10;
  ub[2] = 10;
  lb[3] = -10;
  ub[3] = 10;

}

int feasible(double x[])
/*Test feasibility of x.  Return 1 if feasible, 0 if not.*/
{
	return 1;
}

double objfn(double x[])
/*Calculate objective function value of x[].*/
{
	double sum=0.;

	sum = (x[0]+10.*x[0])*(x[0]+10.*x[0]) + 5.*(x[2]-x[3])*(x[2]-x[3]);
	sum = sum + pow((x[1]-2.*x[2]),4) + 10.*pow((x[0]-x[3]),4);

	return (sum);

}

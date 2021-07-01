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
  lb[0] = -512;
  ub[0] = 512;
  lb[1] = -512;
  ub[1] = 512;
  lb[2] = -512;
  ub[2] = 512;
  lb[3] = -512;
  ub[3] = 512;
  lb[4] = -512;
  ub[4] = 512;
  lb[5] = -512;
  ub[5] = 512;
  lb[6] = -512;
  ub[6] = 512;
  lb[7] = -512;
  ub[7] = 512;
  lb[8] = -512;
  ub[8] = 512;
  lb[9] = -512;
  ub[9] = 512;

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
		sum+=x[j]*x[j]-10.*cos(2.*PI*x[j])+10.;
	}

	return (sum);

}

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
  lb[0] = -500;
  ub[0] = 500;
  lb[1] = -500;
  ub[1] = 500;
  lb[2] = -500;
  ub[2] = 500;
  lb[3] = -500;
  ub[3] = 500;
  lb[4] = -500;
  ub[4] = 500;
  lb[5] = -500;
  ub[5] = 500;
  lb[6] = -500;
  ub[6] = 500;
  lb[7] = -500;
  ub[7] = 500;
  lb[8] = -500;
  ub[8] = 500;
  lb[9] = -500;
  ub[9] = 500;

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
	double sum=0.,prod=1.;

	for (j=0; j<N; j++)
	{
		sum+=x[j]*x[j];
		prod*=cos(x[j]/sqrt((double)(j+1)));
	}
	sum=sum/4000.-prod+1.;

	return (sum);

}

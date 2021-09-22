/*Provide dimension of the problem.  Integer >= 1.*/
#define N 5
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
  lb[0] = -100;
  ub[0] = 100;
  lb[1] = -100;
  ub[1] = 100;
  lb[2] = -100;
  ub[2] = 100;
  lb[3] = -100;
  ub[3] = 100;
  lb[4] = -100;
  ub[4] = 100;
 
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
  double sum=0;

  for (j=0; j<N; j++)
  { 
	  sum+=x[j]*x[j];
  }
  sum=sqrt(sum);
  sum = -cos(2.*PI*sum)+.1*sum+1.;

  return (sum);
}

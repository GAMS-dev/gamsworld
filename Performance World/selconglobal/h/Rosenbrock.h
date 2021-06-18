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
  lb[0] = -30;
  ub[0] = 30;
  lb[1] = -30;
  ub[1] = 30;
  lb[2] = -30;
  ub[2] = 30;
  lb[3] = -30;
  ub[3] = 30;
  lb[4] = -30;
  ub[4] = 30;
  lb[5] = -30;
  ub[5] = 30;
  lb[6] = -30;
  ub[6] = 30;
  lb[7] = -30;
  ub[7] = 30;
  lb[8] = -30;
  ub[8] = 30;
  lb[9] = -30;
  ub[9] = 30;

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
  double sum=0,a=0.,b=0.;

  for (j=0; j<N-1; j++)
  { 
	  a=x[j]*x[j]-x[j+1];
	  b=1.-x[j];
	  sum+=100.*a*a+b*b;	  
  }
  
  return (sum);
}

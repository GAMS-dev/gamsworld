/*Provide dimension of the problem.  Integer >= 1.*/
#define N 2
/*Provide the diameter of the feasible region.*/
/*Provide maximum number of iterations.*/
#define MAXITER 100*N*N /*500*N */

#define PI 3.14159265359

void bounds(double lb[], double ub[]);
int feasible(double x[]);
double objfn(double x[]);

void bounds(double lb[], double ub[])
/*Provide lower and upper bounds for each of N variables.
 Number of bounds is equal to N.*/
{
  lb[0] = -1.5;
  ub[0] = 4;
  lb[1] = -3;
  ub[1] = 3;
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

    sum = sin((x[0]+x[1])) + pow(x[0]-x[1],2) - 1.5*x[0] + 2.5*x[1] + 1.;  
	
	return (sum);

}

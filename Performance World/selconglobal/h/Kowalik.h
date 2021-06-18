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
  lb[0] = 0;
  ub[0] = .42;
  lb[1] = 0;
  ub[1] = .42;
  lb[2] = 0;
  ub[2] = .42;
  lb[3] = 0;
  ub[3] = .42;

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
	double sum=0.;
	static double a[11] = {.1957, .1947, .1735, .16, .0844, .0627, .0456, .0342, .0323, .0235, .0246};

	static double b[11] = {.25, .5, 1, 2, 4, 6, 8, 10, 12, 14, 16};

 

	for (i=0; i<11; i++){
		sum = sum + pow((a[i]-x[0]*(1+x[1]*b[i])/(1+x[2]*b[i]+x[3]*b[i]*b[i])),2);
	}

	return (sum);

}

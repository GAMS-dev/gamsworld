/*Provide dimension of the problem.  Integer >= 1.*/
#define N 2
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
  lb[0] = -2;
  ub[0] = 2;
  lb[1] = -2;
  ub[1] = 2;
   
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
	static double a[5] = {.5, 1.2, 1., 1., 1.2};
	static double b[5] = {0., 1., 0., -.5, 0.};
	static double c[5] = {0., 0., -.5, 0., 1.};
	static double d[5] = {.1, .5, .5, .5, .5};



	for (i=0; i<5; i++)
	{
		sum = sum - a[i]*exp(-(pow(x[0]-b[i],2)+pow((x[1]-c[i]),2))/pow(d[i],2));
	}

	return (sum);

}

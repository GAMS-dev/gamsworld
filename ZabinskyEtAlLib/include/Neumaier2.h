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
  ub[0] = 1;
  lb[1] = 0;
  ub[1] = 2;
  lb[2] = 0;
  ub[2] = 3;
  lb[3] = 0;
  ub[3] = 4;

}

int feasible(double x[])
/*Test feasibility of x.  Return 1 if feasible, 0 if not.*/
{
	return 1;
}

double objfn(double x[])
/*Calculate objective function value of x[].*/
{
	int i,k;
	double sum=0.0, sum1=0.0;
	static double b[4] = {8.0, 18.0, 44.0, 114.0};

	for (k=0; k<N; k++)
	{
		sum1 = 0.;
		for (i=0; i<N; i++)
		{
			sum1+= pow(x[i],k+1);
		}
		sum+= pow(b[k]-sum1,2);
	}

	return (sum);

}

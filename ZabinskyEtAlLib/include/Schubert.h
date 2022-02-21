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
  lb[0] = -10;
  ub[0] = 10;
  lb[1] = -10;
  ub[1] = 10;
  
}

int feasible(double x[])
/*Test feasibility of x.  Return 1 if feasible, 0 if not.*/
{
	return 1;
}

double objfn(double x[])
/*Calculate objective function value of x[].*/
{
	int i,j;
	double sum=0., prod=1.;


	for (i=0; i<N; i++)
	{
		sum = 0.;
		for (j=1; j<=5; j++)
			sum = sum + j*cos((j+1)*x[i]+j);
		prod = prod*sum;
	}
	
    return (prod);

}

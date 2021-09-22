/*Provide dimension of the problem.  Integer >= 1.*/
#define N 3
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
  ub[1] = 1;
  lb[2] = 0;
  ub[2] = 1;
   
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
	double subsum,dist=0.,sum=0.;
	static double a[4][3] = {
		{3, 10, 30},
		{.1, 10, 35},
		{3, 10, 30},
		{.1, 10, 35}};

	static double c[4] = {1, 1.2, 3, 3.2};
	static double p[4][3] = {
		{.3689, .117, .2673},
		{.4699, .4387, .747},
		{.1091, .8732, .5547},
		{.03815, .5743, .8828}};


	for (i=0; i<5; i++)
	{
		subsum=0.;
		for (j=0; j<N; j++)
		{
    		subsum = subsum - a[i][j]*pow((x[j]-p[i][j]),2);
		}
		sum = sum - c[i]*exp(subsum);
	}

	return (sum);

}

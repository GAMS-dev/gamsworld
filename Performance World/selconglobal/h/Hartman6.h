/*Provide dimension of the problem.  Integer >= 1.*/
#define N 6
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
  lb[3] = 0;
  ub[3] = 1;
  lb[4] = 0;
  ub[4] = 1;
  lb[5] = 0;
  ub[5] = 1;
   
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
	static double a[4][6] = {
		{10, 3, 17, 3.5, 1.7, 8},
		{.05, 10, 17, .1, 8, 14},
		{3, 3.5, 1.7, 10, 17, 8},
		{17, 8, .05, 10, .1, 14}};

	static double c[5] = {1, 1.2, 3, 3.2};
	static double p[4][6] = {
		{.1312, .1696, .5569, .0124, .8283, .5886},
		{.2329, .4135, .8307, .3736, .1004, .9991},
		{.2348, .1451, .3522, .2883, .3047, .6650},
		{.4047, .8828, .8732, .5743, .1091, .0381}};


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

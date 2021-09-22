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
  lb[0] = 0;
  ub[0] = 10;
  lb[1] = 0;
  ub[1] = 10;
  lb[2] = 0;
  ub[2] = 10;
  lb[3] = 0;
  ub[3] = 10;
  lb[4] = 0;
  ub[4] = 10;
  lb[5] = 0;
  ub[5] = 10;
  lb[6] = 0;
  ub[6] = 10;
  lb[7] = 0;
  ub[7] = 10;
  lb[8] = 0;
  ub[8] = 10;
  lb[9] = 0;
  ub[9] = 10;
  
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
	double dx,dist,sum=0.;
	static double a[5][10] = {
	{9.681, 0.667, 4.783, 9.095, 3.517, 9.325, 6.544, 0.211, 5.122, 2.020},
	{9.400, 2.041, 3.788, 7.931, 2.882, 2.672, 3.568, 1.284, 7.033, 7.374},
	{8.025, 9.152, 5.114, 7.621, 4.564, 4.711, 2.996, 6.126, 0.734, 4.982},
	{2.196, 0.415, 5.649, 6.979, 9.510, 9.166, 6.304, 6.054, 9.377, 1.426},
	{8.074, 8.777, 3.467, 1.867, 6.708, 6.349, 4.534, 0.276, 7.633, 1.567}};

	static double c[5] = {0.806,0.517,0.1,0.908,0.965};

	for (i=0; i<5; i++)
	{
		dist=0;
		for (j=0; j<N; j++)
		{
    		dx=x[j]-a[i][j];
			dist+=dx*dx;
		}
		sum-=c[i]*(exp(-dist/PI)*cos(PI*dist));
	}

	return (sum);

}

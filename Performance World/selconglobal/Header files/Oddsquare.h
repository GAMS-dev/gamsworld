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
  lb[0] = -15;
  ub[0] = 15;
  lb[1] = -15;
  ub[1] = 15;
  lb[2] = -15;
  ub[2] = 15;
  lb[3] = -15;
  ub[3] = 15;
  lb[4] = -15;
  ub[4] = 15;
  lb[5] = -15;
  ub[5] = 15;
  lb[6] = -15;
  ub[6] = 15;
  lb[7] = -15;
  ub[7] = 15;
  lb[8] = -15;
  ub[8] = 15;
  lb[9] = -15;
  ub[9] = 15;
  
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
	double result,dist=0,dx=0,max_dist=0;
	static double center_point[]={1., 1.3, .8, -.4, -1.3, 1.6, -.2, -.6, .5, 1.4, 1., 1.3, .8, -.4, -1.3, 1.6, -.2, -.6, .5, 1.4};

	for (j=0; j<N; j++)
	{
		dx=fabs(x[j]-center_point[j]);
		dist+=dx*dx;
		if (dx>max_dist) max_dist=dx;
	}
	dist=sqrt(dist);
	max_dist=sqrt((double)N*max_dist*max_dist);
	result = (exp(-max_dist/(2.*PI))*cos(PI*max_dist))*(1.+0.2*dist/(max_dist+.01));

	return (-result);

}

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
  ub[0] = 10;
  lb[1] = 0;
  ub[1] = 10;
  lb[2] = 0;
  ub[2] = 10;
  lb[3] = 0;
  ub[3] = 10;
      
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
	double den,sum=0.;
	static double a[7][4] = {
		{4, 4, 4, 4},{1, 1, 1, 1},
		{8, 8, 8, 8},{6, 6, 6, 6},
		{3, 7, 3, 7},{2, 9, 2, 9},
		{5, 5, 3, 3}};
	static double c[7]={.1,.2,.2,.4,.4,.6,.3};
	
	for (i=0; i<7; i++) {
		den = 0.;
		for (j=0; j<N; j++) {
			den = den + pow((x[j]-a[i][j]),2);
		}
		sum = sum - 1.0/(den + c[i]);
	}

	return sum;
}
	




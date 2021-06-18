#include <stdio.h>
#include <string.h>
#include <math.h>
#ifndef instance
#error no instance defined
#else
#include instance
#endif

int main(int argc, char *argv[]) {
  FILE *fp;
  char fname[255]=instance;
  int i,j; double f,d, x[N+1], tol=1e-6;

  if (argc>1) tol=atof(argv[1]);
  fname[strlen(fname)-2] = '\0'; strcat(fname,".txt");
  printf("Instance=%s tolerance=%e\n", fname, tol);
  i=0; j=0;
  if (NULL==(fp=fopen(fname,"r"))) exit(1);
  while (fscanf(fp,"%lf", &(x[i++])) != EOF) {
    if (N+1==i) {
      /* for (j=0; j<=N; j++) printf("j=%d x[j]=%f\n",j,x[j]); */

      j++; f = objfn(x); d = (f-x[N])*(f-x[N]);
      if (d>tol) printf("line %d failed difference %f\n", j, d);
      // printf("%d %f\n", j,f);
      i=0;
    }
  }
  printf("%d Tests performed. All done.\n", j);
}

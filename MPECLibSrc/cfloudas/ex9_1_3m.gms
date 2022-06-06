* Test problem 9.2.3 in the Test Collection Book
* Test problem 9.1.3 in the web page
* Test problem from Candler-Townsley 82
* modified by Steven Dirkse:
*   - back to "original form" (EC not done as slacks)
*   - put into matrix notation

SET i /i1*i5/; 
SET jx /jx1*jx2/;
SET jy /jy1*jy3/;

table A(i,jy)
	jy1	jy2	jy3
i1	-1	 1	 1
i2	-1	 2	-0.5
i3	 2	-1	-0.5	;

parameter coutx(jx) /
jx1	 -8
jx2	 -4
/;

parameter couty(jy) /
jy1	  4
jy2	 -40
jy3	 -4
/;

parameter cin(jy) /
jy1	 1
jy2	 1
jy3	 2
/;

parameter b(i) /
i1	 1
i2	 1
i3	 1
/;

table E(i,jx)
	jx1	jx2
i1
i2	 2
i3		 2	;

VARIABLES

z;

POSITIVE VARIABLES

x(jx), y(jy), u(i);

EQUATIONS

ob, con(i), kt(jy);

* Outer Objective function

ob .. sum {jx, coutx(jx)*x(jx)} + sum {jy, couty(jy)} =e= z;

* KKT conditions for the inner problem optimum

con(i) ..  b(i) =G= sum {jx, E(i,jx)*x(jx)} + sum {jy, A(i,jy)*y(jy)};
kt(jy) ..  cin(jy) + sum {i, u(i)*A(i,jy)} =G= 0;

MODEL BARDFALK / ob, con.u, kt.y /;

SOLVE BARDFALK USING MPEC MINIMIZING z;

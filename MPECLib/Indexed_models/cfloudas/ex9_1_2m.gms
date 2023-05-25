* Test problem 9.2.3 in the Test Collection Book
* Test problem 9.1.2 in the web page
* Test problem from Clark and Westerberg 1990
* modified by Steven Dirkse:
*   - back to "original form" (EC not done as slacks)
*   - put into matrix notation

SET i /i1*i4/; 
SET j /j1/;

table A(i,j)
	j1
i1	 1
i2	 2
i3	-1
i4	-1	;

parameter c(j) /
j1	 1
/;

parameter b(i) /
i1	 3
i2	 12
i3	 12
i4	 0
/;

parameter E(i) /
i1	 -1
i2	  1
i3	  4
/;

VARIABLES

y(j), z;

POSITIVE VARIABLES

x, u(i);

EQUATIONS

ob, con(i), kt(j);

* Outer Objective function

ob.. - x - 3*y('j1') =e= z;

* KKT conditions for the inner problem optimum

con(i) ..  b(i) =G= E(i)*x + sum {j, A(i,j)*y(j)};
kt(j)  ..  c(j) + sum {i, u(i)*A(i,j)} =E= 0;

MODEL LIU / ob, con.u, kt.y /;

SOLVE LIU USING MPEC MINIMIZING z;

* Test problem 9.2.5 in the Test Collection Book
* Test problem 9.1.4 in the web page
* Test problem from Clark and Westerberg 1988
* modified by Steven Dirkse:
*   - back to "original form" (EC not done as slacks)
*   - put into matrix notation

SET i /i1*i3/; 
SET j /j1/;

parameter c(j) /
j1	 1
/;

table A(i,j)
	j1
i1	 1
i2	 5
i3	-3	;

parameter b(i) /
i1	 0
i2	 108
i3	-4
/;

parameter E(i) /
i1	-2
i2	 2
i3	 2
/;

VARIABLES

z;

POSITIVE VARIABLES

x, y(j), u(i);

EQUATIONS

ob, con(i), kt(j);

* Outer Objective function

ob.. - x - 3*y('j1') =e= z;

* KKT conditions for the inner problem optimum

con(i) ..  b(i) =G= E(i)*x + sum {j, A(i,j)*y(j)};
kt(j)  ..  c(j) + sum {i, u(i)*A(i,j)} =G= 0;

MODEL LIU / ob, con.u, kt.y /;

SOLVE LIU USING MPEC MINIMIZING z;

* Test problem 9.2.1 in the Test Collection Book
* Test problem 9.1.1 in the web page
* Test problem from Clark and Westerberg 1990
* modified by Steven Dirkse:
*   - back to "original form" (EC not done as slacks)
*   - put into matrix notation

SET i /i1*i5/; 
SET j /j1*j2/;

table A(i,j)
	j1	j2
i1	 1	 4
i2	 3	-2
i3	 1	-3
i4	-1
i5	1		;

parameter c(j) /
j1	 -1
/;

parameter b(i) /
i1	 16
i2	 48
i3	 -12
i4	 0
i5	 4
/;

parameter E(i) /
i1	 -2
i2	 8
i3	 -2
/;


VARIABLES

y(j), z;

POSITIVE VARIABLES

x, u(i);

EQUATIONS

ob, con(i), kt(j);

* Outer Objective function

ob.. - x - 3*y('j1') + 2*y('j2') =e= z;

* KKT conditions for the inner problem optimum

con(i) ..  b(i) =G= E(i)*x + sum {j, A(i,j)*y(j)};
kt(j)  ..  c(j) + sum {i, u(i)*A(i,j)} =E= 0;

MODEL CW90 / ob, con.u, kt.y /;

SOLVE CW90 USING MPEC MINIMIZING z;


*==>mss.gms
$offsymxref offsymlist offuellist offuelxref
$inlinecom /* */

/* ******************************************************

A Stackelberg game, taken from a non-cooperative game example
in which a Nash equilibrium is sought.
The Stackelberg game differs from the original in that the
producer represented by function 1 now anticipates the prices
set by all other firms.

References:
F.H. Murphy, H.D. Sherali, and A.L. Soyster, "A mathematical
programming approach for determining oligopolistic market
equilibrium", Mathematical Programming 24 (1986) 92-106
P.T. Harker, "Accelerating the convergence . . .", Mathematical
Programming 41 (1988) 29 - 59.

********************************************************** */
/* stackelberg solutions, upper prod. bound = 150:
gamma	q(1)	profit(1)
1.0	55.5483	343.3453
1.1	42.5354	203.1551
1.3	24.142	68.1356
1.5	12.388	19.1540
1.7	4.7536	3.1612
*/

set	I		firms	/ 1 * 5 /,
	IP(I)		nash firms;

IP(I) = ord(I) gt 1;		/* all but the first firm behave nash */

alias (J,I);

scalar
  gamma		/ 1.0 /;

parameter c(I)	/
1	10
2	8
3	6
4	4
5	2
/,

	L(I)	/
1	.2
2	.2
3	.2
4	.2
5	.2
/,

	beta(I)	/
1	1.2
2	1.1
3	1.0
4	.9
5	.8
/;

variables
	profit		'profit for leader firm',
	q(I)		'production vector';

equations
	profitdef,
	feas(I) 	'-delprofit - p - q(I)*delp';

profitdef ..  profit =e=
	c("1") * q("1")
	  + beta("1")/(1+beta("1")) * L("1")**(1/beta("1"))
          * q("1")**((1+beta("1"))/beta("1"))
	- q("1") * (5000 / (sum(J, q(J))))**(1/gamma)
	;

feas (IP(I)) ..
	c(I) + (L(I) * q(I))**(1/beta(I))

	- (5000 / (sum(J, q(J))))**(1/gamma)

	- q(I) * (-1/gamma) *
	 ( (5000 / (sum(J, q(J))))**(1/gamma) ) / sum(J, q(J))

	=g= 0;

model nash	/ profitdef, feas.q /;

q.lo(I) = 0;
q.up(I) = 150;
q.l(I) = (q.lo(I) + q.up(I)) / 2;
solve nash minimizing profit using mpec;

gamma = 1.7;
q.l(I) = (q.lo(I) + q.up(I)) / 2;
solve nash minimizing profit using mpec;

q.up(I) = 20;
q.l(I) = (q.lo(I) + q.up(I)) / 2;
solve nash minimizing profit using mpec;




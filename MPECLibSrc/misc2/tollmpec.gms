$TITLE TRAFFIC EQUILIBRIUM - MPEC FORMULATION
$inlinecom /* */

SCALARS
  profitmpec,
  profitmcp,
  RHO	/ 0.3 /;

SET     N NODES /1*24/;

ALIAS (I,N), (J,N), (K,N), (L,N);

SET     DEST(J)		IDENTIFICATION OF DESTINATION NODES,
	ACTIVE(I,J,K)	IDENTIFIES THE SET OF ACTIVE ARCS,
        A(N,N)		ARCS,
	err(N,N)	error checking,
        tolled(N,N)	tolled arcs;

$INCLUDE siouxfls.dat

ACTIVE(A,K) = YES$DEST(K);
ACTIVE(I,J,I) = NO;
ACTIVE(I,I,J) = NO;

TOLLED("4","5") = yes;
TOLLED("4","11") = yes;
TOLLED("10","15") = yes;

err(TOLLED) = not A(TOLLED);

abort$(card(err)) "Tolled arcs must be arcs!", err;

VARIABLES       X(I,J,K)        FLOW TO K ALONG ARC I-J,
                T(I,J)          TIME TO GET FROM NODE I TO NODE J,
                F(I,J)          AGGREGATE FLOW ON ARC I-J,
		trffcost(I,J)	tarriff on arc I-J;

EQUATION        RATIONAL(I,J,K)         COST MINIMIZATION
                BALANCE(I,J)            MATERIAL BALANCE
                FDEF(I,J)               AGGREGATE FLOW DEFINITION;

*       The following constraint imposes individual rationality.

*       The time to reach node K from node I is no greater than
*       the time required to travel from node I to node J and then
*       from node J to node K.

RATIONAL(I,J,K)$ACTIVE(I,J,K)..
	COEF_A(I,J) + COEF_B(I,J) * POWER(F(I,J)/COEF_K(I,J),4) + T(J,K)
        + 100 * trffcost(I,J)$tolled(I,J)
		=G= T(I,K);

*       The flow into a node equals demand plus flow out:

BALANCE(I,J)$T.UP(I,J)..
	SUM(K$ACTIVE(I,K,J),X(I,K,J)) =G=
	SUM(K$ACTIVE(K,I,J),X(K,I,J)) + D0(I,J);

*       Flow on a given arc constitutes flows to all destinations K:

FDEF(A)..
        F(A) =E= SUM(K$ACTIVE(A,K), X(A,K));

*       Here is the MCP model:

MODEL TRAFFIC / RATIONAL.X, BALANCE.T, FDEF.F /;

*       Initial levels for arc flows are needed so that we can
*       properly evaluate the nonlinear functions:

F.L(A) = COEF_K(A);
X.L(A,K) = 0.0;
T.L(I,J)   = COEF_A(I,J)$A(I,J) + SMIN(K$A(I,K),COEF_A(I,K))$(NOT A(I,J));

*       Lower bounds are zero for flows, positive for times:

X.LO(A,K) = 0.0;
T.LO(I,J)   = 0.0;

*       Fixing values causes corresponding equilibrium conditions
*       to be dropped, or makes the model OK as an MCP if there is
*       no corresponding equilibrium condition.

T.FX(I,I) = 0;
F.FX(I,J)$(NOT A(I,J)) = 0;
trffcost.fx(tolled(I,J)) = 0.0;
traffic.holdfixed = 1;
traffic.optfile = 1;

TRAFFIC.ITERLIM = 8000;
* SOLVE TRAFFIC USING MCP;

profitmcp = sum(ACTIVE(tolled(I,J),K), trffcost.l(I,J) * F.l(I,J));
display profitmcp;


* ++++++++ begin MPEC stuff +++++++++++++++++++++++

variable nprofit;
equation profitdef;

* why the constant? Bundle is _very_ sensitive to scaling!
profitdef .. nprofit =e= (-1) * (.1) * sum( ACTIVE(tolled(I,J),K),
                               trffcost(I,J) * F(I,J) );

MODEL MTRAFFIC / RATIONAL.X, BALANCE.T, FDEF.F,
                 profitdef /;

x.l(ACTIVE(tolled(I,J),K)) = x.l(I,J,K) + .001;

trffcost.lo( '4', '5') = .38;
trffcost.up( '4', '5') = .45;

trffcost.lo( '4','11') = .50;
trffcost.up( '4','11') = .55;

trffcost.lo('10','15') = .34;
trffcost.up('10','15') = .38;

trffcost.l(tolled(I,J)) = (trffcost.up(I,J) + trffcost.lo(I,J)) / 2;

option integer4 = 1500;	/* set maximum compfg call limit */
option integer5 = 400;	/* set maximum iteration limit */
option real4 = 5.0e-4;	/* set convgence tolerance */
option real5 = 22;	/* set fmin to -real5 */
			/* bug in GAMS requires realX >= 0 */

mtraffic.holdfixed = 1;
solve mtraffic using mpec minimizing nprofit;

$TITLE  Multiple equilibria in a simple GE model

$Ontext

This is a simple general equilibrium model with multiple (three)
isolated equilibria.  There are four commodities, two Leontief
production activities, and four consumers with Cobb- Douglas
preferences.

Kehoe, T, A Numerical Investigation of the Multiplicity of
Equilibria.  Mathematical Programming Study 23 (1985), 240-258.

MILES may find any of the three equilibria depending on the starting
point.

$Offtext

SET     G       GOODS /G1*G4/
        S       SECTORS /S1,S2/
        C       CONSUMERS /C1*C4/;

TABLE E(G,C) Factor endowments
                C1      C2      C3      C4
        G1      5
        G2              5
        G3                      40
        G4                              40

TABLE ALPHA(G,C)  Budget shares
                C1      C2      C3      C4
        G1      0.52    0.86    0.50    0.06
        G2      0.40    0.10    0.20    0.25
        G3      0.04    0.02    0.2975  0.0025
        G4      0.04    0.02    0.0025  0.6875

TABLE A(G,S)  Activity analysis matrix
                S1      S2
        G1       6      -1
        G2      -1       3
        G3      -4      -1
        G4      -1      -1

POSITIVE
VARIABLES       Y(s)    Activity level
                P(g)    Relative price;
Variables
                H(c)    Income level;

EQUATIONS       PROFIT, MARKET, INCOME;

PROFIT(s)..     SUM(g, -a(g,s)*P(g)) =G= 0;

MARKET(g)..     SUM(c, e(g,c)) + SUM(s, a(g,s)*Y(s))
                                =G= SUM(c, alpha(g,c) * H(c)/P(g));

INCOME(c)..     H(c) =E= SUM(g, P(g) * e(g,c));

P.L(G) = 1;
* Protect against domain violations
P.LO(G) = 1e-4;

P.FX("G1") = 1;

equation objdef;
variable obj;

objdef.. obj =e= - sum{G,P(G)};

MODEL KEHOE /objdef, PROFIT.Y, MARKET.P, INCOME/;

Solve KEHOE using MPEC min obj;

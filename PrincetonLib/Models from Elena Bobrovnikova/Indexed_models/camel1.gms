* camel1.mod OBR2-AN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Six Hump Camel back

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, p. 33 (problem "C").

* Number of variables: 2
* Number of constraints: 4
* Onjective nonseparable
* Objective nonconvex
* Simple bound constraints

* There are two global minima with Fhump = -1.031628453,
* (0.089842,-0.712656) and (-0.089842, 0.712656).
* This model in AMPL language give the first solution.


set i /1*2/;
variable
     x[i],Fhump;
equation
defobj;
defobj..

Fhump=e=4*sqr(x['1'])-2.1* power(x['1'],4)
                     +(x['1']*x['1']*x['1']*x['1']*x['1']*x['1'] )/3
                     +x['1']*x['2'] - 4*sqr(x['2'])
                     +4*power(x['2'],4); 

x.l[i] = 1;
x.lo[i]=-5;
x.up[i]= 5;
model camel1 /all/;
solve camel1 using nlp minimaze Fhump;
display Fhump.l;
display x.l;

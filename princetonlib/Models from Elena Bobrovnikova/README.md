# Original AMPL coding by Elena Bobrovnikova translated to GAMS(summer 1996 at Bell Labs).

This directory contains a collection of test problems for nonlinear programming expressed as GAMS models translated from AMPL models. Many are for a fixed problem size and contain a data section.  Some are pure model
files describing families of problems, with default values that specify a small instance; such models are noted with "V" in the classification table below.

Many of the problems were selected and coded in AMPL by Elena Bobrovnikova (at Bell Labs in the summer of 1996), with some subsequent editing by David M. Gay; these problems contain the comment "Original AMPL coding by Elena Bobrovnikova"


Each problem is classified as in the CUTE collection of test problems, except that problems with a V code for the number of variables or constraints have the default value for that number after the V.
The classification is a string of the form

	OCSD-KI-n-m

in which the letters are replaced by appropriate codes, as follows:

O = objective code:
	C = Constant
	L = Linear
	N = No objective
	Q = Quadratic
	S = Sum of squares
	O = Other (none of the above)

C = constraint type:
	B = Bounds on variables
	L = Linear
	N = linear Network
	Q = Quadratic
	U = Unconstrained
	X = just fiXed variables
	O = Other (none of the above)

S = smoothness:
	R = Twice continuously differentiable
	I = Other

D = degree of available derivatives: always 2 here; 0, 1, or 2 in general

K = kind of the problem:
	A = Academic
	M = Modeling
	R = Real application

I = internal variables:
	Y = yes, problems has useful internal variables
	N = no useful internal variables

n = number of variables; V = varies (followed by default)

m = number of constraints; V = varies (followed by default)


Problem		Classification

blend	LOR2-MN-24-38
branin	OBR2-AN-2-4
camel1	OBR2-AN-2-4
chemeq	OLR2-MY-38-50
chi	OBR2-AN-2-4
gold	OBR2-AN-2-4
gridneta	OBR2-MY-V60-V96
griewank	OBR2-AN-2-4
hs105	OBR2-RN-8-16
hs106	LQR2-MN-8-22
hs109	OOR2-MY-9-26
hs111	OOR2-MN-10-23
hs112	OLR2-MY-10-13
hs114	QOR2-MY-10-31
hs116	LQR2-MN-13-41
hs15	OQR2-MN-2-3
hs23	QQR2-MN-2-9
hs35	QLR2-MN-3-4
hs44	QLR2-MN-4-10
hs5		OBR2-MN-2-4
hs54	OLR2-MN-6-13
hs6		QQR2-RN-2-1
hs62	OLR2-MY-3-7
hs64	OOR2-MN-3-4
hs8		CQR2-RN-2-2
hs87	LOR2-RN-11-24
kowalik	OBR2-AN-4-8
levy3	OBR2-AN-2-4
ljcluster	OUR2-AY-V20-0
osborne1	OBR2-MN-5-10
powell	OBR2-AY-4-4
price	OBR2-AN-2-4
rosenbr	OUR2-AN-2-0
s324	QQR2-AN-2-3
s383	OLR2-AN-14-29
schwefel	OBR2-AN-5-10
shekel	OUR2-AN-4-8
steenbre	ONR2-MY-540-666
tre	OBR2-AN-2-4
weapon	OLR2-MN-100-147

The original AMPL work can be found at https://vanderbei.princeton.edu/ampl/nlmodels/elena/nlmodels/index.html

Total number of models:   40

| Name      | Type | #Eqns | #Vars | #NZ | #NNZ | Bestknown Objective |
|-----------|------|-------|-------|-----|------|---------------------|
| blend     | NLP  | 15    | 25    | 361 | 288  | 0.05172772          |
| branin    | NLP  | 1     | 3     | 3   | 2    | 0.39788736          |
| camel1    | NLP  | 1     | 3     | 3   | 2    | -1.03162845         |
| chemeq    | NLP  | 15    | 41    | 116 | 40   | -1910.87044355      |
| chi       | NLP  | 1     | 3     | 3   | 2    | -6.04110051         |
| gold      | DNLP | 1     | 3     | 3   | 2    | 3.00000000          |
| gridneta  | NLP  | 1     | 73    | 73  | 72   | 0.69356981          |
| griewank  | NLP  | 1     | 3     | 3   | 2    | 0.00000000          |
| hs105     | NLP  | 1     | 3     | 3   | 2    | 0.00000000          |
| hs106     | NLP  | 7     | 9     | 21  | 8    | 7049.24801510       |
| hs109     | NLP  | 11    | 10    | 45  | 36   | 5326.85133009       |
| hs111     | NLP  | 4     | 11    | 25  | 24   | -47.76119086        |
| hs112     | NLP  | 4     | 11    | 25  | 10   | -55.13982946        |
| hs114     | NLP  | 12    | 15    | 40  | 11   | -1768.80696358      |
| hs116     | NLP  | 16    | 14    | 50  | 31   | 97.58750956         |
| hs15      | NLP  | 3     | 3     | 7   | 5    | 306.50000000        |
| hs23      | NLP  | 6     | 3     | 13  | 8    | 2.00000000          |
| hs35      | NLP  | 2     | 4     | 7   | 3    | 0.11111111          |
| hs44      | NLP  | 7     | 5     | 17  | 4    | -15.00000000        |
| hs54      | NLP  | 3     | 8     | 11  | 7    | -0.99680511         |
| hs5       | NLP  | 1     | 3     | 3   | 2    | -1.91322295         |
| hs62      | NLP  | 2     | 4     | 7   | 3    | -26272.51448732     |
| hs64      | NLP  | 2     | 4     | 7   | 6    | 6299.84242839       |
| hs6       | NLP  | 2     | 3     | 4   | 2    | 0.00000000          |
| hs87      | NLP  | 7     | 12    | 28  | 12   | 8827.59773552       |
| hs8       | NLP  | 3     | 3     | 5   | 4    | -1.00000000         |
| kowalik   | NLP  | 1     | 5     | 5   | 4    | 0.00030749          |
| levy3     | NLP  | 1     | 3     | 3   | 2    | -165.65969350       |
| ljcluster | NLP  | 46    | 66    | 271 | 225  | -19.13577015        |
| osborne1  | NLP  | 1     | 6     | 6   | 5    | 0.00005465          |
| powell    | NLP  | 1     | 5     | 5   | 4    | 0.00000000          |
| price     | NLP  | 1     | 3     | 3   | 2    | 0.00000000          |
| rosenbr   | NLP  | 3     | 5     | 8   | 3    | 0.00000000          |
| s324      | NLP  | 3     | 3     | 7   | 6    | 5.00000000          |
| s383      | NLP  | 2     | 15    | 29  | 14   | 728593.64595402     |
| schwefel  | NLP  | 1     | 6     | 6   | 5    | 0.00000000          |
| shekel    | NLP  | 1     | 5     | 5   | 4    | -10.15319968        |
| steenbre  | NLP  | 73    | 577   | 659 | 72   | 1.64000000          |
| tre       | NLP  | 1     | 3     | 3   | 2    | 0.00000000          |
| weapon    | NLP  | 13    | 101   | 201 | 65   | -1735.56957986      |

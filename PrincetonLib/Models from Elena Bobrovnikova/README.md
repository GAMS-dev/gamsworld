# Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs) translated to GAMS.

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

The original AMPL work can be found at https://vanderbei.princeton.edu/ampl/nlmodels/elena/nlmodels/index.html

Total number of models:   40

| Name      | Classification  |Type  | #Eqns | #Vars | #NZ | #NNZ |
|-----------|-----------------|------|------:|------:|----:|-----:|
| blend     |LOR2-MN-24-38    | NLP  | 15    | 25    | 361 | 288  |
| branin    |OBR2-AN-2-4      | NLP  | 1     | 3     | 3   | 2    |
| camel1    |OBR2-AN-2-4      | NLP  | 1     | 3     | 3   | 2    |
| chemeq    |OLR2-MY-38-50    | NLP  | 15    | 41    | 116 | 40   |
| chi       |OBR2-AN-2-4      | NLP  | 1     | 3     | 3   | 2    |
| gold      |OBR2-AN-2-4      | DNLP | 1     | 3     | 3   | 2    |
| gridneta  |OBR2-MY-V60-V96  | NLP  | 1     | 73    | 73  | 72   |
| griewank  |OBR2-AN-2-4      | NLP  | 1     | 3     | 3   | 2    |
| hs105     |OBR2-RN-8-16     | NLP  | 1     | 3     | 3   | 2    |
| hs106     |LQR2-MN-8-22     | NLP  | 7     | 9     | 21  | 8    |
| hs109     |OOR2-MY-9-26     | NLP  | 11    | 10    | 45  | 36   |
| hs111     |OOR2-MN-10-23    | NLP  | 4     | 11    | 25  | 24   |
| hs112     |OLR2-MY-10-13    | NLP  | 4     | 11    | 25  | 10   |
| hs114     |QOR2-MY-10-31    | NLP  | 12    | 15    | 40  | 11   |
| hs116     |LQR2-MN-13-41    | NLP  | 16    | 14    | 50  | 31   |
| hs15      |OQR2-MN-2-3      | NLP  | 3     | 3     | 7   | 5    |
| hs23      |QQR2-MN-2-9      | NLP  | 6     | 3     | 13  | 8    |
| hs35      |QLR2-MN-3-4      | NLP  | 2     | 4     | 7   | 3    |
| hs44      |QLR2-MN-4-10     | NLP  | 7     | 5     | 17  | 4    |
| hs54      |OBR2-MN-2-4      | NLP  | 3     | 8     | 11  | 7    |
| hs5       |OLR2-MN-6-13     | NLP  | 1     | 3     | 3   | 2    |
| hs62      |QQR2-RN-2-1      | NLP  | 2     | 4     | 7   | 3    |
| hs64      |OLR2-MY-3-7      | NLP  | 2     | 4     | 7   | 6    |
| hs6       |OOR2-MN-3-4      | NLP  | 2     | 3     | 4   | 2    |
| hs87      |CQR2-RN-2-2      | NLP  | 7     | 12    | 28  | 12   |
| hs8       |LOR2-RN-11-24    | NLP  | 3     | 3     | 5   | 4    |
| kowalik   |OBR2-AN-4-8      | NLP  | 1     | 5     | 5   | 4    |
| levy3     |OBR2-AN-2-4      | NLP  | 1     | 3     | 3   | 2    |
| ljcluster |OUR2-AY-V20-0    | NLP  | 46    | 66    | 271 | 225  |
| osborne1  |OBR2-MN-5-10     | NLP  | 1     | 6     | 6   | 5    |
| powell    |OBR2-AY-4-4      | NLP  | 1     | 5     | 5   | 4    |
| price     |OBR2-AN-2-4      | NLP  | 1     | 3     | 3   | 2    |
| rosenbr   |OUR2-AN-2-0      | NLP  | 3     | 5     | 8   | 3    |
| s324      |QQR2-AN-2-3      | NLP  | 3     | 3     | 7   | 6    |
| s383      |OLR2-AN-14-29    | NLP  | 2     | 15    | 29  | 14   |
| schwefel  |OBR2-AN-5-10     | NLP  | 1     | 6     | 6   | 5    |
| shekel    |OUR2-AN-4-8      | NLP  | 1     | 5     | 5   | 4    |
| steenbre  |ONR2-MY-540-666  | NLP  | 73    | 577   | 659 | 72   |
| tre       |OBR2-AN-2-4      | NLP  | 1     | 3     | 3   | 2    |
| weapon    |OLR2-MN-100-147  | NLP  | 13    | 101   | 201 | 65   |

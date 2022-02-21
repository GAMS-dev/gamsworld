# Selected Continuous Global Optimization Test Problems

The models shown are a collection of continuous global optimization test problems originally used in

A Numerical Evaluation of Several Stochastic Algorithms on Selected Continuous Global Optimization Test Problems, Ali, Khompatraporn and Zabinsky, Journal of Global Optimization (2005) 31:635-672. (https://link.springer.com/article/10.1007/s10898-004-9972-2)

The model were made available by the authors of the article in their original C format. The models were translated into GAMS by Andre Savitsky. 
In order to minimize the chance of translation errors we have been sampling random points and evaluating the objective of these points. 
The results have been exported and were compared in a C program (testme.c) that used the original C model. 
Minor adjustments to the C models have been done and users of the C files are advised to compare them with versions distributed by the authors of the paper. 
The indexed GAMS models were converted into GAMS scalar format using the CONVERT facility. The global optimum reported in the paper has been added to the scalar model.

The GAMS model translations have an additional objective variable which models the objective function to optimize. This results in the models having variables and number of nonzeroes which are one greater than the C implementations. 
The model statistics listed are from the original C model representations as they are given in the reference above.

**SELCONGLOBAL Model Statistics** 

Total number of models:   55

|GAMS/C Name    |Name in Paper                             |Type |#Eqns |#Vars |#NZ  |#NNZ |
|---------------|-----------------------------------------:|----:|-----:|-----:|----:|----:|
|Ackleys		|Ackley’s Problem (ACK)					   |NLP	 |1     |10    |10	 |10   |
|AluffiPentini	|Aluffi-Pentini’s Problem (AP)			   |NLP	 |1     |2     |2	 |2	   |
|BeckerLago		|Becker and Lago Problem (BL)			   |NLP	 |1     |2     |2	 |2	   |
|Bohachevsky1	|Bohachevsky 1 Problem (B1)				   |NLP	 |1     |2     |2	 |2	   |
|Bohachevsky2	|Bohachevsky 2 Problem (B2)				   |NLP	 |1     |2     |2	 |2	   |
|Branin			|Branin Problem (BR)					   |NLP	 |1     |2     |2	 |2	   |
|Camel3			|Camel Back-3 Three Hump Problem (CB3)	   |NLP	 |1     |2     |2	 |2	   |
|Camel6			|Camel Back-6 Six Hump Problem (CB6)	   |NLP	 |1     |2     |2	 |2	   |
|CosMix2		|Cosine Mixture Problem (CM)			   |NLP	 |1     |2     |2	 |2	   |
|CosMix4		|Cosine Mixture Problem (CM) n=4		   |NLP	 |1     |4     |4	 |4	   |
|DekkersAarts	|Dekkers and Aarts Problem (DA)			   |NLP	 |1     |2     |2	 |2	   |
|Easom			|Easom Problem (EP)						   |NLP	 |1     |2     |2	 |2	   |
|EMichalewicz	|Epistatic Michalewicz Problem (EM)		   |DNLP |1     |5     |5	 |5	   |
|Expo			|Exponential Problem (EXP)				   |DNLP |1     |10    |10	 |10   |
|GoldPrice		|Goldstein and Price Problem (GP)		   |NLP	 |1     |2     |2	 |2	   |
|Griewank		|Griewank Problem (GW)					   |NLP	 |1     |10    |10	 |10   |
|Gulf			|Gulf Research Problem (GRP)			   |NLP	 |1     |3     |3	 |3	   |
|Hartman3		|Hartman 3 Problem (H3)					   |NLP	 |1     |3     |3	 |3	   |
|Hartman6		|Hartman 6 Problem (H6)					   |NLP	 |1     |6     |6	 |6	   |
|Helical		|Helical Valley Problem (HV)			   |DNLP |1     |3     |3	 |3	   |
|Hosaki			|Hosaki Problem (HSK)					   |NLP	 |1     |2     |2	 |2	   |
|Kowalik		|Kowalik Problem (KL)					   |DNLP |1     |4     |4	 |4	   |
|LM1			|Levy and Montalvo 1 Problem (LM1)		   |NLP	 |1     |3     |3	 |3	   |
|LM2n5			|Levy and Montalvo 2 Problem (LM2)		   |NLP	 |1     |5     |5	 |5	   |
|LM2n10			|Levy and Montalvo 2 Problem (LM2) n=10	   |NLP	 |1     |10    |10	 |10   |
|McCormic		|McCormick problem (MC)					   |NLP	 |1     |2     |2	 |2	   |
|MeyerRoth		|Meyer and Roth Problem (MR)			   |NLP	 |1     |3     |3	 |3	   |
|MieleCantrell	|Miele and Cantrell Problem (MCP)		   |NLP	 |1     |4     |4	 |4	   |
|Modlangerman	|Modified Langerman Problem (ML)		   |NLP	 |1     |10    |10	 |10   |
|ModRosenbrock	|Modified Rosenbrock Problem (MRP)		   |NLP	 |1     |2     |2	 |2	   |
|MultiGauss		|Multi-Gaussian Problem (MGP)			   |NLP	 |1     |2     |2	 |2	   |
|Neumaier2		|Neumaier 2 Problem (NF2)				   |NLP	 |1     |4     |4	 |4	   |
|Neumaier3		|Neumaier 3 Problem (NF3)				   |NLP	 |1     |10    |10	 |10   |
|Oddsquare		|Odd Square Problem (OSP)				   |DNLP |1     |10    |10	 |10   |
|Paviani		|Paviani’s Problem (PP)					   |NLP	 |1     |10    |10	 |10   |
|Periodic		|Periodic Problem (PRD)					   |NLP	 |1     |2     |2	 |2	   |
|PowellQ		|Powell’s Quadratic Problem (PQ)		   |NLP	 |1     |4     |4	 |4	   |
|PriceTransistor|Price’s Transistor Modelling Problem (PTM)|DNLP |1     |9     |9	 |9	   |
|Rastrigin		|Rastrigin Problem (RG)					   |NLP	 |1     |10    |10	 |10   |
|Rosenbrock		|Rosenbrock Problem (RB)				   |DNLP |1     |10    |10	 |10   |
|Salomon		|Salomon Problem (SAL)					   |NLP	 |1     |5     |5	 |5	   |
|Schaffer1		|	Schaffer 1 Problem (SF1)			   |NLP	 |1     |2     |2	 |2	   |
|Schaffer2		|Schaffer 2 Problem (SF2)				   |NLP	 |1     |2     |2	 |2	   |
|Schubert		|Shubert Problem (SBT)					   |NLP	 |1     |2     |2	 |2	   |
|Schwefel		|Schwefel Problem (SWF)					   |DNLP |1     |10    |10	 |10   |
|Shekel5		|Shekel 5 Problem (S5)					   |NLP	 |1     |4     |4	 |4	   |
|Shekel7		|Shekel 7 Problem (S7)					   |NLP	 |1     |4     |4	 |4	   |
|Shekel10		|Shekel 10 Problem (S10)				   |NLP	 |1     |4     |4	 |4	   |
|Shekelfox5		|Shekel’s Foxholes Problem (FX)			   |NLP	 |1     |5     |5	 |5	   |
|Shekelfox10	|Shekel’s Foxholes Problem (FX) n=10	   |NLP	 |1     |10    |10	 |10   |
|Zeldasine10	|Sinusoidal Problem (SIN)				   |NLP	 |1     |10    |10	 |10   |
|STChebychev9	|Sinusoidal Problem (SIN) - 20			   |NLP	 |1     |20    |20	 |20   |
|STChebychev17	|Storn’s Tchebychev Problem (ST)		   |DNLP |1     |9     |9	 |9	   |
|Zeldasine20	|Storn’s Tchebychev Problem (ST) n=17	   |DNLP |1     |17    |17	 |17   |
|Wood			|Wood’s Problem (WP)					   |NLP	 |1     |4     |4	 |4	   |
# Selected Continuous Global Optimization Test Problems

The models shown are a collection of continuous global optimization test problems originally used in

A Numerical Evaluation of Several Stochastic Algorithms on Selected Continuous Global Optimization Test Problems, Ali, Khompatraporn and Zabinsky, Journal of Global Optimization (2005) 31:635-672. (https://link.springer.com/article/10.1007/s10898-004-9972-2)

The model were made available by the authors of the article in their original C format. The models were translated into GAMS by Andre Savitsky. 
In order to minimize the chance of translation errors we have been sampling random points and evaluating the objective of these points. 
The results have been exported and were compared in a C program (testme.c) that used the original C model. 
Minor adjustments to the C models have been done and users of the C files are advised to compare them with versions distributed by the authors of the paper. 
The raw GAMS models were converted into GAMS scalar format using the CONVERT facility. The global optimum reported in the paper has been added to the scalar model.

The GAMS model translations have an additional objective variable which models the objective function to optimize. This results in the models having variables and number of nonzeroes which are one greater than the C implementations. 
The model statistics listed are from the original C model representations as they are given in the reference above.

**SELCONGLOBAL Model Statistics** 

Total number of models:   55

|GAMS/C Name    |Name in Paper                             |Type |#Eqns |#Vars |#NZ  |#NNZ |Bestknown Objective  |
|---------------|-----------------------------------------:|----:|-----:|-----:|----:|----:|--------------------:|
|Ackleys		|Ackley’s Problem (ACK)					   |NLP	 |1     |10    |10	 |10   |0.0000		         |
|AluffiPentini	|Aluffi-Pentini’s Problem (AP)			   |NLP	 |1     |2     |2	 |2	   |-0.3523		         |
|BeckerLago		|Becker and Lago Problem (BL)			   |NLP	 |1     |2     |2	 |2	   |0.0000		         |
|Bohachevsky1	|Bohachevsky 1 Problem (B1)				   |NLP	 |1     |2     |2	 |2	   |0.0000		         |
|Bohachevsky2	|Bohachevsky 2 Problem (B2)				   |NLP	 |1     |2     |2	 |2	   |0.0000		         |
|Branin			|Branin Problem (BR)					   |NLP	 |1     |2     |2	 |2	   |0.3979		         |
|Camel3			|Camel Back-3 Three Hump Problem (CB3)	   |NLP	 |1     |2     |2	 |2	   |0.0000		         |
|Camel6			|Camel Back-6 Six Hump Problem (CB6)	   |NLP	 |1     |2     |2	 |2	   |-1.0316		         |
|CosMix2		|Cosine Mixture Problem (CM)			   |NLP	 |1     |2     |2	 |2	   |-0.2000		         |
|CosMix4		|Cosine Mixture Problem (CM) n=4		   |NLP	 |1     |4     |4	 |4	   |-0.4000		         |
|DekkersAarts	|Dekkers and Aarts Problem (DA)			   |NLP	 |1     |2     |2	 |2	   |-24776.5183	         |
|Easom			|Easom Problem (EP)						   |NLP	 |1     |2     |2	 |2	   |-1.0000		         |
|EMichalewicz	|Epistatic Michalewicz Problem (EM)		   |DNLP |1     |5     |5	 |5	   |-4.6877		         |
|Expo			|Exponential Problem (EXP)				   |DNLP |1     |10    |10	 |10   |-1.0000		         |
|GoldPrice		|Goldstein and Price Problem (GP)		   |NLP	 |1     |2     |2	 |2	   |3.0000		         |
|Griewank		|Griewank Problem (GW)					   |NLP	 |1     |10    |10	 |10   |0.0000		         |
|Gulf			|Gulf Research Problem (GRP)			   |NLP	 |1     |3     |3	 |3	   |0.0000		         |
|Hartman3		|Hartman 3 Problem (H3)					   |NLP	 |1     |3     |3	 |3	   |-3.8628		         |
|Hartman6		|Hartman 6 Problem (H6)					   |NLP	 |1     |6     |6	 |6	   |-3.3224		         |
|Helical		|Helical Valley Problem (HV)			   |DNLP |1     |3     |3	 |3	   |0.0000		         |
|Hosaki			|Hosaki Problem (HSK)					   |NLP	 |1     |2     |2	 |2	   |-2.3458		         |
|Kowalik		|Kowalik Problem (KL)					   |DNLP |1     |4     |4	 |4	   |0.0003		         |
|LM1			|Levy and Montalvo 1 Problem (LM1)		   |NLP	 |1     |3     |3	 |3	   |0.0000		         |
|LM2n5			|Levy and Montalvo 2 Problem (LM2)		   |NLP	 |1     |5     |5	 |5	   |0.0000		         |
|LM2n10			|Levy and Montalvo 2 Problem (LM2) n=10	   |NLP	 |1     |10    |10	 |10   |0.0000		         |
|McCormic		|McCormick problem (MC)					   |NLP	 |1     |2     |2	 |2	   |-1.9133		         |
|MeyerRoth		|Meyer and Roth Problem (MR)			   |NLP	 |1     |3     |3	 |3	   |0.0019		         |
|MieleCantrell	|Miele and Cantrell Problem (MCP)		   |NLP	 |1     |4     |4	 |4	   |0.0000		         |
|Modlangerman	|Modified Langerman Problem (ML)		   |NLP	 |1     |10    |10	 |10   |-0.9650		         |
|ModRosenbrock	|Modified Rosenbrock Problem (MRP)		   |NLP	 |1     |2     |2	 |2	   |0.0000		         |
|MultiGauss		|Multi-Gaussian Problem (MGP)			   |NLP	 |1     |2     |2	 |2	   |-1.2970		         |
|Neumaier2		|Neumaier 2 Problem (NF2)				   |NLP	 |1     |4     |4	 |4	   |0.0000		         |
|Neumaier3		|Neumaier 3 Problem (NF3)				   |NLP	 |1     |10    |10	 |10   |-210.0000	         |
|Oddsquare		|Odd Square Problem (OSP)				   |DNLP |1     |10    |10	 |10   |-1.1438		         |
|Paviani		|Paviani’s Problem (PP)					   |NLP	 |1     |10    |10	 |10   |-45.7784	         |
|Periodic		|Periodic Problem (PRD)					   |NLP	 |1     |2     |2	 |2	   |0.9000		         |
|PowellQ		|Powell’s Quadratic Problem (PQ)		   |NLP	 |1     |4     |4	 |4	   |0.0000		         |
|PriceTransistor|Price’s Transistor Modelling Problem (PTM)|DNLP |1     |9     |9	 |9	   |0.0000		         |
|Rastrigin		|Rastrigin Problem (RG)					   |NLP	 |1     |10    |10	 |10   |0.0000		         |
|Rosenbrock		|Rosenbrock Problem (RB)				   |DNLP |1     |10    |10	 |10   |0.0000		         |
|Salomon		|Salomon Problem (SAL)					   |NLP	 |1     |5     |5	 |5	   |0.0000		         |
|Schaffer1		|	Schaffer 1 Problem (SF1)			   |NLP	 |1     |2     |2	 |2	   |0.0000		         |
|Schaffer2		|Schaffer 2 Problem (SF2)				   |NLP	 |1     |2     |2	 |2	   |0.0012		         |
|Schubert		|Shubert Problem (SBT)					   |NLP	 |1     |2     |2	 |2	   |-186.7309	         |
|Schwefel		|Schwefel Problem (SWF)					   |DNLP |1     |10    |10	 |10   |-4189.8289	         |
|Shekel5		|Shekel 5 Problem (S5)					   |NLP	 |1     |4     |4	 |4	   |-10.1532	         |
|Shekel7		|Shekel 7 Problem (S7)					   |NLP	 |1     |4     |4	 |4	   |-10.4029	         |
|Shekel10		|Shekel 10 Problem (S10)				   |NLP	 |1     |4     |4	 |4	   |-10.5364	         |
|Shekelfox5		|Shekel’s Foxholes Problem (FX)			   |NLP	 |1     |5     |5	 |5	   |-10.4056	         |
|Shekelfox10	|Shekel’s Foxholes Problem (FX) n=10	   |NLP	 |1     |10    |10	 |10   |-10.2087	         |
|Zeldasine10	|Sinusoidal Problem (SIN)				   |NLP	 |1     |10    |10	 |10   |-3.5000		         |
|STChebychev9	|Sinusoidal Problem (SIN) - 20			   |NLP	 |1     |20    |20	 |20   |-3.5000		         |
|STChebychev17	|Storn’s Tchebychev Problem (ST)		   |DNLP |1     |9     |9	 |9	   |0.0000		         |
|Zeldasine20	|Storn’s Tchebychev Problem (ST) n=17	   |DNLP |1     |17    |17	 |17   |0.0000		         |
|Wood			|Wood’s Problem (WP)					   |NLP	 |1     |4     |4	 |4	   |0.0000		         |
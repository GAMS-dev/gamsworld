# MacMOOP - A Collection of Multiobjective Optimization Testproblems

MacMOOP is a collection of multiobjective optimizatin testproblems from Sven Leyffer. The GAMS models were translated by Andre Savistky as is from the original AMPL source.(https://wiki.mcs.anl.gov/leyffer/index.php/MacMOOP)

The raw GAMS models were converted into GAMS scalar format using the CONVERT facility. For models with multiple solves, only the first solve instance is translated.

Total number of models:   14

|Name        |Type  |#Eqns |#Vars |#NZ   |#NNZ  |Bestknown Objective      |
|------------|------|-----:|-----:|-----:|-----:|------------------------:|
|abc-comp	 |NLP   |4	   |3	  |9	 |4	    |17.96428571	          |
|ex001		 |NLP   |4	   |6	  |21	 |11	|0.55508075	          	  |
|ex002		 |NLP   |3	   |6	  |13	 |3	    |8.00000000	          	  |
|ex003		 |LP  	|3	   |3	  |7	 |5	    |7.25098758	          	  |
|ex004		 |NLP   |4	   |3	  |7	 |0	    |2.00000000	          	  |
|ex005		 |NLP   |1	   |3	  |3	 |2	    |-4.00000000	      	  |
|hs05x		 |NLP   |4	   |6	  |13	 |5	    |0.14049587	          	  |
|liswetm	 |NLP   |3	   |9	  |13	 |7	    |-3.41233322	      	  |
|molpg_1	 |NLP   |9	   |9	  |51	 |0	    |-26.01668874         	  |
|molpg_2	 |NLP   |17	   |13	  |67	 |0	    |-13.37500000         	  |
|molpg_3	 |NLP   |15	   |11	  |55	 |0	    |-13.40000000         	  |
|moqp_1		 |NLP   |14	   |24	  |102	 |60	|-57.29327326         	  |
|moqp_2		 |NLP   |13	   |24	  |102	 |60	|-13.16755651         	  |
|moqp_3		 |NLP   |14	   |24	  |101	 |60	|-24.54193065         	  |
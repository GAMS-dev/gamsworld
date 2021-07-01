# AMPLBookLib

The project collects the models formerly featured on http://www.gamsworld.org/performance/amplbook/. The project contains the scalar and indexed GAMS models.

The AMPL Book Library is a collection of math programming models from The AMPL Book. AMPL: [A Modeling Language for Mathematical Programming](http://www.ampl.com/BOOK/index.html) 
by Robert Fourer, David Gay, and Brian Kernighan. The GAMS models were translated by Andre Savistky as is from the original 
[AMPL source](https://ampl.com/resources/the-ampl-book/example-files/).

The raw GAMS models were converted into GAMS scalar format using the [CONVERT](https://www.gams.com/latest/docs/S_CONVERT.html) facility. For models with multiple solves, 
only the first solve instance is translated.

**Reference**

Fourer, R., Gay, D.M., and Kernighan, B.W. The AMPL Book. AMPL: A Modeling Language for Mathematical Programming, Duxbury Press, Brooks/Cole Publishing Company, 2002. 

Total number of models:   51

|Name        |Type  |#Eqns |#Vars |#NZ   |#NNZ  |Bestknown Objective      |
|------------|------|-----:|-----:|-----:|-----:|------------------------:|
|blend       |NLP   |9     |4     |28    |0     |37.00000000              |
|diet        |LP    |9     |9     |71    |0     |88.20000000              |
|diet2       |LP    |13    |9     |103   |0     |123.58369991             |
|dietobj     |LP    |9     |9     |72    |0     |228.89067416             |
|multic      |NLP   |31    |19    |70    |0     |5210.00000000            |
|dietu       |LP    |9     |9     |72    |0     |74.27382022              |
|dietu1      |NLP   |9     |9     |72    |0     |74.27382022              |
|iocol1      |NLP   |6     |8     |43    |0     |135.00000000             |
|iocol2      |NLP   |6     |12    |51    |0     |21.00000000              |
|iorow       |NLP   |6     |8     |43    |0     |135.00000000             |
|minmax      |NLP   |16    |27    |82    |0     |9.00000000               |
|multi       |LP    |52    |64    |253   |0     |199500.00000000          |
|multmip1    |MIP   |52    |85    |295   |0     |235800.00000000          |
|multmip2    |MIP   |73    |85    |379   |0     |233150.00000000          |
|multmip3    |MIP   |76    |85    |400   |0     |235625.00000000          |
|net1        |LP    |9     |10    |28    |0     |1819.00000000            |
|net1node    |NLP   |9     |10    |28    |0     |1819.00000000            |
|net2        |LP    |9     |10    |28    |0     |1819.00000000            |
|net3        |LP    |9     |10    |28    |0     |1819.00000000            |
|net3node    |NLP   |9     |10    |28    |0     |1819.00000000            |
|netasgn     |NLP   |11    |15    |43    |0     |201700.00000000          |
|netfeeds    |NLP   |13    |27    |67    |0     |15300.00000000           |
|netmax      |NLP   |6     |16    |24    |0     |130.00000000             |
|netmax3     |NLP   |6     |16    |24    |0     |130.00000000             |
|netmcol     |NLP   |20    |15    |57    |0     |15300.00000000           |
|netmulti    |NLP   |20    |15    |57    |0     |15300.00000000           |
|netshort    |NLP   |7     |11    |29    |0     |140.00000000             |
|netthru     |NLP   |9     |10    |28    |0     |1819.00000000            |
|nltrans     |NLP   |11    |22    |64    |21    |10000000000.00000000     |
|prod        |LP    |2     |3     |5     |0     |192000.00000000          |
|sched       |LP    |2     |3     |5     |0     |192000.00000000          |
|steel       |LP    |2     |3     |5     |0     |192000.00000000          |
|steel3      |LP    |2     |4     |7     |0     |194828.57142857          |
|steel4      |LP    |3     |4     |10    |0     |190071.42857143          |
|steel4r     |NLP   |3     |4     |10    |0     |190071.42857143          |
|steelP      |NLP   |34    |73    |217   |0     |1392175.00000000         |
|steelT      |NLP   |13    |25    |63    |0     |515033.00000000          |
|steelT0     |NLP   |5     |9     |17    |0     |64240.00000000           |
|steelT2     |NLP   |13    |25    |63    |0     |515033.00000000          |
|steelT3     |NLP   |13    |49    |99    |0     |514521.71428571          |
|steelp3a    |NLP   |13    |41    |91    |0     |-2942556347.00000000     |
|steelpl1    |NLP   |13    |29    |71    |4     |457218.06136588          |
|steelpl2    |NLP   |13    |29    |71    |4     |-1644391.18523043        |
|steelpl3    |NLP   |13    |29    |71    |12    |-293858132.96906300      |
|steelpl4    |NLP   |13    |29    |71    |4     |1194250.00000000         |
|steelpl5    |NLP   |13    |29    |71    |12    |706703.39449234          |
|transp      |LP    |11    |22    |64    |0     |196200.00000000          |
|transp2     |NLP   |11    |22    |64    |0     |196200.00000000          |
|transp3     |LP    |11    |15    |43    |0     |201700.00000000          |
|transpl1    |NLP   |11    |22    |64    |21    |196200.00004977          |
|transpl2    |NLP   |11    |22    |64    |19    |-9825202552.05501000     |

# AMPLBookLib

The project collects the models formerly featured on the GAMS World website. The project contains the scalar and indexed GAMS models.

The AMPL Book Library is a collection of math programming models from The AMPL Book. AMPL: [A Modeling Language for Mathematical Programming](https://dev.ampl.com/ampl/book.html) 
by Robert Fourer, David Gay, and Brian Kernighan. The GAMS models were translated by Andre Savistky as is from the original 
[AMPL source](https://ampl.com/learn/ampl-book/example-files/).

The raw GAMS models were converted into GAMS scalar format using the [CONVERT](https://www.gams.com/latest/docs/S_CONVERT.html) facility. For models with multiple solves, 
only the first solve instance is translated.

**Reference**

Fourer, R., Gay, D.M., and Kernighan, B.W. The AMPL Book. AMPL: A Modeling Language for Mathematical Programming, Duxbury Press, Brooks/Cole Publishing Company, 2002. 

**AMPLBookLib Model Statistics** 

Total number of models:   51

|Name        |Type  |#Eqns |#Vars |#NZ   |#NNZ  |
|------------|------|-----:|-----:|-----:|-----:|
|blend       |NLP   |9     |4     |28    |0     |
|diet        |LP    |9     |9     |71    |0     |
|diet2       |LP    |13    |9     |103   |0     |
|dietobj     |LP    |9     |9     |72    |0     |
|multic      |NLP   |31    |19    |70    |0     |
|dietu       |LP    |9     |9     |72    |0     |
|dietu1      |NLP   |9     |9     |72    |0     |
|iocol1      |NLP   |6     |8     |43    |0     |
|iocol2      |NLP   |6     |12    |51    |0     |
|iorow       |NLP   |6     |8     |43    |0     |
|minmax      |NLP   |16    |27    |82    |0     |
|multi       |LP    |52    |64    |253   |0     |
|multmip1    |MIP   |52    |85    |295   |0     |
|multmip2    |MIP   |73    |85    |379   |0     |
|multmip3    |MIP   |76    |85    |400   |0     |
|net1        |LP    |9     |10    |28    |0     |
|net1node    |NLP   |9     |10    |28    |0     |
|net2        |LP    |9     |10    |28    |0     |
|net3        |LP    |9     |10    |28    |0     |
|net3node    |NLP   |9     |10    |28    |0     |
|netasgn     |NLP   |11    |15    |43    |0     |
|netfeeds    |NLP   |13    |27    |67    |0     |
|netmax      |NLP   |6     |16    |24    |0     |
|netmax3     |NLP   |6     |16    |24    |0     |
|netmcol     |NLP   |20    |15    |57    |0     |
|netmulti    |NLP   |20    |15    |57    |0     |
|netshort    |NLP   |7     |11    |29    |0     |
|netthru     |NLP   |9     |10    |28    |0     |
|nltrans     |NLP   |11    |22    |64    |21    |
|prod        |LP    |2     |3     |5     |0     |
|sched       |LP    |2     |3     |5     |0     |
|steel       |LP    |2     |3     |5     |0     |
|steel3      |LP    |2     |4     |7     |0     |
|steel4      |LP    |3     |4     |10    |0     |
|steel4r     |NLP   |3     |4     |10    |0     |
|steelP      |NLP   |34    |73    |217   |0     |
|steelT      |NLP   |13    |25    |63    |0     |
|steelT0     |NLP   |5     |9     |17    |0     |
|steelT2     |NLP   |13    |25    |63    |0     |
|steelT3     |NLP   |13    |49    |99    |0     |
|steelp3a    |NLP   |13    |41    |91    |0     |
|steelpl1    |NLP   |13    |29    |71    |4     |
|steelpl2    |NLP   |13    |29    |71    |4     |
|steelpl3    |NLP   |13    |29    |71    |12    |
|steelpl4    |NLP   |13    |29    |71    |4     |
|steelpl5    |NLP   |13    |29    |71    |12    |
|transp      |LP    |11    |22    |64    |0     |
|transp2     |NLP   |11    |22    |64    |0     |
|transp3     |LP    |11    |15    |43    |0     |
|transpl1    |NLP   |11    |22    |64    |21    |
|transpl2    |NLP   |11    |22    |64    |19    |

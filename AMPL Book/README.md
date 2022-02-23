# AMPLBookLib

The project collects the models formerly featured on http://www.gamsworld.org/performance/amplbook/. The project contains the scalar and indexed GAMS models.

The AMPL Book Library is a collection of math programming models from The AMPL Book. AMPL: [A Modeling Language for Mathematical Programming](http://www.ampl.com/BOOK/index.html) 
by Robert Fourer, David Gay, and Brian Kernighan. The GAMS models were translated by Andre Savistky as is from the original 
[AMPL source](https://ampl.com/resources/the-ampl-book/example-files/).

The raw GAMS models were converted into GAMS scalar format using the [CONVERT](https://www.gams.com/latest/docs/S_CONVERT.html) facility. For models with multiple solves, 
only the first solve instance is translated.

**Reference**

Fourer, R., Gay, D.M., and Kernighan, B.W. The AMPL Book. AMPL: A Modeling Language for Mathematical Programming, Duxbury Press, Brooks/Cole Publishing Company, 2002. 

**AMPLBookLib Model Statistics** 

Total number of models:   51

|Name        |Type  |#Eqns |#Vars |#NZ   |#NNZ  |Bestknown Objective      |
|------------|------|-----:|-----:|-----:|-----:|------------------------:|
|blend       |NLP   |9     |4     |28    |0     |<div style="text-align: right">37.00000000   </div>              |
|diet        |LP    |9     |9     |71    |0     |<div style="text-align: right">88.20000000   </div>           |
|diet2       |LP    |13    |9     |103   |0     |<div style="text-align: right">123.58369991  </div>           |
|dietobj     |LP    |9     |9     |72    |0     |<div style="text-align: right">228.89067416  </div>           |
|multic      |NLP   |31    |19    |70    |0     |<div style="text-align: right">5210.00000000 </div>           |
|dietu       |LP    |9     |9     |72    |0     |<div style="text-align: right">74.27382022   </div>           |
|dietu1      |NLP   |9     |9     |72    |0     |<div style="text-align: right">74.27382022   </div>           |
|iocol1      |NLP   |6     |8     |43    |0     |<div style="text-align: right">135.00000000  </div>           |
|iocol2      |NLP   |6     |12    |51    |0     |<div style="text-align: right">21.00000000   </div>           |
|iorow       |NLP   |6     |8     |43    |0     |<div style="text-align: right">135.00000000  </div>           |
|minmax      |NLP   |16    |27    |82    |0     |<div style="text-align: right">9.00000000     </div>           |
|multi       |LP    |52    |64    |253   |0     |<div style="text-align: right">199500.00000000</div>          |
|multmip1    |MIP   |52    |85    |295   |0     |<div style="text-align: right">235800.00000000</div>          |
|multmip2    |MIP   |73    |85    |379   |0     |<div style="text-align: right">233150.00000000</div>          |
|multmip3    |MIP   |76    |85    |400   |0     |<div style="text-align: right">235625.00000000</div>          |
|net1        |LP    |9     |10    |28    |0     |<div style="text-align: right">1819.00000000  </div>          |
|net1node    |NLP   |9     |10    |28    |0     |<div style="text-align: right">1819.00000000  </div>          |
|net2        |LP    |9     |10    |28    |0     |<div style="text-align: right">1819.00000000  </div>          |
|net3        |LP    |9     |10    |28    |0     |<div style="text-align: right">1819.00000000  </div>          |
|net3node    |NLP   |9     |10    |28    |0     |<div style="text-align: right">1819.00000000  </div>          |
|netasgn     |NLP   |11    |15    |43    |0     |<div style="text-align: right">201700.00000000 </div>         |
|netfeeds    |NLP   |13    |27    |67    |0     |<div style="text-align: right">15300.00000000  </div>         |
|netmax      |NLP   |6     |16    |24    |0     |<div style="text-align: right">130.00000000    </div>         |
|netmax3     |NLP   |6     |16    |24    |0     |<div style="text-align: right">130.00000000    </div>         |
|netmcol     |NLP   |20    |15    |57    |0     |<div style="text-align: right">15300.00000000  </div>         |
|netmulti    |NLP   |20    |15    |57    |0     |<div style="text-align: right">15300.00000000  </div>         |
|netshort    |NLP   |7     |11    |29    |0     |<div style="text-align: right">140.00000000    </div>         |
|netthru     |NLP   |9     |10    |28    |0     |<div style="text-align: right">1819.00000000   </div>         |
|nltrans     |NLP   |11    |22    |64    |21    |<div style="text-align: right">10000000000.000 </div>     |
|prod        |LP    |2     |3     |5     |0     |<div style="text-align: right">192000.00000000 </div>         |
|sched       |LP    |2     |3     |5     |0     |<div style="text-align: right">192000.00000000  </div>        |
|steel       |LP    |2     |3     |5     |0     |<div style="text-align: right">192000.00000000  </div>        |
|steel3      |LP    |2     |4     |7     |0     |<div style="text-align: right">194828.57142857  </div>        |
|steel4      |LP    |3     |4     |10    |0     |<div style="text-align: right">190071.42857143  </div>        |
|steel4r     |NLP   |3     |4     |10    |0     |<div style="text-align: right">190071.42857143  </div>        |
|steelP      |NLP   |34    |73    |217   |0     |<div style="text-align: right">1392175.00000000  </div>       |
|steelT      |NLP   |13    |25    |63    |0     |<div style="text-align: right">515033.00000000   </div>       |
|steelT0     |NLP   |5     |9     |17    |0     |<div style="text-align: right">64240.00000000    </div>       |
|steelT2     |NLP   |13    |25    |63    |0     |<div style="text-align: right">515033.00000000   </div>       |
|steelT3     |NLP   |13    |49    |99    |0     |<div style="text-align: right">514521.71428571   </div>       |
|steelp3a    |NLP   |13    |41    |91    |0     |<div style="text-align: right">-2942556347.000000</div>     |
|steelpl1    |NLP   |13    |29    |71    |4     |<div style="text-align: right">457218.06136588   </div>       |
|steelpl2    |NLP   |13    |29    |71    |4     |<div style="text-align: right">-1644391.18523043 </div>       |
|steelpl3    |NLP   |13    |29    |71    |12    |<div style="text-align: right">-293858132.9690630</div>      |
|steelpl4    |NLP   |13    |29    |71    |4     |<div style="text-align: right">1194250.00000000  </div>       |
|steelpl5    |NLP   |13    |29    |71    |12    |<div style="text-align: right">706703.39449234   </div>       |
|transp      |LP    |11    |22    |64    |0     |<div style="text-align: right">196200.00000000   </div>       |
|transp2     |NLP   |11    |22    |64    |0     |<div style="text-align: right">196200.00000000   </div>       |
|transp3     |LP    |11    |15    |43    |0     |<div style="text-align: right">201700.00000000   </div>       |
|transpl1    |NLP   |11    |22    |64    |21    |<div style="text-align: right">196200.00004977   </div>       |
|transpl2    |NLP   |11    |22    |64    |19    |<div style="text-align: right">-9825202552.05501000</div>     |
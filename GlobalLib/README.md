# GLOBALLib Model Statistics
GLOBALLib is a collection of Nonlinear Programming models. The purpose of the collection is to provide algorithm developer of global optimization codes with a large and varied set of both theoretical and practical test models.
[GLOBALLib has been integrated into MINLPLib](http://www.minlplib.org/). This is an old version that is no-longer maintained.

**GLOBALLib Organization**

The models
==========

The original algebraic models have been translated into a scalar format in
which documentation and comments have been removed, sets and set operators
have been unrolled, and the original data and structure of the model have
disappeared. This kind of model represenation has the advantage of an easy
translation into different languages and also hides propriotary
information. The latter is neccessary because the library contains
confidential models. For the purpose of algorithm development the
representaton of the model is not of much importantance. The models are
identified by their unique name (e.g. batch.gms).

The points
==========

For a model in the GLOBALLib we will collect points. A point represent
some solution to a problem. The header of the file containing a point
explains the details of the point. It might contain the contributor of
the point, the solution value, the algorithm which was used to produce
the point, and the CPU time for finding the point. The points are part
of the library. They are indentified by the model name plus the
extension .p1, .p2, .p3, ... (e.g. ex4_1_1.p1).

In order to start a model from a certain point you can run gams in the
following way:

	  gams ex4_1_1 u1=ex4_1_1.inc

**GLOBALLib Model Statistics** 

Total number of models:   397

|Name                    															 |Type  |#Eqns  |#Vars   |#NZ   |#NNZ    |
|------------------------------------------------------------------------------------|------|------:|-------:|-----:|-------:|
|[abel](http://www.gams.com/modlib/libhtml/abel.htm)                                 |NLP   |     15|      31|   101|      30|
|[alkyl](http://www.gams.com/modlib/libhtml/alkyl.htm)                               |NLP   |      8|      15|    32|      19|
|alkylation                                                                          |NLP   |     12|      11|    38|      14|
|arki0001                                                                            |NLP   |    514|    1031|  3814|     512|
|arki0002                                                                            |NLP   |   1977|    2457|  5777|    1064|
|arki0003                                                                            |NLP   |   2583|    2283| 12634|    4080|
|arki0004             															     |NLP   |   2082|    2091| 14565|   10400|
|arki0005             															     |NLP   |   5153|    2371|128411|   12768|
|arki0006             															     |NLP   |   5153|    2371|128411|   12768|
|arki0007             															     |NLP   |   5046|    4786| 18160|   10831|
|arki0008             															     |NLP   |   5021|    5073| 24600|   16334|
|arki0009             															     |NLP   |   6708|    7715| 29460|     523|
|arki0010             															     |NLP   |   3428|    4145| 14905|     263|
|arki0011             															     |NLP   |  17738|   19315| 76678|    1218|
|arki0012             															     |NLP   |  17738|   19315| 76678|    1218|
|arki0013             															     |NLP   |  17738|   19315| 76813|    1218|
|arki0014             															     |NLP   |  17693|   19306| 76543|    1218|
|arki0015             															     |NLP   |   1497|    2094|  6306|    3841|
|arki0016             															     |NLP   |   2947|    5048| 19275|    6631|
|arki0017             															     |NLP   |   2573|    4333| 16651|    5982|
|arki0018             															     |NLP   |     10|    9805| 41663|    9804|
|arki0019             															     |NLP   |      3|     511|  1022|     510|
|arki0020             															     |NLP   |      3|    1263|  2526|    1262|
|arki0021             															     |NLP   |      3|    3188|  6376|    3187|
|arki0022             															     |NLP   |      3|    4153|  8306|    4152|
|arki0023             															     |NLP   |      3|    8887| 17774|    8886|
|arki0024             															     |NLP   |  26759|    8677| 68137|   14053|
|bayes2_10                                                                           |NLP   |     78|      87|   607|     440|
|bayes2_20                                                                           |NLP   |     78|      87|   616|     440|
|bayes2_30                                                                           |NLP   |     78|      87|   619|     440|
|bayes2_50                                                                           |NLP   |     78|      87|   622|     440|
|[bearing](http://www.gams.com/modlib/libhtml/bearing.htm)                           |NLP   |     13|      14|    41|      28|
|btest14                                                                             |NLP   |     94|     136|   622|     224|
|[camcge](http://www.gams.com/modlib/libhtml/camcge.htm)                             |NLP   |    243|     280|  1356|     850|
|[camcns](http://www.gams.com/modlib/libhtml/camcns.htm)                             |CNS   |    243|     280|  1356|     850|
|[camshape100](http://www.gams.com/modlib/libhtml/camshape.htm)                      |NLP   |    201|     200|   697|     299|
|[camshape200](http://www.gams.com/modlib/libhtml/camshape.htm)                      |NLP   |    401|     400|  1397|     599|
|[camshape400](http://www.gams.com/modlib/libhtml/camshape.htm)                      |NLP   |    801|     800|  2797|    1199|
|[camshape800](http://www.gams.com/modlib/libhtml/camshape.htm)                      |NLP   |   1601|    1600|  5597|    2399|
|[catmix100](http://www.gams.com/modlib/libhtml/catmix.htm)                          |NLP   |    201|     304|  1203|    1200|
|[catmix200](http://www.gams.com/modlib/libhtml/catmix.htm)                          |NLP   |    401|     604|  2403|    2400|
|[catmix400](http://www.gams.com/modlib/libhtml/catmix.htm)                          |NLP   |    801|    1204|  4803|    4800|
|[catmix800](http://www.gams.com/modlib/libhtml/catmix.htm)                          |NLP   |   1601|    2404|  9603|    9600|
|[chain100](http://www.gams.com/modlib/libhtml/chain.htm)                            |NLP   |    102|     203|   704|     303|
|[chain200](http://www.gams.com/modlib/libhtml/chain.htm)                            |NLP   |    202|     403|  1404|     603|
|[chain400](http://www.gams.com/modlib/libhtml/chain.htm)                            |NLP   |    402|     803|  2804|    1203|
|[chain50](http://www.gams.com/modlib/libhtml/chain.htm)                             |NLP   |     52|     103|   354|     153|
|[chakra](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_chakra.html)        |NLP   |     42|      63|   143|      41|
|[chance](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_chance.html)        |NLP   |      4|       5|    17|       4|
|[chem](http://www.gams.com/modlib/libhtml/chem.htm)                                 |NLP   |      5|      12|    37|      11|
|[chenery](http://www.gams.com/modlib/libhtml/chenery.htm)                           |NLP   |     39|      44|   133|      56|
|[circle](http://www.gams.com/modlib/libhtml/circle.htm)                             |NLP   |     10|       3|    30|      30|
|[demo7](http://www.gams.com/modlib/libhtml/demo7.htm)                               |NLP   |     58|      71|   295|      12|
|[dispatch](http://www.gams.com/modlib/libhtml/dispatch.htm)                         |NLP   |      3|       5|    12|       6|
|[elec100](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_elec.html)         |NLP   |    101|     301|   601|     600|
|[elec200](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_elec.html)         |NLP   |    201|     601|  1201|    1200|
|[elec25](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_elec.html)          |NLP   |     26|      76|   151|     150|
|[elec50](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_elec.html)          |NLP   |     51|     151|   301|     300|
|[etamac](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_etamac.html)        |NLP   |     71|      98|   226|      35|
|[ex14_1_1](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.1.gms)          |NLP   |      5|       4|    14|       8|
|[ex14_1_2](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.2.gms)          |NLP   |     10|       7|    43|      26|
|[ex14_1_3](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.3.gms)          |NLP   |      5|       4|    14|       8|
|[ex14_1_4](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.4.gms)          |NLP   |      5|       4|    14|       6|
|[ex14_1_5](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.5.gms)          |NLP   |      7|       7|    34|      10|
|[ex14_1_6](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.6.gms)          |NLP   |     16|      10|    62|      32|
|[ex14_1_7](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.7.gms)          |NLP   |     18|      11|   118|     100|
|[ex14_1_8](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.8.gms)          |NLP   |      5|       4|    12|       6|
|[ex14_1_9](http://titan.princeton.edu/TestProblems/chapter14/ex14.1.9.gms)          |NLP   |      3|       3|     6|       2|
|[ex14_2_1](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.1.gms)          |NLP   |      8|       6|    35|      24|
|[ex14_2_2](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.2.gms)          |NLP   |      6|       5|    20|      12|
|[ex14_2_3](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.3.gms)          |NLP   |     10|       7|    54|      40|
|[ex14_2_4](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.4.gms)          |NLP   |      8|       6|    35|      24|
|[ex14_2_5](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.5.gms)          |NLP   |      6|       5|    20|      12|
|[ex14_2_6](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.6.gms)          |NLP   |      8|       6|    35|      24|
|[ex14_2_7](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.7.gms)          |NLP   |     10|       7|    54|      40|
|[ex14_2_8](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.8.gms)          |NLP   |      6|       5|    20|      12|
|[ex14_2_9](http://titan.princeton.edu/TestProblems/chapter14/ex14.2.9.gms)          |NLP   |      6|       5|    20|      12|
|[ex2_1_1](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.1.gms)             |NLP   |      2|       6|    11|       5|
|[ex2_1_10](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.10.gms)           |NLP   |     11|      21|   221|      20|
|[ex2_1_2](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.2.gms)             |NLP   |      3|       7|    15|       5|
|[ex2_1_3](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.3.gms)             |NLP   |     10|      14|    41|       4|
|[ex2_1_4](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.4.gms)             |NLP   |      6|       7|    37|       1|
|[ex2_1_5](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.5.gms)             |NLP   |     12|      11|   112|       7|
|[ex2_1_6](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.6.gms)             |NLP   |      6|      11|    57|      10|
|[ex2_1_7](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.7.gms)             |NLP   |     11|      21|   185|      20|
|[ex2_1_8](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.8.gms)             |NLP   |     11|      25|    73|      24|
|[ex2_1_9](http://titan.princeton.edu/TestProblems/chapter2/ex2.1.9.gms)             |NLP   |      2|      11|    21|      10|
|[ex3_1_1](http://titan.princeton.edu/TestProblems/chapter3/ex3.1.1.gms)             |NLP   |      7|       9|    21|       8|
|[ex3_1_2](http://titan.princeton.edu/TestProblems/chapter3/ex3.1.2.gms)             |NLP   |      7|       6|    30|      29|
|[ex3_1_3](http://titan.princeton.edu/TestProblems/chapter3/ex3.1.3.gms)             |NLP   |      7|       7|    19|       8|
|[ex3_1_4](http://titan.princeton.edu/TestProblems/chapter3/ex3.1.4.gms)             |NLP   |      4|       4|    12|       3|
|[ex4_1_1](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.1.gms)             |NLP   |      1|       2|     2|       1|
|[ex4_1_2](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.2.gms)             |NLP   |      1|       2|     2|       1|
|[ex4_1_3](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.3.gms)             |NLP   |      1|       2|     2|       1|
|[ex4_1_4](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.4.gms)             |NLP   |      1|       2|     2|       1|
|[ex4_1_5](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.5.gms)             |NLP   |      1|       3|     3|       2|
|[ex4_1_6](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.6.gms)             |NLP   |      1|       2|     2|       1|
|[ex4_1_7](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.7.gms)             |NLP   |      1|       2|     2|       1|
|[ex4_1_8](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.8.gms)             |NLP   |      2|       3|     5|       2|
|[ex4_1_9](http://titan.princeton.edu/TestProblems/chapter4/ex4.1.9.gms)             |NLP   |      3|       3|     7|       2|
|[ex5_2_2_case1](http://titan.princeton.edu/TestProblems/chapter5/ex5.2.2_case1.gms) |NLP   |      7|      10|    30|       7|
|[ex5_2_2_case2](http://titan.princeton.edu/TestProblems/chapter5/ex5.2.2_case2.gms) |NLP   |      7|      10|    30|       7|
|[ex5_2_2_case3](http://titan.princeton.edu/TestProblems/chapter5/ex5.2.2_case3.gms) |NLP   |      7|      10|    30|       7|
|[ex5_2_4](http://titan.princeton.edu/TestProblems/chapter5/ex5.2.4.gms)             |NLP   |      7|       8|    28|      16|
|[ex5_2_5](http://titan.princeton.edu/TestProblems/chapter5/ex5.2.5.gms)             |NLP   |     20|      33|   239|     195|
|[ex5_3_2](http://titan.princeton.edu/TestProblems/chapter5/ex5.3.2.gms)             |NLP   |     17|      23|    64|      24|
|[ex5_3_3](http://titan.princeton.edu/TestProblems/chapter5/ex5.3.3.gms)             |NLP   |     54|      63|   288|     200|
|[ex5_4_2](http://titan.princeton.edu/TestProblems/chapter5/ex5.2.4.gms)             |NLP   |      7|       9|    21|       8|
|[ex5_4_3](http://titan.princeton.edu/TestProblems/chapter5/ex5.4.3.gms)             |NLP   |     14|      17|    43|      18|
|[ex5_4_4](http://titan.princeton.edu/TestProblems/chapter5/ex5.4.4.gms)             |NLP   |     20|      28|    76|      33|
|[ex6_1_1](http://titan.princeton.edu/TestProblems/chapter6/ex6.1.1.gms)             |NLP   |      7|       9|    25|      20|
|[ex6_1_2](http://titan.princeton.edu/TestProblems/chapter6/ex6.1.2.gms)             |NLP   |      4|       5|    13|      10|
|[ex6_1_3](http://titan.princeton.edu/TestProblems/chapter6/ex6.1.3.gms)             |NLP   |     10|      13|    43|      36|
|[ex6_1_4](http://titan.princeton.edu/TestProblems/chapter6/ex6.1.4.gms)             |NLP   |      5|       7|    22|      18|
|[ex6_2_10](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.10.gms)           |NLP   |      4|       7|    13|       6|
|[ex6_2_11](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.11.gms)           |NLP   |      2|       4|     7|       3|
|[ex6_2_12](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.12.gms)           |NLP   |      3|       5|     9|       4|
|[ex6_2_13](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.13.gms)           |NLP   |      4|       7|    13|       6|
|[ex6_2_14](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.14.gms)           |NLP   |      3|       5|     9|       4|
|[ex6_2_5](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.5.gms)             |NLP   |      4|      10|    19|       9|
|[ex6_2_6](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.6.gms)             |NLP   |      2|       4|     7|       3|
|[ex6_2_7](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.7.gms)             |NLP   |      4|      10|    19|       9|
|[ex6_2_8](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.8.gms)             |NLP   |      2|       4|     7|       3|
|[ex6_2_9](http://titan.princeton.edu/TestProblems/chapter6/ex6.2.9.gms)             |NLP   |      3|       5|     9|       4|
|[ex7_2_1](http://titan.princeton.edu/TestProblems/chapter7/ex7.2.1.gms)             |NLP   |     15|       8|    46|      35|
|[ex7_2_2](http://titan.princeton.edu/TestProblems/chapter7/ex7.2.2.gms)             |NLP   |      6|       7|    17|      10|
|[ex7_2_3](http://titan.princeton.edu/TestProblems/chapter7/ex7.2.3.gms)             |NLP   |      7|       9|    21|      10|
|[ex7_2_4](http://titan.princeton.edu/TestProblems/chapter7/ex7.2.4.gms)             |NLP   |      5|       9|    18|      14|
|[ex7_3_1](http://titan.princeton.edu/TestProblems/chapter7/ex7.3.1.gms)             |NLP   |      8|       5|    17|       3|
|[ex7_3_2](http://titan.princeton.edu/TestProblems/chapter7/ex7.3.2.gms)             |NLP   |      8|       5|    17|       3|
|[ex7_3_3](http://titan.princeton.edu/TestProblems/chapter7/ex7.3.3.gms)             |NLP   |      9|       6|    22|       5|
|[ex7_3_4](http://titan.princeton.edu/TestProblems/chapter7/ex7.3.4.gms)             |NLP   |     18|      13|    53|      23|
|[ex7_3_5](http://titan.princeton.edu/TestProblems/chapter7/ex7.3.5.gms)             |NLP   |     16|      14|    46|      25|
|[ex7_3_6](http://titan.princeton.edu/TestProblems/chapter7/ex7.3.6.gms)             |NLP   |     18|      18|    80|      54|
|[ex8_1_1](http://titan.princeton.edu/TestProblems/chapter8/ex8.1.1.gms)             |NLP   |      1|       3|     3|       2|
|[ex8_1_2](http://titan.princeton.edu/TestProblems/chapter8/ex8.1.2.gms)             |NLP   |      1|       2|     2|       1|
|[ex8_1_3](http://titan.princeton.edu/TestProblems/chapter8/ex8.1.3.gms)             |NLP   |      1|       3|     3|       2|
|[ex8_1_4](http://titan.princeton.edu/TestProblems/chapter8/ex8.1.4.gms)             |NLP   |      1|       3|     3|       2|
|[ex8_1_5](http://titan.princeton.edu/TestProblems/chapter8/ex8.1.5.gms)             |NLP   |      1|       3|     3|       2|
|[ex8_1_6](http://titan.princeton.edu/TestProblems/chapter8/ex8.1.6.gms)             |NLP   |      1|       3|     3|       2|
|[ex8_1_7](http://titan.princeton.edu/TestProblems/chapter8/ex8.1.7.gms)             |NLP   |      6|       6|    20|      13|
|[ex8_2_1](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.1.gms)             |NLP   |     32|      56|   166|     103|
|[ex8_2_1a](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.1.gms)            |NLP   |     32|      56|   166|     103|
|[ex8_2_1b](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.1.gms)            |NLP   |     34|      58|   170|     105|
|[ex8_2_2](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.2.gms)             |NLP   |   1948|    7511| 22651|   15006|
|[ex8_2_2a](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.2.gms)            |NLP   |   1948|    7511| 22651|   15006|
|[ex8_2_2b](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.2.gms)            |NLP   |   1960|    7523| 22675|   15018|
|[ex8_2_3](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.3.gms)             |NLP   |   3156|   15637| 46942|   31256|
|[ex8_2_3a](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.3.gms)            |NLP   |   3156|   15637| 46942|   31256|
|[ex8_2_3b](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.3.gms)            |NLP   |   3161|   15642| 46952|   31261|
|[ex8_2_4](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.4.gms)             |NLP   |     82|      56|   366|     303|
|[ex8_2_4a](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.4.gms)            |NLP   |     82|      56|   366|     303|
|[ex8_2_4b](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.4.gms)            |NLP   |     88|      62|   378|     309|
|[ex8_2_5](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.5.gms)             |NLP   |   3775|    2511| 32555|   30006|
|[ex8_2_5a](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.5.gms)            |NLP   |   3775|    2511| 32555|   30006|
|[ex8_2_5b](http://titan.princeton.edu/TestProblems/chapter8/ex8.2.5.gms)            |NLP   |   3799|    2535| 32603|   30030|
|[ex8_3_1](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.1.gms)             |NLP   |     77|     116|   561|     448|
|[ex8_3_10](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.10.gms)           |NLP   |    109|     142|   729|     567|
|[ex8_3_11](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.11.gms)           |NLP   |     77|     116|   561|     448|
|[ex8_3_12](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.12.gms)           |NLP   |     82|     121|   586|     468|
|[ex8_3_13](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.13.gms)           |NLP   |     73|     116|   576|     448|
|[ex8_3_14](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.14.gms)           |NLP   |     72|     111|   581|     463|
|[ex8_3_2](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.2.gms)             |NLP   |     77|     111|   546|     423|
|[ex8_3_3](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.3.gms)             |NLP   |     77|     111|   546|     423|
|[ex8_3_4](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.4.gms)             |NLP   |     77|     111|   546|     423|
|[ex8_3_5](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.5.gms)             |NLP   |     77|     111|   546|     423|
|[ex8_3_6](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.6.gms)             |NLP   |     77|     111|   542|     425|
|[ex8_3_7](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.7.gms)             |NLP   |     93|     127|   669|     537|
|[ex8_3_8](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.8.gms)             |NLP   |     94|     127|   664|     535|
|[ex8_3_9](http://titan.princeton.edu/TestProblems/chapter8/ex8.3.9.gms)             |NLP   |     46|      79|   327|     214|
|[ex8_4_1](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.1.gms)             |NLP   |     11|      23|    61|      40|
|[ex8_4_2](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.2.gms)             |NLP   |     11|      25|    81|      60|
|[ex8_4_3](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.3.gms)             |NLP   |     26|      53|   151|     100|
|[ex8_4_4](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.4.gms)             |NLP   |     13|      18|    61|      36|
|[ex8_4_5](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.5.gms)             |NLP   |     12|      16|    67|      55|
|[ex8_4_6](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.6.gms)             |NLP   |      9|      15|    65|      56|
|[ex8_4_7](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.7.gms)             |NLP   |     41|      63|   191|     140|
|[ex8_4_8](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.8.gms)             |NLP   |     31|      43|   141|     130|
|[ex8_4_8_bnd](http://titan.princeton.edu/TestProblems/chapter8/ex8.4.8.gms)         |NLP   |     31|      43|   141|     130|
|[ex8_5_1](http://titan.princeton.edu/TestProblems/chapter8/ex8.5.1.gms)             |NLP   |      5|       7|    21|      12|
|[ex8_5_2](http://titan.princeton.edu/TestProblems/chapter8/ex8.5.2.gms)             |NLP   |      5|       7|    21|      12|
|[ex8_5_3](http://titan.princeton.edu/TestProblems/chapter8/ex8.5.3.gms)             |NLP   |      5|       6|    17|      10|
|[ex8_5_4](http://titan.princeton.edu/TestProblems/chapter8/ex8.5.4.gms)             |NLP   |      5|       6|    17|      10|
|[ex8_5_5](http://titan.princeton.edu/TestProblems/chapter8/ex8.5.5.gms)             |NLP   |      5|       6|    17|      10|
|[ex8_5_6](http://titan.princeton.edu/TestProblems/chapter8/ex8.5.6.gms)             |NLP   |      5|       7|    21|      12|
|[ex8_6_1](http://titan.princeton.edu/TestProblems/chapter8/ex8.6.1.gms)             |NLP   |     46|      76|   361|     315|
|[ex8_6_2](http://titan.princeton.edu/TestProblems/chapter8/ex8.6.2.gms)             |NLP   |      1|      31|    31|      30|
|[ex9_1_1](http://titan.princeton.edu/TestProblems/chapter9/ex9.1.1.gms)             |NLP   |     13|      14|    37|      10|
|[ex9_1_2](http://titan.princeton.edu/TestProblems/chapter9/ex9.1.2.gms)             |NLP   |     10|      11|    26|       8|
|[ex9_1_4](http://titan.princeton.edu/TestProblems/chapter9/ex9.1.4.gms)             |NLP   |     10|      11|    26|       8|
|[ex9_1_5](http://titan.princeton.edu/TestProblems/chapter9/ex9.1.5.gms)             |NLP   |     13|      14|    33|      10|
|[ex9_1_8](http://titan.princeton.edu/TestProblems/chapter9/ex9.1.8.gms)             |NLP   |     13|      15|    33|      10|
|[ex9_2_2](http://titan.princeton.edu/TestProblems/chapter9/ex9.2.2.gms)             |NLP   |     12|      11|    27|      10|
|[ex9_2_3](http://titan.princeton.edu/TestProblems/chapter9/ex9.2.3.gms)             |NLP   |     16|      17|    45|      12|
|[ex9_2_4](http://titan.princeton.edu/TestProblems/chapter9/ex9.2.4.gms)             |NLP   |      8|       9|    19|       6|
|[ex9_2_5](http://titan.princeton.edu/TestProblems/chapter9/ex9.2.5.gms)             |NLP   |      8|       9|    22|       8|
|[ex9_2_6](http://titan.princeton.edu/TestProblems/chapter9/ex9.2.6.gms)             |NLP   |     13|      17|    33|      16|
|[ex9_2_7](http://titan.princeton.edu/TestProblems/chapter9/ex9.2.7.gms)             |NLP   |     10|      11|    28|      10|
|[ex9_2_8](http://titan.princeton.edu/TestProblems/chapter9/ex9.2.8.gms)             |NLP   |      6|       7|    14|       6|
|[fct](http://www.gams.com/modlib/libhtml/fct.htm)                                   |DNLP  |     10|      12|    43|      26|
|filter                                                                              |NLP   |      2|       3|     5|       3|
|[flowchan100](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_flowchan.html) |NLP   |   2399|    2401| 18186|    1600|
|[flowchan200](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_flowchan.html) |NLP   |   4799|    4801| 36186|    3200|
|[flowchan400](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_flowchan.html) |NLP   |   9599|    9601| 71986|    6400|
|[flowchan50](https://www.gams.com/latest/gamslib_ml/libhtml/gamslib_flowchan.html)  |NLP   |   1199|    1201|  9086|     800|
|[gancns](http://www.gams.com/modlib/libhtml/gancns.htm)                             |CNS   |    274|     357|  1405|     817|
|[ganges](http://www.gams.com/modlib/libhtml/ganges.htm)                             |NLP   |    274|     357|  1405|     817|
|[gasoil100](http://www.gams.com/modlib/libhtml/gasoil.htm)                          |NLP   |   2599|    2604| 13791|    3002|
|[gasoil200](http://www.gams.com/modlib/libhtml/gasoil.htm)                          |NLP   |   5199|    5204| 27391|    5802|
|[gasoil400](http://www.gams.com/modlib/libhtml/gasoil.htm)                          |NLP   |  10399|   10404| 54591|   11402|
|[gasoil50](http://www.gams.com/modlib/libhtml/gasoil.htm)                           |NLP   |   1299|    1304|  6991|    1602|
|[glider100](http://www.gams.com/modlib/libhtml/glider.htm)                          |NLP   |   1210|    1316|  4832|    3018|
|[glider200](http://www.gams.com/modlib/libhtml/glider.htm)                          |NLP   |   2410|    2616|  9632|    6018|
|[glider400](http://www.gams.com/modlib/libhtml/glider.htm)                          |NLP   |   4810|    5216| 19232|   12018|
|[glider50](http://www.gams.com/modlib/libhtml/glider.htm)                           |NLP   |    610|     666|  2432|    1518|
|gsg_0001                                                                            |NLP   |    112|      78|   369|      44|
|[gtm](http://www.gams.com/modlib/libhtml/gtm.htm)                                   |NLP   |     25|      64|   162|      20|
|[harker](http://www.gams.com/modlib/libhtml/harker.htm)                             |NLP   |      8|      21|    61|      20|
|[haverly](http://www.gams.com/modlib/libhtml/haverly.htm)                           |NLP   |     10|      13|    34|       7|
|[hhfair](http://www.gams.com/modlib/libhtml/hhfair.htm)                             |NLP   |     26|      30|    81|      21|
|[himmel16](http://www.gams.com/modlib/libhtml/himmel16.htm)                         |NLP   |     22|      19|    97|      84|
|[house](http://www.gams.com/modlib/libhtml/house.htm)                               |NLP   |      9|       9|    26|       9|
|[hs62](http://www.gams.com/modlib/libhtml/hs62.htm)                                 |NLP   |      2|       4|     7|       6|
|[hydro](http://www.gams.com/modlib/libhtml/hydro.htm)                               |NLP   |     25|      32|    67|      12|
|[immun](http://www.gams.com/modlib/libhtml/immun.htm)                               |NLP   |      8|      22|    64|       6|
|infeas1                                                                             |NLP   |   1615|     273|  9139|    3895|
|[jbearing100](http://www.gams.com/modlib/libhtml/jbearing.htm)                      |NLP   |      1|    5305|  5305|    5304|
|[jbearing25](http://www.gams.com/modlib/libhtml/jbearing.htm)                       |NLP   |      1|    1405|  1405|    1404|
|[jbearing50](http://www.gams.com/modlib/libhtml/jbearing.htm)                       |NLP   |      1|    2705|  2705|    2704|
|[jbearing75](http://www.gams.com/modlib/libhtml/jbearing.htm)                       |NLP   |      1|    4005|  4005|    4004|
|[korcge](http://www.gams.com/modlib/libhtml/korcge.htm)                             |NLP   |     78|      96|   346|     200|
|[korcns](http://www.gams.com/modlib/libhtml/korcns.htm)                             |CNS   |     78|      96|   346|     200|
|[launch](http://www.gams.com/modlib/libhtml/launch.htm)                             |NLP   |     29|      39|   108|      52|
|[least](http://www.gams.com/modlib/libhtml/least.htm)                               |NLP   |      1|       4|     4|       3|
|[like](http://www.gams.com/modlib/libhtml/like.htm)                                 |NLP   |      4|      10|    17|       9|
|[linear](http://www.gams.com/modlib/libhtml/linear.htm)                             |DNLP  |     21|      25|   121|      20|
|[lnts100](http://www.gams.com/modlib/libhtml/lnts.htm)                              |NLP   |    401|     507|  2002|    1200|
|[lnts200](http://www.gams.com/modlib/libhtml/lnts.htm)                              |NLP   |    801|    1007|  4002|    2400|
|[lnts400](http://www.gams.com/modlib/libhtml/lnts.htm)                              |NLP   |   1601|    2007|  8002|    4800|
|[lnts50](http://www.gams.com/modlib/libhtml/lnts.htm)                               |NLP   |    201|     257|  1002|     600|
|[mathopt1](http://www.gams.com/modlib/libhtml/mathopt1.htm)                         |NLP   |      3|       3|     7|       4|
|[mathopt2](http://www.gams.com/modlib/libhtml/mathopt2.htm)                         |NLP   |      5|       3|    11|       4|
|[mathopt3](http://www.gams.com/modlib/libhtml/mathopt3.htm)                         |NLP   |      8|       7|    43|      24|
|[mathopt4](http://www.gams.com/modlib/libhtml/mathopt4.htm)                         |NLP   |      3|       3|     7|       4|
|[maxmin](http://www.gams.com/modlib/libhtml/maxmin.htm)                             |DNLP  |     78|      27|   390|     312|
|[meanvar](http://www.gams.com/modlib/libhtml/meanvar.htm)                           |NLP   |      3|       9|    23|       7|
|[methanol100](http://www.gams.com/modlib/libhtml/methanol.htm)                      |NLP   |   2998|    3006| 16381|    5895|
|[methanol200](http://www.gams.com/modlib/libhtml/methanol.htm)                      |NLP   |   5998|    6006| 32581|   11595|
|[methanol400](http://www.gams.com/modlib/libhtml/methanol.htm)                      |NLP   |  11998|   12006| 64981|   22995|
|[methanol50](http://www.gams.com/modlib/libhtml/methanol.htm)                       |NLP   |   1498|    1506|  8269|    3033|
|[mhw4d](http://www.gams.com/modlib/libhtml/mhw4d.htm)                               |NLP   |      4|       6|    14|      10|
|[minlphi](http://www.gams.com/modlib/libhtml/minlphi.htm)                           |NLP   |     80|      65|   207|      36|
|[minsurf100](http://www.gams.com/modlib/libhtml/minsurf.htm)                        |NLP   |      1|    5305|  5305|    5304|
|[minsurf25](http://www.gams.com/modlib/libhtml/minsurf.htm)                         |NLP   |      1|    1405|  1405|    1404|
|[minsurf50](http://www.gams.com/modlib/libhtml/minsurf.htm)                         |NLP   |      1|    2705|  2705|    2704|
|[minsurf75](http://www.gams.com/modlib/libhtml/minsurf.htm)                         |NLP   |      1|    4005|  4005|    4004|
|[nemhaus](http://www.gams.com/modlib/libhtml/nemhaus.htm)                           |NLP   |      6|       6|    11|       5|
|[otpop](http://www.gams.com/modlib/libhtml/otpop.htm)                               |NLP   |     77|     104|   268|      83|
|[pindyck](http://www.gams.com/modlib/libhtml/pindyck.htm)                           |NLP   |     97|     117|   337|      80|
|[pinene100](http://www.gams.com/modlib/libhtml/pinene.htm)                          |NLP   |   4996|    5006| 23036|    5560|
|[pinene200](http://www.gams.com/modlib/libhtml/pinene.htm)                          |NLP   |   9996|   10006| 45936|   10960|
|[pinene50](http://www.gams.com/modlib/libhtml/pinene.htm)                           |NLP   |   2496|    2506| 11586|    2860|
|[pollut](http://www.gams.com/modlib/libhtml/pollut.htm)                             |NLP   |      9|      43|   167|      40|
|[polygon100](http://www.gams.com/modlib/libhtml/polygon.htm)                        |NLP   |   5050|     201| 20199|   20000|
|[polygon25](http://www.gams.com/modlib/libhtml/polygon.htm)                         |NLP   |    325|      51|  1299|    1250|
|[polygon50](http://www.gams.com/modlib/libhtml/polygon.htm)                         |NLP   |   1275|     101|  5099|    5000|
|[polygon75](http://www.gams.com/modlib/libhtml/polygon.htm)                         |NLP   |   2850|     151| 11399|   11250|
|[popdynm100](http://www.gams.com/modlib/libhtml/popdynm.htm)                        |NLP   |   5593|    5616| 23553|    7584|
|[popdynm200](http://www.gams.com/modlib/libhtml/popdynm.htm)                        |NLP   |  11193|   11216| 46953|   14984|
|[popdynm25](http://www.gams.com/modlib/libhtml/popdynm.htm)                         |NLP   |   1393|    1416|  6243|    2274|
|[popdynm50](http://www.gams.com/modlib/libhtml/popdynm.htm)                         |NLP   |   2793|    2816| 12013|    4044|
|prob06                                                                              |NLP   |      2|       2|     4|       4|
|prob07                                                                              |NLP   |     36|      15|   110|      63|
|prob09                                                                              |NLP   |      1|       3|     3|       2|
|[process](http://www.gams.com/modlib/libhtml/process.htm)                           |NLP   |      8|      11|    28|      11|
|[prolog](http://www.gams.com/modlib/libhtml/prolog.htm)                             |NLP   |     23|      21|   129|      14|
|[qp1](http://www.gams.com/modlib/libhtml/qp1.htm)                                   |NLP   |      3|      51|   148|      50|
|[qp2](http://www.gams.com/modlib/libhtml/qp2.htm)                                   |NLP   |      3|      51|   148|      50|
|[qp3](http://www.gams.com/modlib/libhtml/qp3.htm)                                   |NLP   |     53|     101|  2748|     100|
|[qp4](http://www.gams.com/modlib/libhtml/qp4.htm)                                   |NLP   |     32|      80|  1581|      29|
|[qp5](http://www.gams.com/modlib/libhtml/qp5.htm)                                   |NLP   |     32|     109|  1639|       0|
|[ramsey](http://www.gams.com/modlib/libhtml/ramsey.htm)                             |NLP   |     23|      34|    77|      22|
|[rbrock](http://www.gams.com/modlib/libhtml/rbrock.htm)                             |NLP   |      1|       3|     3|       2|
|[robot100](http://www.gams.com/modlib/libhtml/robot.htm)                            |NLP   |    803|    1113|  3907|    2503|
|[robot200](http://www.gams.com/modlib/libhtml/robot.htm)                            |NLP   |   1603|    2213|  7807|    5003|
|[robot400](http://www.gams.com/modlib/libhtml/robot.htm)                            |NLP   |   3203|    4413| 15607|   10003|
|[robot50](http://www.gams.com/modlib/libhtml/robot.htm)                             |NLP   |    403|     563|  1957|    1253|
|[rocket100](http://www.gams.com/modlib/libhtml/rocket.htm)                          |NLP   |    503|     608|  2607|    1803|
|[rocket200](http://www.gams.com/modlib/libhtml/rocket.htm)                          |NLP   |   1003|    1208|  5207|    3603|
|[rocket400](http://www.gams.com/modlib/libhtml/rocket.htm)                          |NLP   |   2003|    2408| 10407|    7203|
|[rocket50](http://www.gams.com/modlib/libhtml/rocket.htm)                           |NLP   |    253|     308|  1307|     903|
|[sambal](http://www.gams.com/modlib/libhtml/sambal.htm)                             |NLP   |     11|      18|    48|      13|
|[sample](http://www.gams.com/modlib/libhtml/sample.htm)                             |NLP   |      3|       5|    13|       8|
|[ship](http://www.gams.com/modlib/libhtml/ship.htm)                                 |NLP   |     17|      11|    53|      31|
|[srcpm](http://www.gams.com/modlib/libhtml/srcpm.htm)                               |NLP   |     28|      40|   163|       5|
|st_bpaf1a                                                                           |NLP   |     11|      11|    56|      10|
|st_bpaf1b                                                                           |NLP   |     11|      11|    56|      10|
|st_bpk1                                                                             |NLP   |      7|       5|    17|       4|
|st_bpv1                                                                             |NLP   |      5|       5|    13|       4|
|st_bpv2                                                                             |NLP   |      6|       5|    14|       3|
|st_bsj2                                                                             |NLP   |      6|       4|    19|       3|
|st_bsj3                                                                             |NLP   |      2|       7|    13|       6|
|st_bsj4                                                                             |NLP   |      5|       7|    23|       6|
|st_cqpf                                                                             |NLP   |      7|       5|    19|       4|
|st_cqpjk1                                                                           |NLP   |      3|       5|    13|       4|
|st_cqpjk2                                                                           |NLP   |      2|       4|     7|       3|
|st_e01                                                                              |NLP   |      2|       3|     5|       2|
|st_e02                                                                              |NLP   |      4|       4|     9|       4|
|st_e03                                                                              |NLP   |      8|      11|    28|      11|
|st_e04                                                                              |NLP   |      3|       5|     9|       5|
|st_e05                                                                              |NLP   |      4|       6|    11|       4|
|st_e06                                                                              |NLP   |      4|       4|     9|       3|
|st_e07                                                                              |NLP   |      8|      11|    32|       7|
|st_e08                                                                              |NLP   |      3|       3|     7|       4|
|st_e09                                                                              |NLP   |      2|       3|     5|       4|
|st_e11                                                                              |NLP   |      3|       4|     7|       4|
|st_e12                                                                              |NLP   |      4|       5|    12|       2|
|st_e16                                                                              |NLP   |     10|      13|    35|      18|
|st_e17                                                                              |NLP   |      2|       3|     5|       2|
|st_e18                                                                              |NLP   |      5|       3|    11|       4|
|st_e19                                                                              |NLP   |      3|       3|     7|       3|
|st_e21                                                                              |NLP   |      7|       7|    21|       3|
|st_e22                                                                              |NLP   |      6|       3|    13|       2|
|st_e23                                                                              |NLP   |      3|       3|     7|       2|
|st_e24                                                                              |NLP   |      5|       3|    11|       2|
|st_e25                                                                              |NLP   |      9|       5|    37|       4|
|st_e26                                                                              |NLP   |      5|       3|    11|       2|
|st_e28                                                                              |NLP   |      5|      10|    27|      16|
|st_e30                                                                              |NLP   |     16|      15|    44|      14|
|st_e33                                                                              |NLP   |      7|      10|    30|       7|
|st_e34                                                                              |NLP   |      5|       7|    27|      14|
|st_e37                                                                              |NLP   |      2|       5|     7|       4|
|st_e41                                                                              |NLP   |      3|       5|    13|      12|
|st_e42                                                                              |NLP   |      3|       8|    11|       4|
|st_fp7a                                                                             |NLP   |     11|      21|   185|      20|
|st_fp7b                                                                             |NLP   |     11|      21|   185|      20|
|st_fp7c                                                                             |NLP   |     11|      21|   185|      20|
|st_fp7d                                                                             |NLP   |     11|      21|   185|      20|
|st_fp7e                                                                             |NLP   |     11|      21|   185|      20|
|st_fp8                                                                              |NLP   |     21|      25|   121|      24|
|st_glmp_fp1                                                                         |NLP   |      9|       5|    21|       2|
|st_glmp_fp2                                                                         |NLP   |     10|       5|    23|       2|
|st_glmp_fp3                                                                         |NLP   |      9|       5|    21|       2|
|st_glmp_kk90                                                                        |NLP   |      8|       6|    20|       2|
|st_glmp_kk92                                                                        |NLP   |      9|       5|    21|       2|
|st_glmp_kky                                                                         |NLP   |     14|       8|    37|       4|
|st_glmp_ss1                                                                         |NLP   |     12|       6|    28|       2|
|st_glmp_ss2                                                                         |NLP   |      9|       6|    22|       2|
|st_ht]()                                                                            |NLP   |      4|       3|     9|       2|
|st_iqpbk1                                                                           |NLP   |      8|       9|    23|       8|
|st_iqpbk2                                                                           |NLP   |      8|       9|    23|       8|
|st_jcbpaf2                                                                          |NLP   |     14|      11|   116|      10|
|st_m1                                                                               |NLP   |     12|      21|   226|      20|
|st_m2                                                                               |NLP   |     22|      31|   623|      30|
|st_pan1                                                                             |NLP   |      5|       4|    16|       3|
|st_ph1                                                                              |NLP   |      6|       7|    31|       6|
|st_ph10                                                                             |NLP   |      5|       3|    11|       2|
|st_ph11                                                                             |NLP   |      5|       4|    10|       3|
|st_ph12                                                                             |NLP   |      5|       4|    10|       3|
|st_ph13                                                                             |NLP   |     11|       4|    28|       3|
|st_ph14                                                                             |NLP   |     11|       4|    28|       3|
|st_ph15                                                                             |NLP   |      5|       5|    21|       4|
|st_ph2                                                                              |NLP   |      6|       7|    31|       6|
|st_ph20                                                                             |NLP   |     10|       4|    28|       2|
|st_ph3                                                                              |NLP   |      6|       7|    29|       4|
|st_phex                                                                             |NLP   |      6|       3|    13|       2|
|st_qpc-m0                                                                           |NLP   |      3|       3|     7|       2|
|st_qpc-m1                                                                           |NLP   |      6|       6|    27|       5|
|st_qpc-m3a                                                                          |NLP   |     11|      11|   108|      10|
|st_qpc-m3b                                                                          |NLP   |     11|      11|   108|      10|
|st_qpc-m3c                                                                          |NLP   |     11|      11|   108|      10|
|st_qpc-m4                                                                           |NLP   |     11|      11|   108|      10|
|st_qpk1                                                                             |NLP   |      5|       3|    11|       2|
|st_qpk2                                                                             |NLP   |     13|       7|    79|       6|
|st_qpk3                                                                             |NLP   |     23|      12|   254|      11|
|st_robot                                                                            |NLP   |      9|       9|    25|      16|
|st_rv1                                                                              |NLP   |      6|      11|    52|      10|
|st_rv2                                                                              |NLP   |     11|      21|   181|      20|
|st_rv3                                                                              |NLP   |     21|      21|   182|      20|
|st_rv7                                                                              |NLP   |     21|      31|   271|      30|
|st_rv8                                                                              |NLP   |     21|      41|   361|      40|
|st_rv9                                                                              |NLP   |     21|      51|   451|      50|
|st_z                                                                                |NLP   |      6|       4|    19|       3|
|[torsion100](http://www.gams.com/modlib/libhtml/torsion.htm)                        |NLP   |      5|    5309| 21221|   10606|
|[torsion25](http://www.gams.com/modlib/libhtml/torsion.htm)                         |NLP   |      5|    1409|  5621|    2806|
|[torsion50](http://www.gams.com/modlib/libhtml/torsion.htm)                         |NLP   |      5|    2709| 10821|    5406|
|[torsion75](http://www.gams.com/modlib/libhtml/torsion.htm)                         |NLP   |      5|    4009| 16021|    8006|
|[trig](http://www.gams.com/modlib/libhtml/trig.htm)                                 |NLP   |      2|       2|     3|       2|
|[turkey](http://www.gams.com/modlib/libhtml/turkey.htm)                             |NLP   |    288|     519|  4646|      55|
|[wall](http://www.gams.com/modlib/libhtml/wall.htm)                                 |NLP   |      6|       6|    20|      10|
|[water](http://www.gams.com/modlib/libhtml/water.htm)                               |DNLP  |     26|      42|   113|      46|
|[weapons](http://www.gams.com/modlib/libhtml/weapons.htm)                           |NLP   |     13|      66|   156|      65|
|[worst](http://www.gams.com/modlib/libhtml/worst.htm)                               |NLP   |     30|      35|   112|      53|

References
==========

- abel:
  - Kendrick, D, Caution and Probing in a Macroeconomic Model. Journal of Economic Dynamics and Control 4, 2 (1982).
- alkyl:
  - Berna, T, Locke, M, and Westerberg, A W, A New Approach to Optimization of Chemical Processes. American Institute of Chemical Engineers Journal 26, 1 (1980), 37-43.
- alkylation:
  - Edgar, T F, Himmelblau, D M, and Lasdon, L S, Optimization of Chemical Processes. McGraw Hill, Boston, 2001.
  - Binous, H, Chemical Engineering Application Models. (Contributed models)
- arki0001:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0002:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0003:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0004:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0005:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0006:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0007:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0008:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0009:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0010:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0011:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0012:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0013:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0014:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0015:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0016:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0017:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0018:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0019:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0020:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0021:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0022:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0023:
  - ARKI Consulting, ARKI Consulting Client Models.
- arki0024:
  - ARKI Consulting, ARKI Consulting Client Models.
- bayes2_10:
  - Greenberg, B, Lasdon, L S, and Plummer, J, Using Global Optimization to Estimate Population Class Sizes. Tech. rep., McComb School of Business, University of Texas, Austin, TX, 2003.
- bayes2_20:
  - Greenberg, B, Lasdon, L S, and Plummer, J, Using Global Optimization to Estimate Population Class Sizes. Tech. rep., McComb School of Business, University of Texas, Austin, TX, 2003.
- bayes2_30:
  - Greenberg, B, Lasdon, L S, and Plummer, J, Using Global Optimization to Estimate Population Class Sizes. Tech. rep., McComb School of Business, University of Texas, Austin, TX, 2003.
- bayes2_50:
  - Greenberg, B, Lasdon, L S, and Plummer, J, Using Global Optimization to Estimate Population Class Sizes. Tech. rep., McComb School of Business, University of Texas, Austin, TX, 2003.
- bearing:
  - Siddall, J N, Optimal Engineering Design: Principles and Applications. Marcel Dekker, New York, 1982.
  - Deb, K, and Goyal, M, Optimizing Engineering Designs Using a Combined Genetic Search. In Back, T, Ed, Proceedings of the Seventh International Conference on Genetic Algorithms. 1997, pp. 521-528.
  - Coello Coello, C A, Treating Constraints as Objectives for Single-Objective Evolutionary Optimization. Engineering Optimization 32 (2000), 275-308.
- btest14:
  - GAMS Software GmbH, GAMS Software Client Models.
- camcge:
  - Condon, T, Dahl, H, and Devarajan, S, Implementing a Computable General equilibrium Model on GAMS - The Cameroon Model. Tech. rep., The World Bank, 1987.
- camcns:
  - Condon, T, Dahl, H, and Devarajan, S, Implementing a Computable General equilibrium Model on GAMS - The Cameroon Model. Tech. rep., The World Bank, 1987.
- camshape100:
  - Anitescu, M, and Serban, R, A Sparse Superlinearly Convergent SQP with Applications to Two-Dimensional Shape Optimization. Tech. rep., Argonne National Laboratory, 1998.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- camshape200:
  - Anitescu, M, and Serban, R, A Sparse Superlinearly Convergent SQP with Applications to Two-Dimensional Shape Optimization. Tech. rep., Argonne National Laboratory, 1998.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- camshape400:
  - Anitescu, M, and Serban, R, A Sparse Superlinearly Convergent SQP with Applications to Two-Dimensional Shape Optimization. Tech. rep., Argonne National Laboratory, 1998.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- camshape800:
  - Anitescu, M, and Serban, R, A Sparse Superlinearly Convergent SQP with Applications to Two-Dimensional Shape Optimization. Tech. rep., Argonne National Laboratory, 1998.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- catmix100:
  - von Stryk, O, User's Guide for DIRCOL (Version 2.1): A Direct Collocation Method for the Numerical Solution of Optimal Control Problems. Tech. rep., Technische Universitat Munchen, 1999.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- catmix200:
  - von Stryk, O, User's Guide for DIRCOL (Version 2.1): A Direct Collocation Method for the Numerical Solution of Optimal Control Problems. Tech. rep., Technische Universitat Munchen, 1999.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- catmix400:
  - von Stryk, O, User's Guide for DIRCOL (Version 2.1): A Direct Collocation Method for the Numerical Solution of Optimal Control Problems. Tech. rep., Technische Universitat Munchen, 1999.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- catmix800:
  - von Stryk, O, User's Guide for DIRCOL (Version 2.1): A Direct Collocation Method for the Numerical Solution of Optimal Control Problems. Tech. rep., Technische Universitat Munchen, 1999.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- chain100:
  - Cesari, L, Optimization - Theory and Applications. Springer Verlag, 1983.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- chain200:
  - Cesari, L, Optimization - Theory and Applications. Springer Verlag, 1983.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- chain400:
  - Cesari, L, Optimization - Theory and Applications. Springer Verlag, 1983.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- chain50:
  - Cesari, L, Optimization - Theory and Applications. Springer Verlag, 1983.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- chakra:
  - Kendrick, D, and Taylor, L, Numerical methods and Nonlinear Optimizing models for Economic Planning. In Chenery, H B, Ed, Studies of Development Planning. Harvard University Press, 1971.
- chance:
  - Bracken, J, and McCormick, G P, Chapter 9. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 94-100.
- chem:
  - Bracken, J, and McCormick, G P, Chapter 5. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 48-49.
- chenery:
  - Chenery, H B, and Raduchel, W J, Substitution and Structural Change. In Chenery, H B, Ed, Structural Change and Development Policy. Oxford University Press, New York and Oxford, 1979.
- circle:
  - Gill, P E, Murray, W, and Saunders, M A, GAMS/SNOPT: An SQP Algorithm for Large-Scale Constrained Optimization.
- demo7:
  - Kutcher, G P, Meeraus, A, and O'Mara, G T, Agriculture Sector and Policy Models. The World Bank, 1988.
- dispatch:
  - Wood, A J, and Wollenberg, B F, Example Problem 4e. In Power Generation, Operation and Control. John Wiley and Sons, 1984, pp. 85-88.
- elec100:
  - Morris, J R, Deaven, D M, and Ho, K M, Genetic Algorithm Energy Minimization for Point Charges on a Sphere. Phys. Rev. B. 53 (1996), R1740-R1743.
  - Saff, E B, and Kuijlaars, A, Distributing Many Points on the Sphere. Math. Intelligencer 19 (1997), 5-11.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- elec200:
  - Morris, J R, Deaven, D M, and Ho, K M, Genetic Algorithm Energy Minimization for Point Charges on a Sphere. Phys. Rev. B. 53 (1996), R1740-R1743.
  - Saff, E B, and Kuijlaars, A, Distributing Many Points on the Sphere. Math. Intelligencer 19 (1997), 5-11.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- elec25:
  - Morris, J R, Deaven, D M, and Ho, K M, Genetic Algorithm Energy Minimization for Point Charges on a Sphere. Phys. Rev. B. 53 (1996), R1740-R1743.
  - Saff, E B, and Kuijlaars, A, Distributing Many Points on the Sphere. Math. Intelligencer 19 (1997), 5-11.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- elec50:
  - Morris, J R, Deaven, D M, and Ho, K M, Genetic Algorithm Energy Minimization for Point Charges on a Sphere. Phys. Rev. B. 53 (1996), R1740-R1743.
  - Saff, E B, and Kuijlaars, A, Distributing Many Points on the Sphere. Math. Intelligencer 19 (1997), 5-11.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- etamac:
  - Manne, A S, ETA-MACRO: A Model of Energy-Economy Interactions. In Hitch, C J, Ed, Modeling Energy-Economy Interactions: Five Approaches. Resources for the Future, Washington, DC, 1977.
- ex14_1_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Reklaitis, G, and Ragsdell, K, Engineering Optimization. John Wiley and Sons, New York, NY, 1983.
- ex14_1_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Meintjes, K, and Morgan, A P, Chemical-Equilibrium Systems as Numerical Test Problems. ACM Trans. Math. Soft. 16 (1990), 143-151.
- ex14_1_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Bullard, L G, and Biegler, L T, Iterative Linear-Programming Strategies for Constrained Simulation. Comput. Chem. Eng. 15 (1991), 239-254.
- ex14_1_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Ferraris, G B, and Tronconi, E, BUNLSI - a FORTRAN Program for Solution of Systems of Nonlinear Algebraic Equations. Comput. Chem. Eng. 10 (1986), 129-141.
- ex14_1_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Kearfott, R, and Novoa, M, INTBIS, A Portable Interval Newton Bisection Package. ACM Trans. Math. Soft. 16 (1990), 152-157.
- ex14_1_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Kearfott, R, and Novoa, M, INTBIS, A Portable Interval Newton Bisection Package. ACM Trans. Math. Soft. 16 (1990), 152-157.
- ex14_1_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Ratschek, H, and Rokne, J, A Circuit Design Problem. J. Global Opt. 3 (1993), 501.
- ex14_1_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Kubicek, M, Hofmann, H, Hlavacek, V, and Sinkule, J, Multiplicity and Stability in a Sequence of Two Nonadiabatic Nonisothermal CSTRS. Chem. Engng. Sci. 35 (1980), 987.
- ex14_1_9:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Smith, J, Chemical Engineering Kinetics. Butterworth, Stoneham, MA, 1985.
- ex14_2_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex14_2_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex14_2_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex14_2_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex14_2_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex14_2_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex14_2_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex14_2_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex14_2_9:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_10:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex2_1_9:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex3_1_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Hock, W, and Schittkowski, K, Text Examples for Nonlinear Programming Codes. In Test Examples for Nonlinear Programming Codes, Lecture Notes in Economics and Mathematical Systems. Springer Verlag, 1981.
- ex3_1_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Colville, A R, A Comparative Study of Nonlinear Programming Codes. In Kuhn, H W, Ed, Princeton Symposium on Mathematical Programming. Princeton Univ. Press, 1970.
- ex3_1_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Hesse, R, A Heuristic Search Procedure for Estimating a Global Solution of Nonconvex Programming Problems. Op. Res. 21 (1973), 1267.
- ex3_1_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Ben-Sadd, S, An Algorithm for a Class of Nonlinear Nonconvex Optimization Problems. PhD thesis, University of California, Los Angeles, 1989.
- ex4_1_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Wingo, D, Globally Minimizing Polynomials Without Evaluating Derivatives. Intl. J. Comput. Math 17, 287 (1985).
- ex4_1_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Moore, R E, Methods and Applications of Interval Analysis. Prentice Hall, Englewood Cliffs, NJ, 1979.
- ex4_1_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Wilkinson, J H, Rounding Errors in Algebraic Processes. Prentice Hall, Englewood Cliffs, NJ, 1963.
- ex4_1_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Dixon, L, and Szegoe, G P, Towards Global Optimization. In University of Cagliari, Ed, Proceedings of a Workshop at the University of Cagliari, Italy. North Holland, 1975.
- ex4_1_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Dixon, L, and Szegoe, G P, Towards Global Optimization. In University of Cagliari, Ed, Proceedings of a Workshop at the University of Cagliari, Italy. North Holland, 1975.
- ex4_1_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Goldstein, A, and Price, J, On Descent From Local Minima. Mathematics of Computation 25 (1971), 569-574.
- ex4_1_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Dixon, L, On Finding the Global Minimum of a Function of One Variable. In SIAM, Ed, SIAM National Meeting. Chicago, 1990.
- ex4_1_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Soland, R M, An Algorithm for Separable Nonconvex Programming Problems ii : Nonconvex Constraints. Mgnt. Sci. 17 (1971), 759.
- ex4_1_9:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex5_2_2_case1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Haverly, C A, Studies of the Behavior of Recursion for the Pooling Problem. ACM SIGMAP Bull 25 (1978), 19-28.
- ex5_2_2_case2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Haverly, C A, Studies of the Behavior of Recursion for the Pooling Problem. ACM SIGMAP Bull 25 (1978), 19-28.
- ex5_2_2_case3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Haverly, C A, Studies of the Behavior of Recursion for the Pooling Problem. ACM SIGMAP Bull 25 (1978), 19-28.
- ex5_2_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Ben-Tal, A, Eiger, G, and Gershovitz, V, Global Minimization by Reducing the Duality Gap. Mathematical Programming 63 (1994), 193-212.
- ex5_2_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Ben-Tal, A, Eiger, G, and Gershovitz, V, Global Minimization by Reducing the Duality Gap. Mathematical Programming 63 (1994), 193-212.
- ex5_3_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Visweswaran, V, and Floudas, C A, Computational Results for an Efficient Implementation of the GOP Algorithm and its Variants. In Grossmann, I E, Ed, Global Optimization in Engineering Design. Kluwer Books, 1996.
- ex5_3_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Aggarwal, A, and Floudas, C A, Synthesis of General Distillation Sequences: Nonsharp Separation. Computers and Chemical Engineering 14, 6 (1990), 631-653.
- ex5_4_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Avriel, M, and Williams, A C, An Extension of Geometric Programming with Applications in Engineering Optimization. Journal of Engineering Mathematics 5 (1971), 187-194.
- ex5_4_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Visweswaran, V, and Floudas, C A, Computational Results for an Efficient Implementation of the GOP Algorithm and its Variants. In Grossmann, I E, Ed, Global Optimization in Engineering Design. Kluwer Books, 1996.
- ex5_4_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Floudas, C A, and Ciric, A R, Global Optimum Issues on Heat Exchanger Networks Synthesis. In Floudas, C A, and Ciric, A R, Eds, Proceedings of the Third International Symposium on Process Systems Engineering. Sydney, Australia, 1988.
- ex6_1_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, GLOPEQ: A New Computational Tool for the Phase and Chemical Equilibrium Problem. Comput. Chem. Eng. 21 (1997), 1-23.
  - Heidemann, R, and Mandhane, J, Some Properties of the NRTL Equation in Correcting Liquid-Liquid Equilibrium Data. Chem. Eng. Sci. 28 (1973), 1213.
- ex6_1_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, Global Optimization for the Phase Stability Problem. AIChE J. 41 (1995), 1798.
- ex6_1_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, Global Optimization for the Phase and Chemical Equilibrium Problem: Application to the NRTL Equation. Comput. Chem. Eng. 19 (1995), 1.
  - Castillo, J, and Grossmann, I E, Computation of Phase and Chemical Equilibria. Comput. Chem. Eng. 5 (1981), 99.
- ex6_1_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, Global Optimization for the Phase and Chemical Equilibrium Problem: Application to the NRTL Equation. Comput. Chem. Eng. 19 (1995), 1.
- ex6_2_10:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, GLOPEQ: A New Computational Tool for the Phase and Chemical Equilibrium Problem. Comput. Chem. Eng. 21 (1997), 1-23.
  - Magnussen, T, Rasmussen, P, and Fredenslund, A, UNIFAC Parameter Table for Prediction of Liquid-Liquid Equilibria. I and EC Proc. Des. Dev. 26 (1981), 159.
- ex6_2_11:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, Global Optimization for the Phase and Chemical Equilibrium Problem. PhD thesis, Princeton University, 1995.
- ex6_2_12:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, GLOPEQ: A New Computational Tool for the Phase and Chemical Equilibrium Problem. Comput. Chem. Eng. 21 (1997), 1-23.
- ex6_2_13:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, GLOPEQ: A New Computational Tool for the Phase and Chemical Equilibrium Problem. Comput. Chem. Eng. 21 (1997), 1-23.
  - Heidemann, R, and Mandhane, J, Some Properties of the NRTL Equation in Correcting Liquid-Liquid Equilibrium Data. Chem. Eng. Sci. 28 (1973), 1213.
- ex6_2_14:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, Global Optimization and Analysis for the Gibbs Free Energy Function Using the UNIFAC, Wilson and ASOG Equations. I and EC Res. 34 (1995), 1674.
- ex6_2_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, GLOPEQ: A New Computational Tool for the Phase and Chemical Equilibrium Problem. Comput. Chem. Eng. 21 (1997), 1-23.
- ex6_2_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, Global Optimization for the Phase Stability Problem. AIChE J. 41 (1995), 1798.
- ex6_2_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, GLOPEQ: A New Computational Tool for the Phase and Chemical Equilibrium Problem. Comput. Chem. Eng. 21 (1997), 1-23.
- ex6_2_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, Global Optimization for the Phase Stability Problem. AIChE J. 41 (1995), 1798.
- ex6_2_9:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - McDonald, C M, and Floudas, C A, GLOPEQ: A New Computational Tool for the Phase and Chemical Equilibrium Problem. Comput. Chem. Eng. 21 (1997), 1-23.
  - Heidemann, R, and Mandhane, J, Some Properties of the NRTL Equation in Correcting Liquid-Liquid Equilibrium Data. Chem. Eng. Sci. 28 (1973), 1213.
- ex7_2_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Dembo, R S, A Set of Geometric Programming Test Problems and Their Solutions. Math. Prog. 10 (1976), 192-213.
- ex7_2_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Adjiman, C S, Dallwig, S, Floudas, C A, and Neumaier, A, A Global Optimization Method, aBB, For General Twice-Differentiable NLPs - I. Theoretical Advances. Comput. Chem. Eng. 22 (1998), 1137-1158.
  - Ryoo, H S, and Sahinidis, N, Global Optimization of Nonconvex NLPs and MINLPs with Applications in Process Design. Comput. Chem. Eng 19 (1995), 551-566.
  - Manousiouthakis, V, and Sourlas, D, A Global Optimization Approach to Rationally Constrained Rational Programming. Chem. Eng. Comm. 115 (1992), 127.
  - Maranas, C D, and Floudas, C A, Global Optimization in Generalized Geometric Programming. Comput. Chem. Eng. 21 (1997), 351-370.
- ex7_2_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Avriel, M, and Williams, A C, An Extension of Geometric Programming with Applications in Engineering Optimization. Journal of Engineering Mathematics 5 (1971), 187-194.
- ex7_2_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Dembo, R S, A Set of Geometric Programming Test Problems and Their Solutions. Math. Prog. 10 (1976), 192-213.
- ex7_3_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - de Gaston, R, and Safonov, M, Exact Calculation of the Multi-Loop Stability Margin. IEEE Trans. Automat. Contr. 33 (1988), 68.
- ex7_3_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Sideris, A, and Sanchez, Fast Computation of the Multivariable Stability Margin for Real Interrelated Uncertain Parameters. In ACC, Ed, Proc. ACC, Atlanta, GA. 1988.
- ex7_3_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Ackermann, J, Kaesbauer, D, and Muench, R, Robust Gamma-Stability Analysis in a Plant Parameter Space. Automatica 27 (1991), 75.
- ex7_3_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Vicino, A, and Tesi, A, Computation of Nonconservative Stability Perturbation Bounds for Systems with Nonlinearly Correlated Uncertainties. IEEE Trans. Autom. Contr 35 (1990), 835.
- ex7_3_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Ackermann, J, Kaesbauer, D, and Muench, R, Robust Gamma-Stability Analysis in a Plant Parameter Space. Automatica 27 (1991), 75.
- ex7_3_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Barmish, B R, New Tools for Robustness of Linear Systems. MacMillan Publishing Company, New York, NY, 1994.
  - Abate, M, Barmish, B R, Murillo-Sanchez, C, and Tempo, R, Application of Some New Tools to Robust Stability Analysis of Spark Ignition Engines : A Case Study. IEEE Trans. Contr. Syst. Tech. 2 (1994), 22.
- ex8_1_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Adjiman, C S, Dallwig, S, Floudas, C A, and Neumaier, A, A Global Optimization Method, aBB, For General Twice-Differentiable NLPs - I. Theoretical Advances. Comput. Chem. Eng. 22 (1998), 1137-1158.
- ex8_1_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Maranas, C D, and Floudas, C A, Global Minimum Potential Energy Conformations of Small Molecules. Journal of Global Optimization 4 (1994), 135-170.
- ex8_1_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Goldstein, A, and Price, J, On Descent From Local Minima. Mathematics of Computation 25 (1971), 569-574.
- ex8_1_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Dixon, L, and Szegoe, G P, Towards Global Optimization. In University of Cagliari, Ed, Proceedings of a Workshop at the University of Cagliari, Italy. North Holland, 1975.
- ex8_1_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Dixon, L, and Szegoe, G P, Towards Global Optimization. In University of Cagliari, Ed, Proceedings of a Workshop at the University of Cagliari, Italy. North Holland, 1975.
- ex8_1_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Dixon, L, and Szegoe, G P, Towards Global Optimization. In University of Cagliari, Ed, Proceedings of a Workshop at the University of Cagliari, Italy. North Holland, 1975.
- ex8_1_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Adjiman, C S, Dallwig, S, Floudas, C A, and Neumaier, A, A Global Optimization Method, aBB, For General Twice-Differentiable NLPs - I. Theoretical Advances. Comput. Chem. Eng. 22 (1998), 1137-1158.
  - Murtagh, B A, and Saunders, M A, MINOS 5.4 User's Guide. Tech. rep., Systems Optimization Laboratory, Department of Operations Research, 1993.
- ex8_2_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Grossmann, I E, and Sargent, R, Optimal Design of Multipurpose Chemical Plants. Ind. Eng. Chem. Proc. Des. Dev. 18 (1979), 343.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
- ex8_2_1a:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Grossmann, I E, and Sargent, R, Optimal Design of Multipurpose Chemical Plants. Ind. Eng. Chem. Proc. Des. Dev. 18 (1979), 343.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_1b:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Grossmann, I E, and Sargent, R, Optimal Design of Multipurpose Chemical Plants. Ind. Eng. Chem. Proc. Des. Dev. 18 (1979), 343.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds and replacement of common multiplicative sub-expression exp(data-b(i)) in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
- ex8_2_2a:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_2b:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds and replacement of common multiplicative sub-expression exp(data-b(i)) in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
- ex8_2_3a:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_3b:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds and replacement of common multiplicative sub-expression exp(data-b(i)) in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
- ex8_2_4a:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_4b:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds and replacement of common multiplicative sub-expression exp(data-b(i)) in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
- ex8_2_5a:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds in models ex8_2_*.gms, Private Communications, 2004.
- ex8_2_5b:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Harding, S T, and Floudas, C A, Global Optimization in Multiproduct and Multipurpose Batch Design Under Uncertainty. I and EC Res. 36 (1997), 1644-1664.
  - Drud, A, Missing bounds and replacement of common multiplicative sub-expression exp(data-b(i)) in models ex8_2_*.gms, Private Communications, 2004.
- ex8_3_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Schweiger, C A, and Floudas, C A, Optimization Framework for the Synthesis of Chemical Reactor Networks. Ind. Eng. Chem. Res. (1998).
- ex8_3_10:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_3_11:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Schweiger, C A, and Floudas, C A, Optimization Framework for the Synthesis of Chemical Reactor Networks. Ind. Eng. Chem. Res. (1998).
- ex8_3_12:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Schweiger, C A, and Floudas, C A, Optimization Framework for the Synthesis of Chemical Reactor Networks. Ind. Eng. Chem. Res. (1998).
- ex8_3_13:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Schweiger, C A, and Floudas, C A, Optimization Framework for the Synthesis of Chemical Reactor Networks. Ind. Eng. Chem. Res. (1998).
- ex8_3_14:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Schweiger, C A, and Floudas, C A, Optimization Framework for the Synthesis of Chemical Reactor Networks. Ind. Eng. Chem. Res. (1998).
- ex8_3_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_3_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_3_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_3_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_3_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_3_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_3_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_3_9:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_4_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Esposito, W R, and Floudas, C A, Global Optimization in Parameter Estimation of Nonlinear Algebraic Models via the Error-in-Variables Approach. Ind. Eng. Chem. Res. 35 (1998), 1841-1858.
  - Tjoa, I B, and Biegler, L T, Reduced Successive Quadratic Programming Strategy for Errors-in-Variables Estimation. Comp. Chem. Engng 16 (1992), 523.
- ex8_4_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Esposito, W R, and Floudas, C A, Global Optimization in Parameter Estimation of Nonlinear Algebraic Models via the Error-in-Variables Approach. Ind. Eng. Chem. Res. 35 (1998), 1841-1858.
  - Tjoa, I B, and Biegler, L T, Reduced Successive Quadratic Programming Strategy for Errors-in-Variables Estimation. Comp. Chem. Engng 16 (1992), 523.
- ex8_4_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Esposito, W R, and Floudas, C A, Global Optimization in Parameter Estimation of Nonlinear Algebraic Models via the Error-in-Variables Approach. Ind. Eng. Chem. Res. 35 (1998), 1841-1858.
  - Tjoa, I B, and Biegler, L T, Reduced Successive Quadratic Programming Strategy for Errors-in-Variables Estimation. Comp. Chem. Engng 16 (1992), 523.
  - Rod, V, and Hancil, V, Iterative Estimation of Model Parameters When Measurements of All Variables are Subject to Error. Comp. Chem. Engng 4 (1980), 33.
- ex8_4_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Esposito, W R, and Floudas, C A, Global Optimization in Parameter Estimation of Nonlinear Algebraic Models via the Error-in-Variables Approach. Ind. Eng. Chem. Res. 35 (1998), 1841-1858.
  - Csendes, T, and Ratz, D, Subdivision Direction Selection in Interval Methods for Global Optimization. Journal of Global Optimization 7 (1995), 183.
- ex8_4_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Moore, R E, Hansen, E, and Leclerc, A, Rigorous Methods for Global Optimization. In Floudas, C A, and Pardalos P M, Eds, Recent Advances in Global Optimization. Princeton University Press, 1992.
  - Esposito, W R, and Floudas, C A, Global Optimization in Parameter Estimation of Nonlinear Algebraic Models via the Error-in-Variables Approach. Ind. Eng. Chem. Res. 35 (1998), 1841-1858.
- ex8_4_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Esposito, W R, and Floudas, C A, Parameter Estimation of Nonlinear Algebraic Models via Global Optimization. Comput. Chem. Eng. 22 (1998), S213-S220.
- ex8_4_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Esposito, W R, and Floudas, C A, Global Optimization in Parameter Estimation of Nonlinear Algebraic Models via the Error-in-Variables Approach. Ind. Eng. Chem. Res. 35 (1998), 1841-1858.
  - Kim, I, Liebman, M J, and Edgar, T F, Robust Error-in-Variables Estimation Using Nonlinear Programming Techniques. AIChE 36 (1990), 985.
- ex8_4_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Esposito, W R, and Floudas, C A, Global Optimization in Parameter Estimation of Nonlinear Algebraic Models via the Error-in-Variables Approach. Ind. Eng. Chem. Res. 35 (1998), 1841-1858.
  - Kim, I, Liebman, M J, and Edgar, T F, Robust Error-in-Variables Estimation Using Nonlinear Programming Techniques. AIChE 36 (1990), 985.
- ex8_4_8_bnd:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Esposito, W R, and Floudas, C A, Global Optimization in Parameter Estimation of Nonlinear Algebraic Models via the Error-in-Variables Approach. Ind. Eng. Chem. Res. 35 (1998), 1841-1858.
  - Kim, I, Liebman, M J, and Edgar, T F, Robust Error-in-Variables Estimation Using Nonlinear Programming Techniques. AIChE 36 (1990), 985.
- ex8_5_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Green, K, Zhou, S, and Luks, K, The Fractal Response of Robust Solution Techniques to the Stationary Point Problem. Fluid Phase Equilibria 84 (1993), 49-78.
- ex8_5_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_5_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Michelsen, M L, The Isothermal Flash Problem - Part i. Stability. Fluid Phase Equilibria 9 (1982), 1.
- ex8_5_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Hua, J, Brennecke, J, and Stadtherr, M, Enhanced Interval Analysis for Phase Stability: Cubic Equation of State Models. I and EC res. 37 (1998), 1519-1527.
- ex8_5_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Hua, J, Brennecke, J, and Stadtherr, M, Enhanced Interval Analysis for Phase Stability: Cubic Equation of State Models. I and EC res. 37 (1998), 1519-1527.
- ex8_5_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Hua, J, Brennecke, J, and Stadtherr, M, Enhanced Interval Analysis for Phase Stability: Cubic Equation of State Models. I and EC res. 37 (1998), 1519-1527.
- ex8_6_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex8_6_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
- ex9_1_1:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Clark, P A, and Westerberg, A W, Bilevel Programming for Steady-State Chemical Process Design-i. Fundamentals and Algorithms. Comput. Chem. Eng. 14 (1990), 87.
- ex9_1_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Liu, Y H, and Hart, S M, Characterizing an Optimal Solution to the Linear Bilevel Programming Problem. European Journal of Operational Research 79 (1994), 164-166.
- ex9_1_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Clark, P A, and Westerberg, A W, A Note on the Optimality Conditions for the Bilevel Programming Problem. Naval Research Logistics 35 (1988), 413-418.
- ex9_1_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Bard, J F, Some Properties of the Bilevel Programming Problem. Journal of Optimization Theory and Applications 68 (1991), 371-378.
- ex9_1_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Bard, J F, and Falk, J E, An Explicit Solution to the Multi-Level Programming Problem. Comp. Op. Res. 9 (1982), 77-100.
- ex9_2_2:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Shimizu, K, and Aiyoshi, E, A New Computational Method for Stackelberg and Mim-Max Problems by Use of a Penalty Method. IEEE Trans. on Aut. Control 26 (1981).
- ex9_2_3:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Visweswaran, V, A Decomposition-Based Global Optimization Approach for Solving Bilevel Linear and Quadratic Programs. In Floudas, C A, and Pardalos, P M, Eds, State of the Art in Global Optimization. Kluwer Academic Publishers, 1996, p. 139.
- ex9_2_4:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Yezza, A, First-Order Necessary Optimality Conditions for General Bilevel Programming Problems. Journal of Optimization Theory and Applications 89 (1996), 189-219.
- ex9_2_5:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Clark, P A, and Westerberg, A W, Bilevel Programming for Steady-State Chemical Process Design-i. Fundamentals and Algorithms. Comput. Chem. Eng. 14 (1990), 87.
- ex9_2_6:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Falk, J E, and Liu, J, On Bilevel Programming, Part i: General Nonlinear Cases. Mathematical Programming 70 (1995), 47.
- ex9_2_7:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Visweswaran, V, A Decomposition-Based Global Optimization Approach for Solving Bilevel Linear and Quadratic Programs. In Floudas, C A, and Pardalos, P M, Eds, State of the Art in Global Optimization. Kluwer Academic Publishers, 1996, p. 139.
- ex9_2_8:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Yezza, A, First-Order Necessary Optimality Conditions for General Bilevel Programming Problems. Journal of Optimization Theory and Applications 89 (1996), 189-219.
- fct:
  - Pinter, J D, LGO - A Model Development System for Continuous Global Optimization. User's Guide. (Revised edition). Pinter Consulting Services, Halifax, NS Canada, 2003.
- filter:
  - Edgar, T F, Himmelblau, D M, and Lasdon, L S, Optimization of Chemical Processes. McGraw Hill, Boston, 2001.
  - Binous, H, Chemical Engineering Application Models. (Contributed models)
- flowchan100:
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- flowchan200:
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- flowchan400:
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- flowchan50:
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- gancns:
  - Mitra, P, and Tendulkar, S, Coping with Internal and External Exogenous Shocks: India. Tech. rep., The World Bank, 1986.
- ganges:
  - Mitra, P, and Tendulkar, S, Coping with Internal and External Exogenous Shocks: India. Tech. rep., The World Bank, 1986.
- gasoil100:
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- gasoil200:
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- gasoil400:
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- gasoil50:
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- glider100:
  - Bulirsch, R, Nerz, E, Pesch, H J, and von Stryk, O, Combining Direct and Indirect Methods in Nonlinear Optimal Control: Range Maximization of a Hang Glider. In Bulirsch, R, Ed, Optimal Control. Birkhauser Verlag, 1993, pp. 273-288.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- glider200:
  - Bulirsch, R, Nerz, E, Pesch, H J, and von Stryk, O, Combining Direct and Indirect Methods in Nonlinear Optimal Control: Range Maximization of a Hang Glider. In Bulirsch, R, Ed, Optimal Control. Birkhauser Verlag, 1993, pp. 273-288.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- glider400:
  - Bulirsch, R, Nerz, E, Pesch, H J, and von Stryk, O, Combining Direct and Indirect Methods in Nonlinear Optimal Control: Range Maximization of a Hang Glider. In Bulirsch, R, Ed, Optimal Control. Birkhauser Verlag, 1993, pp. 273-288.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- glider50:
  - Bulirsch, R, Nerz, E, Pesch, H J, and von Stryk, O, Combining Direct and Indirect Methods in Nonlinear Optimal Control: Range Maximization of a Hang Glider. In Bulirsch, R, Ed, Optimal Control. Birkhauser Verlag, 1993, pp. 273-288.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- gsg_0001:
  - GAMS Software GmbH, GAMS Software Client Models.
- gtm:
  - Manne, A S, and Beltramo, M A, GTM: An International Gas Trade Model ,International Energy Program Report. Stanford University, 1984.
- harker:
  - Harker, P T, Alternative Models of Spatial Competition. Operations Research 34, 3 (1986), 410-425.
- haverly:
  - Haverly, C A, Studies of the Behavior of Recursion for the Pooling Problem. ACM SIGMAP Bull 25 (1978), 19-28.
  - Adhya, N, Tawarmalani, M, and Sahinidis, N, A Lagrangian Approach to the Pooling Problem. Industrial and Engineering Chemical Research 38 (1999), 1956-1972.
- hhfair:
  - Fair, R C, Specification, Estimation, and Analysis of Macroeconomic Models. Harvard University Press, Cambridge, Mass, 1984.
- himmel16:
  - Himmelblau, D M, Problem Number 16. In Applied Nonlinear Programming. Mc Graw Hill, New York, 1972.
- house:
  - Borland, Eureka: The Solver, Borland International, Scotts Valley, California, 1987.
- hs62:
  - Hock, W, and Schittkowski, K, Test Examples for Nonlinear Programming Codes, Lecture Notes in Economics and Mathematical Systems. Springer Verlag, 1981.
- hydro:
  - Wood, A J, and Wollenberg, B F, Example Problem 7b. In Power Generation, Operation and Control. John Wiley and Sons, 1984, p. 202.
- immun:
  - Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization Models: Risk Management. In Zenios, S A, Ed, Financial Optimization. Cambridge University Press, New York, NY, 1993.
- infeas1:
  - GAMS Development, GAMS Development Client Models.
- jbearing100:
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Capriz, G, and Cimatti, G, Free Boundary Problems in the Theory of Hydrodynamic Lubrication: A Survey. In Fasano, A, and Primicerio, M, Eds, Research Notes in Mathematics. Pitman, 1983, pp. 613-635.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- jbearing25:
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Capriz, G, and Cimatti, G, Free Boundary Problems in the Theory of Hydrodynamic Lubrication: A Survey. In Fasano, A, and Primicerio, M, Eds, Research Notes in Mathematics. Pitman, 1983, pp. 613-635.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- jbearing50:
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Capriz, G, and Cimatti, G, Free Boundary Problems in the Theory of Hydrodynamic Lubrication: A Survey. In Fasano, A, and Primicerio, M, Eds, Research Notes in Mathematics. Pitman, 1983, pp. 613-635.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- jbearing75:
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Capriz, G, and Cimatti, G, Free Boundary Problems in the Theory of Hydrodynamic Lubrication: A Survey. In Fasano, A, and Primicerio, M, Eds, Research Notes in Mathematics. Pitman, 1983, pp. 613-635.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- korcge:
  - Lewis, J, and Robinson, S, Chapter 11. In Chenery, H B, Robinson, S, and Syrquin, M, Eds, Industrialization and Growth: A Comparative Study. Oxford University Press, London, 1986.
- korcns:
  - Lewis, J, and Robinson, S, Chapter 11. In Chenery, H B, Robinson, S, and Syrquin, M, Eds, Industrialization and Growth: A Comparative Study. Oxford University Press, London, 1986.
- launch:
  - Bracken, J, and McCormick, G P, Chapter 7. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 58-82.
- least:
  - Bracken, J, and McCormick, G P, Chapter 8.4. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 89-90.
- like:
  - Bracken, J, and McCormick, G P, Chapter 8.5. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 90-92.
- linear:
  - Bracken, J, and McCormick, G P, Chapter 8.2. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 86-88.
- lnts100:
  - Betts, J, Eldersveld, S, and Huffman, W, Sparse Nonlinear Programming Test Problems. Tech. rep., Boeing Computer Services, 1993.
  - Bryson, A E, and Ho, Y, Applied Optimal Control: Optimization, Estimation, and Control. John Wiley and Sons, 1975.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- lnts200:
  - Betts, J, Eldersveld, S, and Huffman, W, Sparse Nonlinear Programming Test Problems. Tech. rep., Boeing Computer Services, 1993.
  - Bryson, A E, and Ho, Y, Applied Optimal Control: Optimization, Estimation, and Control. John Wiley and Sons, 1975.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- lnts400:
  - Betts, J, Eldersveld, S, and Huffman, W, Sparse Nonlinear Programming Test Problems. Tech. rep., Boeing Computer Services, 1993.
  - Bryson, A E, and Ho, Y, Applied Optimal Control: Optimization, Estimation, and Control. John Wiley and Sons, 1975.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- lnts50:
  - Betts, J, Eldersveld, S, and Huffman, W, Sparse Nonlinear Programming Test Problems. Tech. rep., Boeing Computer Services, 1993.
  - Bryson, A E, and Ho, Y, Applied Optimal Control: Optimization, Estimation, and Control. John Wiley and Sons, 1975.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- mathopt1:
  - Mathematica, MathOptimizer - An Advanced Modeling and Optimization System for Mathematica Users. http://www.wolfram.com/products/applications/mathoptimizer/
  - Pinter, J D, Global Optimization in Action. Kluwer Acadameic Publishers, Dordrecht/Boston/London, 1996.
  - Pinter, J D, Computational Global Optimization in Nonlinear Systems. Lionheart Publishing, Atlanta, GA, 2001.
- mathopt2:
  - Mathematica, MathOptimizer - An Advanced Modeling and Optimization System for Mathematica Users. http://www.wolfram.com/products/applications/mathoptimizer/
  - Pinter, J D, Global Optimization in Action. Kluwer Acadameic Publishers, Dordrecht/Boston/London, 1996.
  - Pinter, J D, Computational Global Optimization in Nonlinear Systems. Lionheart Publishing, Atlanta, GA, 2001.
- mathopt3:
  - Mathematica, MathOptimizer - An Advanced Modeling and Optimization System for Mathematica Users. http://www.wolfram.com/products/applications/mathoptimizer/
  - Pinter, J D, Global Optimization in Action. Kluwer Acadameic Publishers, Dordrecht/Boston/London, 1996.
  - Pinter, J D, Computational Global Optimization in Nonlinear Systems. Lionheart Publishing, Atlanta, GA, 2001.
- mathopt4:
  - Mathematica, MathOptimizer - An Advanced Modeling and Optimization System for Mathematica Users. http://www.wolfram.com/products/applications/mathoptimizer/
  - Pinter, J D, Global Optimization in Action. Kluwer Acadameic Publishers, Dordrecht/Boston/London, 1996.
  - Pinter, J D, Computational Global Optimization in Nonlinear Systems. Lionheart Publishing, Atlanta, GA, 2001.
- maxmin:
  - Stinstra, E, den Hertog, D, Stehouwer, H P, and Vestjens, A, Constrained Maximin Designs for Computer Experiments. Technometrics (under revision) (2002).
  - Pinter, J D, LGO - A Model Development System for Continuous Global Optimization. User's Guide. (Revised edition). Pinter Consulting Services, Halifax, NS Canada, 2003.
- meanvar:
  - Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization Models: Risk Management. In Zenios, S A, Ed, Financial Optimization. Cambridge University Press, New York, NY, 1993.
- methanol100:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Maria, G, An Adaptive Strategy for Solving Kinetic Model Concomitant Estimation - Reduction Problems. Can. J. Chem. Eng. 67 (1989), 825.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- methanol200:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Maria, G, An Adaptive Strategy for Solving Kinetic Model Concomitant Estimation - Reduction Problems. Can. J. Chem. Eng. 67 (1989), 825.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- methanol400:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Maria, G, An Adaptive Strategy for Solving Kinetic Model Concomitant Estimation - Reduction Problems. Can. J. Chem. Eng. 67 (1989), 825.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- methanol50:
  - Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R, Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and Schweiger, C A, Handbook of Test Problems in Local and Global Optimization. Kluwer Academic Publishers, 1999.
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Maria, G, An Adaptive Strategy for Solving Kinetic Model Concomitant Estimation - Reduction Problems. Can. J. Chem. Eng. 67 (1989), 825.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- mhw4d:
  - Wright, M H, Numerical Methods for Nonlinearly Constraint Optimization. PhD thesis, Stanford University, 1976.
- minlphi:
  - Morari, M, and Grossmann, I E, Eds, Chemical Engineering Optimization Models with GAMS. Computer Aids for Chemical Engineering Corporation, 1991.
  - Floudas, C A, and Paules IV, G E, A Mixed-Integer Nonlinear Programming Formulation for the Synthesis of Heat Integrated Distillation Sequence. Computers and Chemical Engineering 12, 6 (1988), 531-546.
- minsurf100:
  - Friedman, A, Free Boundary Problems in Science and Technology. Notices Amer. Math. Soc. 47 (2000), 854-861.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- minsurf25:
  - Friedman, A, Free Boundary Problems in Science and Technology. Notices Amer. Math. Soc. 47 (2000), 854-861.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- minsurf50:
  - Friedman, A, Free Boundary Problems in Science and Technology. Notices Amer. Math. Soc. 47 (2000), 854-861.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- minsurf75:
  - Friedman, A, Free Boundary Problems in Science and Technology. Notices Amer. Math. Soc. 47 (2000), 854-861.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- nemhaus:
  - Carlson, R C, and Nemhauser, G L, Scheduling to Minimize Interaction Cost. Operations Research 14 (1966), 52-58.
- otpop:
  - Blitzer, C, Meeraus, A, and Stoutjesdijk, A J, A Dynamic model of OPEC Trade and Production. Journal of Development Economics, 2 (1975), 318-335.
- pindyck:
  - Pindyck, R S, Gains to Producers from the Cartelization of Exhaustible Resources. Review of Economics and Statistics 60 (1978), 238-251.
- pinene100:
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- pinene200:
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- pinene50:
  - Tjoa, I B, and Biegler, L T, Simultaneous Solution and Optimization Strategies for Parameter Estimation of Differential-Algebraic Equations Systems. Ind. Eng. Chem. Res. 30 (1991), 376-385.
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Ascher, U M, Mattheij, R M M, and Russell, R D, Numerical Solution of Boundary Value Problems for Ordinary Differential Equations. SIAM, 1995.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- pollut:
  - Mangasarian, O L, Nonlinear Programming. McGraw Hill, New York, 1973.
- polygon100:
  - Graham, R L, The Largest Small Hexagon. J. Combin. Th. 18 (1975), 165-170.
  - Gay, D M, AMPL Models.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- polygon25:
  - Graham, R L, The Largest Small Hexagon. J. Combin. Th. 18 (1975), 165-170.
  - Gay, D M, AMPL Models.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- polygon50:
  - Graham, R L, The Largest Small Hexagon. J. Combin. Th. 18 (1975), 165-170.
  - Gay, D M, AMPL Models.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- polygon75:
  - Graham, R L, The Largest Small Hexagon. J. Combin. Th. 18 (1975), 165-170.
  - Gay, D M, AMPL Models.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- popdynm100:
  - Rothschild, B J, Sharov, A F, and Bondarenko, A S, Estimating Growth and Mortality in Stage-Structured Populations. Journal of Plankton Research 19 (1997), 1913-1928.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- popdynm200:
  - Rothschild, B J, Sharov, A F, and Bondarenko, A S, Estimating Growth and Mortality in Stage-Structured Populations. Journal of Plankton Research 19 (1997), 1913-1928.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- popdynm25:
  - Rothschild, B J, Sharov, A F, and Bondarenko, A S, Estimating Growth and Mortality in Stage-Structured Populations. Journal of Plankton Research 19 (1997), 1913-1928.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- popdynm50:
  - Rothschild, B J, Sharov, A F, and Bondarenko, A S, Estimating Growth and Mortality in Stage-Structured Populations. Journal of Plankton Research 19 (1997), 1913-1928.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- prob06:
  - Maranas, C D, and Floudas, C A, Global Optimization in Generalized Geometric Programming. Comput. Chem. Eng. 21 (1997), 351-370.
  - Westerlund, T, and Lundqvist K., Alpha-ECP, Version 5.01 An Interactive MINLP-Solver Based on the Extended Cutting Plane Method, Report 01-178-A. Tech. rep., Process Design Laboratory at Abo University, 2001.
- prob07:
  - Reklaitis, G, and Ragsdell, K, Engineering Optimization. John Wiley and Sons, New York, NY, 1983.
  - Westerlund, T, and Lundqvist K., Alpha-ECP, Version 5.01 An Interactive MINLP-Solver Based on the Extended Cutting Plane Method, Report 01-178-A. Tech. rep., Process Design Laboratory at Abo University, 2001.
- prob09:
  - Westerlund, T, and Lundqvist K., Alpha-ECP, Version 5.01 An Interactive MINLP-Solver Based on the Extended Cutting Plane Method, Report 01-178-A. Tech. rep., Process Design Laboratory at Abo University, 2001.
- process:
  - Bracken, J, and McCormick, G P, Chapter 4. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968.
- prolog:
  - Norton, R D, and Scandizzo, P L, Market Equilibrium Computations in Activity Analysis Models. Operations Research 29, 2 (1981).
- qp1:
  - Brooke, A, Kendrick, D, and Meeraus, A, GAMS: A User's Guide. The Scientific Press, Redwood City, California, 1988.
- qp2:
  - Brooke, A, Kendrick, D, and Meeraus, A, GAMS: A User's Guide. The Scientific Press, Redwood City, California, 1988.
- qp3:
  - Brooke, A, Kendrick, D, and Meeraus, A, GAMS: A User's Guide. The Scientific Press, Redwood City, California, 1988.
- qp4:
  - Brooke, A, Kendrick, D, and Meeraus, A, GAMS: A User's Guide. The Scientific Press, Redwood City, California, 1988.
- qp5:
  - Brooke, A, Kendrick, D, and Meeraus, A, GAMS: A User's Guide. The Scientific Press, Redwood City, California, 1988.
- ramsey:
  - Ramsey, F P, A Mathematical Theory of Saving. Economics Journal (1928).
  - Murtagh, B A, and Saunders, M A, A Projected Lagrangian Algorithm and its Implementation for Sparse Nonlinear Constraints. Mathematical Programming Study 16 (1982), 84-117.
- rbrock:
  - Rosenbrock, H H, An Automatic Method for finding the Greatest or least value of a function. Computer Journal 3 (1960), 175-184.
- robot100:
  - Vanderbei, R, Nonlinear Optimization Models.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- robot200:
  - Vanderbei, R, Nonlinear Optimization Models.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- robot400:
  - Vanderbei, R, Nonlinear Optimization Models.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- robot50:
  - Vanderbei, R, Nonlinear Optimization Models.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- rocket100:
  - Bryson, A E, Dynamic Optimization. Addison Wesley, 1999.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- rocket200:
  - Bryson, A E, Dynamic Optimization. Addison Wesley, 1999.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- rocket400:
  - Bryson, A E, Dynamic Optimization. Addison Wesley, 1999.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- rocket50:
  - Bryson, A E, Dynamic Optimization. Addison Wesley, 1999.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- sambal:
  - Zenios, S A, Drud, A S, and Mulvey, J, Balancing some large Social Accounting Matrices with Nonlinear Programming. Tech. rep., Department of Civil Engineering, Princeton University, 1986.
- sample:
  - Bracken, J, and McCormick, G P, Chapter 10.2. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968.
- ship:
  - Bracken, J, and McCormick, G P, Chapter 6. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968.
- srcpm:
  - Manne, A S, Nelson, C R, So, K C, and Weyant, J P, CPM: A Contingency Planning Model of the International Oil Market, International Energy Program Report. Tech. rep., Stanford University, 1982.
- st_bpaf1a:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_bpaf1b:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_bpk1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_bpv1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_bpv2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_bsj2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_bsj3:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_bsj4:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_cqpf:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_cqpjk1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_cqpjk2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_e01:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Sahinidis, N, and Grossmann, I E, Convergence properties of generalized Benders' decomposition. Computers and Chemical Engineering 15 (1991), 481-491.
- st_e02:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Stoecker, W F, Design of Thermal Systems. McGraw Hill Book Co., New York, 1971.
- st_e03:
  - Bracken, J, and McCormick, G P, Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968.
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
- st_e04:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Stoecker, W F, Design of Thermal Systems. McGraw Hill Book Co., New York, 1971.
- st_e05:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Liebman, J, Lasdon, L S, Schrage, L, and Waren, A D, Modeling and Optimization with GINO. The Scientific Press, Palo Alto, CA, 1986.
- st_e06:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Liebman, J, Lasdon, L S, Schrage, L, and Waren, A D, Modeling and Optimization with GINO. The Scientific Press, Palo Alto, CA, 1986.
- st_e07:
  - Haverly, C A, Studies of the Behavior of Recursion for the Pooling Problem. ACM SIGMAP Bull 25 (1978), 19-28.
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
- st_e08:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Swaney, R E, Global solution of algebraic nonlinear programs, 1990. American Institute of Chemical Engineers, Annual Meeting, Chicago, IL
- st_e09:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Swaney, R E, Global solution of algebraic nonlinear programs, 1990. American Institute of Chemical Engineers, Annual Meeting, Chicago, IL
- st_e11:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Westerberg, A W, and Shah, J V, Assuring a global optimum by the use of an upper bound on the lower (dual) bound. Computers and Chemical Engineering 2 (1978), 83-92.
- st_e12:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Stephanopoulos, G, and Westerberg, A W, The use of Hestenes' method of multipliers to resolve dual gaps in engineering system optimization. Journal of Optimization Theory and Applications 15 (1975), 285-309.
- st_e16:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Floudas, C A, and Ciric, A R, Strategies for overcoming uncertainties in heat exchanger network synthesis. Computers and Chemical Engineering 13 (1989), 1133-1152.
- st_e17:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Liebman, J, Lasdon, L S, Schrage, L, and Waren, A D, Modeling and Optimization with GINO. The Scientific Press, Palo Alto, CA, 1986.
- st_e18:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Visweswaran, V, and Floudas, C A, A global optimization algorithm (GOP) for certain classes of nonconvex NLPs---II. Applications of theory and test problems. Computers and Chemical Engineering 14 (1990), 1419-1434.
- st_e19:
  - Manousiouthakis, V, and Sourlas, D, A Global Optimization Approach to Rationally Constrained Rational Programming. Chem. Eng. Comm. 115 (1992), 127.
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
- st_e21:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Stephanopoulos, G, and Westerberg, A W, The use of Hestenes' method of multipliers to resolve dual gaps in engineering system optimization. Journal of Optimization Theory and Applications 15 (1975), 285-309.
- st_e22:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Kalantari, B, and Rosen, J B, An algorithm for global minimization of linearly constrained convex quadratic functions. Mathematics of Operations Research 12 (1987), 544--561.
- st_e23:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Al-Khayyal, F A, and Falk, J E, Jointly constrained biconvex programming. Mathematics of Operations Research 8 (1983), 273-286.
- st_e24:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Konno, H, and Kuno, T, Linear multiplicative programming. Mathematical Programming 56 (1992), 51-64.
- st_e25:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Thoai, N V, A global optimization approach for solving convex multiplicative programming problems. Journal of Global Optimization 1 (1991), 341-357.
- st_e26:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Thakur, L S, Domain contraction in nonlinear programming: Minimizing a quadratic concave function over a polyhedron. Mathematics of Operations Research 16 (1990), 390-407.
- st_e28:
  - Colville, A R, A Comparative Study of Nonlinear Programming Codes. In Kuhn, H W, Ed, Princeton Symposium on Mathematical Programming. Princeton Univ. Press, 1970.
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
- st_e30:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Marin, R, Points of location on a fixture, 1998. Personal Communication
- st_e33:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Xia, Q, A difficult problem for genetic algorithms, 1996. Available from http://solon.cma.univie.ac.at/neum/glopt/xia.txt
- st_e34:
  - Hock, W, and Schittkowski, K, Text Examples for Nonlinear Programming Codes. In Test Examples for Nonlinear Programming Codes, Lecture Notes in Economics and Mathematical Systems. Springer Verlag, 1981.
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
- st_e37:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Beck, J V, and Arnold, K J, Parameter Estimation in Engineering and Science. Wiley, New York, 1977.
- st_e41:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Kim, Y S, Problems in reliability, 1998. Personal Communication
- st_e42:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Tawarmalani, M, and Ahmed, S, Analysis of a machining process, 1997. Project Report on Design of Experiments
- st_fp7a:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_fp7b:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_fp7c:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_fp7d:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_fp7e:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_fp8:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_glmp_fp1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Falk, J E, and Polocsay, S W, Image space analysis of generalized fractional programs. Journal of Global Optimization 4 (1994), 63-88.
- st_glmp_fp2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Falk, J E, and Polocsay, S W, Image space analysis of generalized fractional programs. Journal of Global Optimization 4 (1994), 63-88.
- st_glmp_fp3:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Falk, J E, and Polocsay, S W, Image space analysis of generalized fractional programs. Journal of Global Optimization 4 (1994), 63-88.
- st_glmp_kk90:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Konno, H, and Kuno, T, Linear multiplicative programming. Mathematical Programming 56 (1992), 51-64.
- st_glmp_kk92:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Konno, H, and Kuno, T, Linear multiplicative programming. Mathematical Programming 56 (1992), 51-64.
- st_glmp_kky:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Konno, H, Kuno, T, and Yajima, Y, Global optimization of a generalized convex multiplicative function. Journal of Global Optimization 4 (1994), 47-62.
- st_glmp_ss1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Schaible, S, and Sodini, C, Finite algorithm for generalized linear multiplicative programming. Journal of Optimization Theory and Applications 87 (1995), 441-455.
- st_glmp_ss2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Schaible, S, and Sodini, C, Finite algorithm for generalized linear multiplicative programming. Journal of Optimization Theory and Applications 87 (1995), 441-455.
- st_ht:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_iqpbk1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_iqpbk2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_jcbpaf2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_m1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_m2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_pan1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph10:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph11:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph12:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph13:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph14:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph15:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph20:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_ph3:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_phex:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpc-m0:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpc-m1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpc-m3a:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpc-m3b:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpc-m3c:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpc-m4:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpk1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpk2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_qpk3:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_robot:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Tsai, L -, and Morgan, A P, Solving the kinematics of the most general six- and five-degree-of-freedom manipulators by continuation methods. ASME J. Mech. Transm. Automa. Des. 107 (1985), 189-200.
- st_rv1:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_rv2:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_rv3:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_rv7:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_rv8:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_rv9:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- st_z:
  - Tawarmalani, M, and Sahinidis, N, Convexification and Global Optimization in Continuous and Mixed-Integer Nonlinear Programming: Theory, Algorithms, Software, and Applications. Kluwer, 2002.
  - Shectman, J P, and Sahinidis, N, A finite algorithm for global minimization of separable concave programs. Journal of Global Optimization 12 (1998), 1--36.
  - Shectman, J P, Finite Algorithms for Global Optimization of Concave Programs and General Quadratic Programs, 1999. PhD thesis, Department of Mechanical and Industrial Engineering, University of Illinois, Urbana Champagne
- torsion100:
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Glowinski, R, Numerical Methods for Nonlinear Variational Problems. Springer Verlag, 1984.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- torsion25:
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Glowinski, R, Numerical Methods for Nonlinear Variational Problems. Springer Verlag, 1984.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- torsion50:
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Glowinski, R, Numerical Methods for Nonlinear Variational Problems. Springer Verlag, 1984.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- torsion75:
  - Averick, B M, Carter, R G, More, J J, and Xue, G L, The MINPACK-2 Test Problem Collection. Tech. rep., Mathematics and Computer Science Division, Argonne National Laboratory, 1992.
  - Glowinski, R, Numerical Methods for Nonlinear Variational Problems. Springer Verlag, 1984.
  - Dolan, E D, and More, J J, Benchmarking Optimization Software with COPS. Tech. rep., Mathematics and Computer Science Division, 2000.
- trig:
  - Pinter, J D, LGO - A Model Development System for Continuous Global Optimization. User's Guide. (Revised edition). Pinter Consulting Services, Halifax, NS Canada, 2003.
- turkey:
  - Le-Si, V, Scandizzo, P L, and Kasnagoklu, H, Turkey Agricultural Sector Model. Tech. rep., The World Bank, 1982.
- wall:
  - Wall, T W, Greening, D, and Woolsey, R E D, Solving Complex Chemical Equilibria Using a Geometric-Programming Based Technique. Operations Research 34, 3 (1987).
- water:
  - Brooke, A, Drud, A S, and Meeraus, A, Modeling Systems and Nonlinear Programming in a Research Environment. In Ragavan, R, and Rohde, S M, Eds, Computers in Engineering, Vol. III. ACME, 1985.
  - Drud, A S, and Rosenborg, A, Dimensioning Water Distribution Networks. Masters thesis, Institute of Mathematical Statistics and Operations Research, Technical University of Denmark, 1973. (in Danish)
- weapons:
  - Bracken, J, and McCormick, G P, Chapter 2. In Selected Applications of Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 22-27.
- worst:
  - Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization Models: Risk Management. In Zenios, S A, Ed, Financial Optimization. Cambridge University Press, New York, NY, 1993.

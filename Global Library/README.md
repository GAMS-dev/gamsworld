# GLOBALLib Model Statistics
GLOBALLib is a collection of Nonlinear Programming models. The purpose of the collection is to provide algorithm developer of global optimization codes with a large and varied set of both theoretical and practical test models.
GLOBALLib has been integrated into MINLPLib. This is an old version that is no-longer maintained.

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

	  gams ex4_1_1 u1=ex4_1_1.p1

The controlling model globallib.gms
===================================

The library also contains the GAMS model globallib.gms that helps
organizing the models and points in the GLOBALLib. All models are
matched with propper references to contributors, publications, and
application areas.

The model also help to create batch execution scripts. For example. the
following piece of GAMS code creates a batch script that runs models that
come from the book "Handbook of Test Problems in Local and Global
Optimization" by Floudas e.a. with solver OQGRG :

file frs batch run script / rs.bat /;
loop(m$mr(m,"r1"),
  put frs "gams " m.tl:0 " nlp=oqgrg dnlp=oqgrg cns=oqgrg " /;
  put$xp(m) xp.te(m);
  put /;
);


**GLOBALLib Model Statistics** 

Total number of models:   397

|Name                    |Type  |#Eqns  |#Vars   |#NZ   |#NNZ    |Bestknown Objective |
|------------------------|------|------:|-------:|-----:|-------:|-------------------:|
|abel                    |NLP   |     15|      31|   101|      30|                    |
|alkyl                   |NLP   |      8|      15|    32|      19|             [-1.7650](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/alkyl.p1)|
|alkylation              |NLP   |     12|      11|    38|      14|                    |
|arki0001                |NLP   |    514|    1031|  3814|     512|                    |
|arki0002                |NLP   |   1977|    2457|  5777|    1064|                    |
|arki0003                |NLP   |   2583|    2283| 12634|    4080|                    |
|arki0004                |NLP   |   2082|    2091| 14565|   10400|                    |
|arki0005                |NLP   |   5153|    2371|128411|   12768|                    |
|arki0006                |NLP   |   5153|    2371|128411|   12768|                    |
|arki0007                |NLP   |   5046|    4786| 18160|   10831|                    |
|arki0008                |NLP   |   5021|    5073| 24600|   16334|                    |
|arki0009                |NLP   |   6708|    7715| 29460|     523|                    |
|arki0010                |NLP   |   3428|    4145| 14905|     263|                    |
|arki0011                |NLP   |  17738|   19315| 76678|    1218|                    |
|arki0012                |NLP   |  17738|   19315| 76678|    1218|                    |
|arki0013                |NLP   |  17738|   19315| 76813|    1218|                    |
|arki0014                |NLP   |  17693|   19306| 76543|    1218|                    |
|arki0015                |NLP   |   1497|    2094|  6306|    3841|                    |
|arki0016                |NLP   |   2947|    5048| 19275|    6631|                    |
|arki0017                |NLP   |   2573|    4333| 16651|    5982|                    |
|arki0018                |NLP   |     10|    9805| 41663|    9804|                    |
|arki0019                |NLP   |      3|     511|  1022|     510|                    |
|arki0020                |NLP   |      3|    1263|  2526|    1262|                    |
|arki0021                |NLP   |      3|    3188|  6376|    3187|                    |
|arki0022                |NLP   |      3|    4153|  8306|    4152|                    |
|arki0023                |NLP   |      3|    8887| 17774|    8886|                    |
|arki0024                |NLP   |  26759|    8677| 68137|   14053|                    |
|bayes2_10               |NLP   |     78|      87|   607|     440|                    |
|bayes2_20               |NLP   |     78|      87|   616|     440|                    |
|bayes2_30               |NLP   |     78|      87|   619|     440|                    |
|bayes2_50               |NLP   |     78|      87|   622|     440|                    |
 bearing                 |NLP   |     13|      14|    41|      28|              [1.9517](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/bearing.p1)|
 btest14                 |NLP   |     94|     136|   622|     224|                    |
 camcge                  |NLP   |    243|     280|  1356|     850|                    |
 camcns                  |CNS   |    243|     280|  1356|     850|                    |
 camshape100             |NLP   |    201|     200|   697|     299|                    |
 camshape200             |NLP   |    401|     400|  1397|     599|                    |
 camshape400             |NLP   |    801|     800|  2797|    1199|                    |
 camshape800             |NLP   |   1601|    1600|  5597|    2399|                    |
 catmix100               |NLP   |    201|     304|  1203|    1200|                    |
 catmix200               |NLP   |    401|     604|  2403|    2400|                    |
 catmix400               |NLP   |    801|    1204|  4803|    4800|                    |
 catmix800               |NLP   |   1601|    2404|  9603|    9600|                    |
 chain100                |NLP   |    102|     203|   704|     303|                    |
 chain200                |NLP   |    202|     403|  1404|     603|                    |
 chain400                |NLP   |    402|     803|  2804|    1203|                    |
 chain50                 |NLP   |     52|     103|   354|     153|                    |
 chakra                  |NLP   |     42|      63|   143|      41|                    |
 chance                  |NLP   |      4|       5|    17|       4|             [29.8944](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/chance.p1)|
 chem                    |NLP   |      5|      12|    37|      11|                    |
 chenery                 |NLP   |     39|      44|   133|      56|                    |
 circle                  |NLP   |     10|       3|    30|      30|              [4.5742](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/circle.p1)|
 demo7                   |NLP   |     58|      71|   295|      12|                    |
 dispatch                |NLP   |      3|       5|    12|       6|           [3155.2879](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/dispatch.p1)|
 elec100                 |NLP   |    101|     301|   601|     600|                    |
 elec200                 |NLP   |    201|     601|  1201|    1200|                    |
 elec25                  |NLP   |     26|      76|   151|     150|                    |
 elec50                  |NLP   |     51|     151|   301|     300|                    |
 etamac                  |NLP   |     71|      98|   226|      35|                    |
 ex14_1_1                |NLP   |      5|       4|    14|       8|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_1_1.p1)|
 ex14_1_2                |NLP   |     10|       7|    43|      26|             [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_1_2.p1)|
 ex14_1_3                |NLP   |      5|       4|    14|       8|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_1_3.p1)|
 ex14_1_4                |NLP   |      5|       4|    14|       6|                    |
 ex14_1_5                |NLP   |      7|       7|    34|      10|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_1_5.p1)|
 ex14_1_6                |NLP   |     16|      10|    62|      32|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_1_6.p1)|
 ex14_1_7                |NLP   |     18|      11|   118|     100|                    |
 ex14_1_8                |NLP   |      5|       4|    12|       6|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_1_8.p1)|
 ex14_1_9                |NLP   |      3|       3|     6|       2|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_1_9.p1)|
 ex14_2_1                |NLP   |      8|       6|    35|      24|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_1.p1)|
 ex14_2_2                |NLP   |      6|       5|    20|      12|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_2.p1)|
 ex14_2_3                |NLP   |     10|       7|    54|      40|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_3.p1)|
 ex14_2_4                |NLP   |      8|       6|    35|      24|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_4.p1)|
 ex14_2_5                |NLP   |      6|       5|    20|      12|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_5.p1)|
 ex14_2_6                |NLP   |      8|       6|    35|      24|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_6.p1)|
 ex14_2_7                |NLP   |     10|       7|    54|      40|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_7.p1)|
 ex14_2_8                |NLP   |      6|       5|    20|      12|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_8.p1)|
 ex14_2_9                |NLP   |      6|       5|    20|      12|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex14_2_9.p1)|
 ex2_1_1                 |NLP   |      2|       6|    11|       5|            [-17.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_1.p1)|
 ex2_1_10                |NLP   |     11|      21|   221|      20|          [49318.0180](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_10.p1)|
 ex2_1_2                 |NLP   |      3|       7|    15|       5|           [-213.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_2.p1)|
 ex2_1_3                 |NLP   |     10|      14|    41|       4|            [-15.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_3.p1)|
 ex2_1_4                 |NLP   |      6|       7|    37|       1|            [-11.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_4.p1)|
 ex2_1_5                 |NLP   |     12|      11|   112|       7|           [-268.0146](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_5.p1)|
 ex2_1_6                 |NLP   |      6|      11|    57|      10|            [-39.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_6.p1)|
 ex2_1_7                 |NLP   |     11|      21|   185|      20|          [-4150.4101](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_7.p1)|
 ex2_1_8                 |NLP   |     11|      25|    73|      24|                    |
 ex2_1_9                 |NLP   |      2|      11|    21|      10|             [-0.3750](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex2_1_9.p1)|
 ex3_1_1                 |NLP   |      7|       9|    21|       8|           [7049.2480](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex3_1_1.p1)|
 ex3_1_2                 |NLP   |      7|       6|    30|      29|         [-30665.5387](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex3_1_2.p1)|
 ex3_1_3                 |NLP   |      7|       7|    19|       8|           [-310.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex3_1_3.p1)|
 ex3_1_4                 |NLP   |      4|       4|    12|       3|             [-4.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex3_1_4.p1)|
 ex4_1_1                 |NLP   |      1|       2|     2|       1|             [-7.4873](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex4_1_1.p1)|
 ex4_1_2                 |NLP   |      1|       2|     2|       1|                    |
 ex4_1_3                 |NLP   |      1|       2|     2|       1|           [-443.6717](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex4_1_3.p1)|
 ex4_1_4                 |NLP   |      1|       2|     2|       1|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex4_1_4.p1)|
 ex4_1_5                 |NLP   |      1|       3|     3|       2|                    |
 ex4_1_6                 |NLP   |      1|       2|     2|       1|              [7.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex4_1_6.p1)|
 ex4_1_7                 |NLP   |      1|       2|     2|       1|             [-7.5000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex4_1_7.p1)|
 ex4_1_8                 |NLP   |      2|       3|     5|       2|            [-16.7389](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex4_1_8.p1)|
 ex4_1_9                 |NLP   |      3|       3|     7|       2|             [-5.5080](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex4_1_9.p1)|
 ex5_2_2_case1           |NLP   |      7|      10|    30|       7|           [-400.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex5_2_2_case1.p1)|
 ex5_2_2_case2           |NLP   |      7|      10|    30|       7|           [-600.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex5_2_2_case2.p1)|
 ex5_2_2_case3           |NLP   |      7|      10|    30|       7|           [-750.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex5_2_2_case3.p1)|
 ex5_2_4                 |NLP   |      7|       8|    28|      16|           [-450.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex5_2_4.p1)|
 ex5_2_5                 |NLP   |     20|      33|   239|     195|                    |
 ex5_3_2                 |NLP   |     17|      23|    64|      24|              [1.8642](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex5_3_2.p1)|
 ex5_3_3                 |NLP   |     54|      63|   288|     200|                    |
 ex5_4_2                 |NLP   |      7|       9|    21|       8|           [7512.2301](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex5_4_2.p1)|
 ex5_4_3                 |NLP   |     14|      17|    43|      18|           [4845.4620](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex5_4_3.p1)|
 ex5_4_4                 |NLP   |     20|      28|    76|      33|                    |
 ex6_1_1                 |NLP   |      7|       9|    25|      20|             [-0.0202](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex6_1_1.p1)|
 ex6_1_2                 |NLP   |      4|       5|    13|      10|             [-0.0325](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex6_1_2.p1)|
 ex6_1_3                 |NLP   |     10|      13|    43|      36|                    |
 ex6_1_4                 |NLP   |      5|       7|    22|      18|             [-0.2945](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex6_1_4.p1)|
 ex6_2_10                |NLP   |      4|       7|    13|       6|                    |
 ex6_2_11                |NLP   |      2|       4|     7|       3|                    |
 ex6_2_12                |NLP   |      3|       5|     9|       4|                    |
 ex6_2_13                |NLP   |      4|       7|    13|       6|                    |
 ex6_2_14                |NLP   |      3|       5|     9|       4|             [-0.6954](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex6_2_14.p1)|
 ex6_2_5                 |NLP   |      4|      10|    19|       9|                    |
 ex6_2_6                 |NLP   |      2|       4|     7|       3|                    |
 ex6_2_7                 |NLP   |      4|      10|    19|       9|                    |
 ex6_2_8                 |NLP   |      2|       4|     7|       3|                    |
 ex6_2_9                 |NLP   |      3|       5|     9|       4|                    |
 ex7_2_1                 |NLP   |     15|       8|    46|      35|                    |
 ex7_2_2                 |NLP   |      6|       7|    17|      10|             [-0.3888](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex7_2_2.p1)|
 ex7_2_3                 |NLP   |      7|       9|    21|      10|                    |
 ex7_2_4                 |NLP   |      5|       9|    18|      14|                    |
 ex7_3_1                 |NLP   |      8|       5|    17|       3|              [0.3417](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex7_3_1.p1)|
 ex7_3_2                 |NLP   |      8|       5|    17|       3|              [1.0899](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex7_3_2.p1)|
 ex7_3_3                 |NLP   |      9|       6|    22|       5|              [0.8175](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex7_3_3.p1)|
 ex7_3_4                 |NLP   |     18|      13|    53|      23|                    |
 ex7_3_5                 |NLP   |     16|      14|    46|      25|              [1.2069](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex7_3_5.p1)|
 ex7_3_6                 |NLP   |     18|      18|    80|      54|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex7_3_6.p1)|
 ex8_1_1                 |NLP   |      1|       3|     3|       2|                    [-2.02180678337](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_1_1.p1)|
 ex8_1_2                 |NLP   |      1|       2|     2|       1|                    [2.80345847804](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_1_2.p1)|
 ex8_1_3                 |NLP   |      1|       3|     3|       2|                    |
 ex8_1_4                 |NLP   |      1|       3|     3|       2|                    |
 ex8_1_5                 |NLP   |      1|       3|     3|       2|                    |
 ex8_1_6                 |NLP   |      1|       3|     3|       2|            [-10.0860](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_1_6.p1)|
 ex8_1_7                 |NLP   |      6|       6|    20|      13|              [0.0293](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_1_7.p1)|
 ex8_2_1                 |NLP   |     32|      56|   166|     103|                    |
 ex8_2_1a                |NLP   |     32|      56|   166|     103|                    |
 ex8_2_1b                |NLP   |     34|      58|   170|     105|                    |
 ex8_2_2                 |NLP   |   1948|    7511| 22651|   15006|                    |
 ex8_2_2a                |NLP   |   1948|    7511| 22651|   15006|                    |
 ex8_2_2b                |NLP   |   1960|    7523| 22675|   15018|                    |
 ex8_2_3                 |NLP   |   3156|   15637| 46942|   31256|                    |
 ex8_2_3a                |NLP   |   3156|   15637| 46942|   31256|                    |
 ex8_2_3b                |NLP   |   3161|   15642| 46952|   31261|                    |
 ex8_2_4                 |NLP   |     82|      56|   366|     303|                    |
 ex8_2_4a                |NLP   |     82|      56|   366|     303|                    |
 ex8_2_4b                |NLP   |     88|      62|   378|     309|                    |
 ex8_2_5                 |NLP   |   3775|    2511| 32555|   30006|                    |
 ex8_2_5a                |NLP   |   3775|    2511| 32555|   30006|                    |
 ex8_2_5b                |NLP   |   3799|    2535| 32603|   30030|                    |
 ex8_3_1                 |NLP   |     77|     116|   561|     448|                    |
 ex8_3_10                |NLP   |    109|     142|   729|     567|                    |
 ex8_3_11                |NLP   |     77|     116|   561|     448|                    |
 ex8_3_12                |NLP   |     82|     121|   586|     468|                    |
 ex8_3_13                |NLP   |     73|     116|   576|     448|                    |
 ex8_3_14                |NLP   |     72|     111|   581|     463|                    |
 ex8_3_2                 |NLP   |     77|     111|   546|     423|                    |
 ex8_3_3                 |NLP   |     77|     111|   546|     423|                    |
 ex8_3_4                 |NLP   |     77|     111|   546|     423|                    |
 ex8_3_5                 |NLP   |     77|     111|   546|     423|                    |
 ex8_3_6                 |NLP   |     77|     111|   542|     425|                    |
 ex8_3_7                 |NLP   |     93|     127|   669|     537|                    |
 ex8_3_8                 |NLP   |     94|     127|   664|     535|                    |
 ex8_3_9                 |NLP   |     46|      79|   327|     214|                    |
 ex8_4_1                 |NLP   |     11|      23|    61|      40|                    |
 ex8_4_2                 |NLP   |     11|      25|    81|      60|                    |
 ex8_4_3                 |NLP   |     26|      53|   151|     100|                    |
 ex8_4_4                 |NLP   |     13|      18|    61|      36|              [0.2125](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_4_4.p1)|
 ex8_4_5                 |NLP   |     12|      16|    67|      55|                    |
 ex8_4_6                 |NLP   |      9|      15|    65|      56|                    |
 ex8_4_7                 |NLP   |     41|      63|   191|     140|                    |
 ex8_4_8                 |NLP   |     31|      43|   141|     130|                    |
 ex8_4_8_bnd             |NLP   |     31|      43|   141|     130|                    |
 ex8_5_1                 |NLP   |      5|       7|    21|      12|                    |
 ex8_5_2                 |NLP   |      5|       7|    21|      12|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_5_2.p1)|
 ex8_5_3                 |NLP   |      5|       6|    17|      10|             [-0.0041](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_5_3.p1)|
 ex8_5_4                 |NLP   |      5|       6|    17|      10|             [-0.0004](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_5_4.p1)|
 ex8_5_5                 |NLP   |      5|       6|    17|      10|             [-0.0108](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_5_5.p1)|
 ex8_5_6                 |NLP   |      5|       7|    21|      12|             [-0.0012](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex8_5_6.p1)|
 ex8_6_1                 |NLP   |     46|      76|   361|     315|                    |
 ex8_6_2                 |NLP   |      1|      31|    31|      30|                    |
 ex9_1_1                 |NLP   |     13|      14|    37|      10|            [-13.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_1_1.p1)|
 ex9_1_2                 |NLP   |     10|      11|    26|       8|            [-16.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_1_2.p1)|
 ex9_1_4                 |NLP   |     10|      11|    26|       8|            [-37.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_1_4.p1)|
 ex9_1_5                 |NLP   |     13|      14|    33|      10|             [-1.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_1_5.p1)|
 ex9_1_8                 |NLP   |     13|      15|    33|      10|             [-3.2500](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_1_8.p1)|
 ex9_2_2                 |NLP   |     12|      11|    27|      10|             [99.9999](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_2_2.p1)|
 ex9_2_3                 |NLP   |     16|      17|    45|      12|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_2_3.p1)|
 ex9_2_4                 |NLP   |      8|       9|    19|       6|              [0.5000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_2_4.p1)|
 ex9_2_5                 |NLP   |      8|       9|    22|       8|              [5.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_2_5.p1)|
 ex9_2_6                 |NLP   |     13|      17|    33|      16|             [-1.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_2_6.p1)|
 ex9_2_7                 |NLP   |     10|      11|    28|      10|             [17.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_2_7.p1)|
 ex9_2_8                 |NLP   |      6|       7|    14|       6|              [1.5000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ex9_2_8.p1)|
 fct                     |DNLP  |     10|      12|    43|      26|                    |
 filter                  |NLP   |      2|       3|     5|       3|                    |
 flowchan100             |NLP   |   2399|    2401| 18186|    1600|                    |
 flowchan200             |NLP   |   4799|    4801| 36186|    3200|                    |
 flowchan400             |NLP   |   9599|    9601| 71986|    6400|                    |
 flowchan50              |NLP   |   1199|    1201|  9086|     800|                    |
 gancns                  |CNS   |    274|     357|  1405|     817|                    |
 ganges                  |NLP   |    274|     357|  1405|     817|                    |
 gasoil100               |NLP   |   2599|    2604| 13791|    3002|                    |
 gasoil200               |NLP   |   5199|    5204| 27391|    5802|                    |
 gasoil400               |NLP   |  10399|   10404| 54591|   11402|                    |
 gasoil50                |NLP   |   1299|    1304|  6991|    1602|                    |
 glider100               |NLP   |   1210|    1316|  4832|    3018|                    |
 glider200               |NLP   |   2410|    2616|  9632|    6018|                    |
 glider400               |NLP   |   4810|    5216| 19232|   12018|                    |
 glider50                |NLP   |    610|     666|  2432|    1518|                    |
 gsg_0001                |NLP   |    112|      78|   369|      44|                    |
 gtm                     |NLP   |     25|      64|   162|      20|                    |
 harker                  |NLP   |      8|      21|    61|      20|                    |
 haverly                 |NLP   |     10|      13|    34|       7|            [900.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/haverly.p1)|
 hhfair                  |NLP   |     26|      30|    81|      21|                    |
 himmel16                |NLP   |     22|      19|    97|      84|             [ 0.8660](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/himmel16.p1)|
 house                   |NLP   |      9|       9|    26|       9|          [-2625.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/house.p1)|
 hs62                    |NLP   |      2|       4|     7|       6|                    |
 hydro                   |NLP   |     25|      32|    67|      12|        [4366944.1598](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/hydro.p1)|
 immun                   |NLP   |      8|      22|    64|       6|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/immun.p1)|
 infeas1                 |NLP   |   1615|     273|  9139|    3895|                    |
 jbearing100             |NLP   |      1|    5305|  5305|    5304|                    |
 jbearing25              |NLP   |      1|    1405|  1405|    1404|                    |
 jbearing50              |NLP   |      1|    2705|  2705|    2704|                    |
 jbearing75              |NLP   |      1|    4005|  4005|    4004|                    |
 korcge                  |NLP   |     78|      96|   346|     200|                    |
 korcns                  |CNS   |     78|      96|   346|     200|                    |
 launch                  |NLP   |     29|      39|   108|      52|                    |
 least                   |NLP   |      1|       4|     4|       3|          [14085.1398](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/least.p1)|
 like                    |NLP   |      4|      10|    17|       9|                    |
 linear                  |DNLP  |     21|      25|   121|      20|                    |
 lnts100                 |NLP   |    401|     507|  2002|    1200|                    |
 lnts200                 |NLP   |    801|    1007|  4002|    2400|                    |
 lnts400                 |NLP   |   1601|    2007|  8002|    4800|                    |
 lnts50                  |NLP   |    201|     257|  1002|     600|                    |
 mathopt1                |NLP   |      3|       3|     7|       4|                    |
 mathopt2                |NLP   |      5|       3|    11|       4|                    |
 mathopt3                |NLP   |      8|       7|    43|      24|                    |
 mathopt4                |NLP   |      3|       3|     7|       4|                    |
 maxmin                  |DNLP  |     78|      27|   390|     312|                    |
 meanvar                 |NLP   |      3|       9|    23|       7|              [5.2434](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/meanvar.p1)|
 methanol100             |NLP   |   2998|    3006| 16381|    5895|                    |
 methanol200             |NLP   |   5998|    6006| 32581|   11595|                    |
 methanol400             |NLP   |  11998|   12006| 64981|   22995|                    |
 methanol50              |NLP   |   1498|    1506|  8269|    3033|                    |
 mhw4d                   |NLP   |      4|       6|    14|      10|                    |
 minlphi                 |NLP   |     80|      65|   207|      36|                    |
 minsurf100              |NLP   |      1|    5305|  5305|    5304|                    |
 minsurf25               |NLP   |      1|    1405|  1405|    1404|                    |
 minsurf50               |NLP   |      1|    2705|  2705|    2704|                    |
 minsurf75               |NLP   |      1|    4005|  4005|    4004|                    |
 nemhaus                 |NLP   |      6|       6|    11|       5|             [31.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/nemhaus.p1)|
 otpop                   |NLP   |     77|     104|   268|      83|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/otpop.p1)|
 pindyck                 |NLP   |     97|     117|   337|      80|                    |
 pinene100               |NLP   |   4996|    5006| 23036|    5560|                    |
 pinene200               |NLP   |   9996|   10006| 45936|   10960|                    |
 pinene50                |NLP   |   2496|    2506| 11586|    2860|                    |
 pollut                  |NLP   |      9|      43|   167|      40|                    |
 polygon100              |NLP   |   5050|     201| 20199|   20000|                    |
 polygon25               |NLP   |    325|      51|  1299|    1250|                    |
 polygon50               |NLP   |   1275|     101|  5099|    5000|                    |
 polygon75               |NLP   |   2850|     151| 11399|   11250|                    |
 popdynm100              |NLP   |   5593|    5616| 23553|    7584|                    |
 popdynm200              |NLP   |  11193|   11216| 46953|   14984|                    |
 popdynm25               |NLP   |   1393|    1416|  6243|    2274|                    |
 popdynm50               |NLP   |   2793|    2816| 12013|    4044|                    |
 prob06                  |NLP   |      2|       2|     4|       4|                    |
 prob07                  |NLP   |     36|      15|   110|      63|                    |
 prob09                  |NLP   |      1|       3|     3|       2|                    |
 process                 |NLP   |      8|      11|    28|      11|             [-5.6733](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/process.p1)|
 prolog                  |NLP   |     23|      21|   129|      14|                    |
 qp1                     |NLP   |      3|      51|   148|      50|                    |
 qp2                     |NLP   |      3|      51|   148|      50|                    |
 qp3                     |NLP   |     53|     101|  2748|     100|                    |
 qp4                     |NLP   |     32|      80|  1581|      29|                    |
 qp5                     |NLP   |     32|     109|  1639|       0|              [0.4315](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/qp5.p1)|
 ramsey                  |NLP   |     23|      34|    77|      22|             [-1.4931](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/ramsey.p1)|
 rbrock                  |NLP   |      1|       3|     3|       2|              [0.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/rbrock.p1)|
 robot100                |NLP   |    803|    1113|  3907|    2503|                    |
 robot200                |NLP   |   1603|    2213|  7807|    5003|                    |
 robot400                |NLP   |   3203|    4413| 15607|   10003|                    |
 robot50                 |NLP   |    403|     563|  1957|    1253|                    |
 rocket100               |NLP   |    503|     608|  2607|    1803|                    |
 rocket200               |NLP   |   1003|    1208|  5207|    3603|                    |
 rocket400               |NLP   |   2003|    2408| 10407|    7203|                    |
 rocket50                |NLP   |    253|     308|  1307|     903|                    |
 sambal                  |NLP   |     11|      18|    48|      13|              [3.9682](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/sambal.p1)|
 sample                  |NLP   |      3|       5|    13|       8|            [726.6794](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/sample.p1)|
 ship                    |NLP   |     17|      11|    53|      31|                    |
 srcpm                   |NLP   |     28|      40|   163|       5|                    |
 st_bpaf1a               |NLP   |     11|      11|    56|      10|                    |
 st_bpaf1b               |NLP   |     11|      11|    56|      10|                    |
 st_bpk1                 |NLP   |      7|       5|    17|       4|                    |
 st_bpv1                 |NLP   |      5|       5|    13|       4|                    |
 st_bpv2                 |NLP   |      6|       5|    14|       3|                    |
 st_bsj2                 |NLP   |      6|       4|    19|       3|                    |
 st_bsj3                 |NLP   |      2|       7|    13|       6|                    |
 st_bsj4                 |NLP   |      5|       7|    23|       6|                    |
 st_cqpf                 |NLP   |      7|       5|    19|       4|                    |
 st_cqpjk1               |NLP   |      3|       5|    13|       4|                    |
 st_cqpjk2               |NLP   |      2|       4|     7|       3|                    |
 st_e01                  |NLP   |      2|       3|     5|       2|                    |
 st_e02                  |NLP   |      4|       4|     9|       4|                    |
 st_e03                  |NLP   |      8|      11|    28|      11|                    |
 st_e04                  |NLP   |      3|       5|     9|       5|                    |
 st_e05                  |NLP   |      4|       6|    11|       4|                    |
 st_e06                  |NLP   |      4|       4|     9|       3|                    |
 st_e07                  |NLP   |      8|      11|    32|       7|                    |
 st_e08                  |NLP   |      3|       3|     7|       4|                    |
 st_e09                  |NLP   |      2|       3|     5|       4|                    |
 st_e11                  |NLP   |      3|       4|     7|       4|                    |
 st_e12                  |NLP   |      4|       5|    12|       2|                    |
 st_e16                  |NLP   |     10|      13|    35|      18|                    |
 st_e17                  |NLP   |      2|       3|     5|       2|                    |
 st_e18                  |NLP   |      5|       3|    11|       4|                    |
 st_e19                  |NLP   |      3|       3|     7|       3|                    |
 st_e21                  |NLP   |      7|       7|    21|       3|                    |
 st_e22                  |NLP   |      6|       3|    13|       2|                    |
 st_e23                  |NLP   |      3|       3|     7|       2|                    |
 st_e24                  |NLP   |      5|       3|    11|       2|                    |
 st_e25                  |NLP   |      9|       5|    37|       4|                    |
 st_e26                  |NLP   |      5|       3|    11|       2|                    |
 st_e28                  |NLP   |      5|      10|    27|      16|         -30665.5387|
 st_e30                  |NLP   |     16|      15|    44|      14|                    |
 st_e33                  |NLP   |      7|      10|    30|       7|                    |
 st_e34                  |NLP   |      5|       7|    27|      14|                    |
 st_e37                  |NLP   |      2|       5|     7|       4|                    |
 st_e41                  |NLP   |      3|       5|    13|      12|                    |
 st_e42                  |NLP   |      3|       8|    11|       4|                    |
 st_fp7a                 |NLP   |     11|      21|   185|      20|                    |
 st_fp7b                 |NLP   |     11|      21|   185|      20|                    |
 st_fp7c                 |NLP   |     11|      21|   185|      20|                    |
 st_fp7d                 |NLP   |     11|      21|   185|      20|                    |
 st_fp7e                 |NLP   |     11|      21|   185|      20|                    |
 st_fp8                  |NLP   |     21|      25|   121|      24|                    |
 st_glmp_fp1             |NLP   |      9|       5|    21|       2|                    |
 st_glmp_fp2             |NLP   |     10|       5|    23|       2|                    |
 st_glmp_fp3             |NLP   |      9|       5|    21|       2|                    |
 st_glmp_kk90            |NLP   |      8|       6|    20|       2|                    |
 st_glmp_kk92            |NLP   |      9|       5|    21|       2|                    |
 st_glmp_kky             |NLP   |     14|       8|    37|       4|                    |
 st_glmp_ss1             |NLP   |     12|       6|    28|       2|                    |
 st_glmp_ss2             |NLP   |      9|       6|    22|       2|                    |
 st_ht                   |NLP   |      4|       3|     9|       2|                    |
 st_iqpbk1               |NLP   |      8|       9|    23|       8|                    |
 st_iqpbk2               |NLP   |      8|       9|    23|       8|                    |
 st_jcbpaf2              |NLP   |     14|      11|   116|      10|                    |
 st_m1                   |NLP   |     12|      21|   226|      20|                    |
 st_m2                   |NLP   |     22|      31|   623|      30|                    |
 st_pan1                 |NLP   |      5|       4|    16|       3|                    |
 st_ph1                  |NLP   |      6|       7|    31|       6|                    |
 st_ph10                 |NLP   |      5|       3|    11|       2|                    |
 st_ph11                 |NLP   |      5|       4|    10|       3|                    |
 st_ph12                 |NLP   |      5|       4|    10|       3|                    |
 st_ph13                 |NLP   |     11|       4|    28|       3|                    |
 st_ph14                 |NLP   |     11|       4|    28|       3|                    |
 st_ph15                 |NLP   |      5|       5|    21|       4|                    |
 st_ph2                  |NLP   |      6|       7|    31|       6|                    |
 st_ph20                 |NLP   |     10|       4|    28|       2|                    |
 st_ph3                  |NLP   |      6|       7|    29|       4|                    |
 st_phex                 |NLP   |      6|       3|    13|       2|                    |
 st_qpc-m0               |NLP   |      3|       3|     7|       2|                    |
 st_qpc-m1               |NLP   |      6|       6|    27|       5|                    |
 st_qpc-m3a              |NLP   |     11|      11|   108|      10|                    |
 st_qpc-m3b              |NLP   |     11|      11|   108|      10|                    |
 st_qpc-m3c              |NLP   |     11|      11|   108|      10|                    |
 st_qpc-m4               |NLP   |     11|      11|   108|      10|                    |
 st_qpk1                 |NLP   |      5|       3|    11|       2|                    |
 st_qpk2                 |NLP   |     13|       7|    79|       6|                    |
 st_qpk3                 |NLP   |     23|      12|   254|      11|                    |
 st_robot                |NLP   |      9|       9|    25|      16|                    |
 st_rv1                  |NLP   |      6|      11|    52|      10|                    |
 st_rv2                  |NLP   |     11|      21|   181|      20|                    |
 st_rv3                  |NLP   |     21|      21|   182|      20|                    |
 st_rv7                  |NLP   |     21|      31|   271|      30|                    |
 st_rv8                  |NLP   |     21|      41|   361|      40|                    |
 st_rv9                  |NLP   |     21|      51|   451|      50|                    |
 st_z                    |NLP   |      6|       4|    19|       3|                    |
 torsion100              |NLP   |      5|    5309| 21221|   10606|                    |
 torsion25               |NLP   |      5|    1409|  5621|    2806|                    |
 torsion50               |NLP   |      5|    2709| 10821|    5406|                    |
 torsion75               |NLP   |      5|    4009| 16021|    8006|                    |
 trig                    |NLP   |      2|       2|     3|       2|                    |
 turkey                  |NLP   |    288|     519|  4646|      55|                    |
 wall                    |NLP   |      6|       6|    20|      10|              [1.0000](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Global%20Library/points/wall.p1)|
 water                   |DNLP  |     26|      42|   113|      46|                    |
 weapons                 |NLP   |     13|      66|   156|      65|                    |
 worst                   |NLP   |     30|      35|   112|      53|                    |

# CONE Library

CONELib is a collection of CONIC Programming (in particular second order cone programming - SOCP) models. 
The purpose of the collection is to provide algorithm developer of cone optimization codes with a large and varied set of both theoretical and practical test models.

#CONELib Organization

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
identified by their unique name (e.g. nb_l2_bessel.gms).

The points
==========

For a model in the CONELib we will collect points. A point represent
some solution to a problem. The header of the file containing a point
explains the details of the point. It might contain the contributor of
the point, the solution value, the algorithm which was used to produce
the point, and the CPU time for finding the point. The points are part
of the library. They are indentified by the model name plus the
extension .p1, .p2, .p3, ... (e.g. nb_l2_bessel.p1).

In order to start a model from a certain point you can run gams in the
following way:

	  gams nb_l2_bessel u1=nb_l2_bessek.p1

The controlling model conelib.gms
===================================

The library also contains the GAMS model conelib.gms that helps
organizing the models and points in the CONELib. All models are
matched with propper references to contributors, publications, and
application areas.

#Scalar Models

The collection has initially been created by combining small- to medium-scale models from the literature. We invite everybody to make contributions to the collection and are particularly interested in industrial models.

Since many industrial models are based on proprietary information, the models have been translated into a scalar format in which documentation and comments have been removed, sets and set operators have been unrolled, and the original data and structure of the model have disappeared. Most industrial users will accept that translated confidential models can be made publicly available. The scalar models are not intended to serve as guidelines for good modeling practice.

The collection has models from different stages of the modeling process. This means that not all models are nicely formulated and some can be extremely difficult to solve. Some models may also be infeasible. This variety should help provide models that can help test the reliability of a solver in an extreme but probably very practical environment.

#Translation Service

The scalar models are maintained in the GAMS language. In order to make the models widely available GAMS World offers an automatic translation service which converts any GAMS model into a scalar model of a particular language (including AMPL, BARON, GAMS, LINGO, MINOPT etc.)
The actual translation is done by a special 'solver' called convert that comes with every GAMS system. So users with a recent GAMS system can do the scalar model generation with their GAMS system.

# CONELib Model Statistics

Conic Models converted to NLP format using GAMS/CONVERT. Access the CONELIB using conic constraints.

Total number of models:   31

|Name                    |Type  |#Eqns  |#Vars   |#NZ   |#NNZ    |Bestknown Objective |
|------------------------|------|------:|-------:|-----:|-------:|-------------------:|
|emfl_socp_200_25_nlp	 |NLP   |16876	|16926	 |41472	 |11250	 |[46.8675](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/emfl_socp_200_25.p1)          |
|emfl_socp_200_100_nlp	 |NLP   |90001	|90201	 |236172 |60000	 | 	                  |
|emfl_socp_500_100_nlp	 |NLP   |180001	|180201	 |447957 |120000 |[325.34611](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/emfl_socp_500_100.p1) 	                  |
|emfl_socp_250_225_nlp	 |NLP   |320626	|321076	 |877084 |213750 | 	                  |
|firl1linfeps_nlp		 |NLP   |9713	|11534	 |412895 |7688	 | 	                  |
|firl2l1alph_nlp		 |NLP   |7792	|9613	 |409053 |7688	 | 	                  |
|firl2linfeps_nlp		 |NLP   |9030	|14712	 |1211486|11768	 | 	                  |
|fir_socp_10_nlp		 |NLP   |307	|10		 |1711	 |2		 |[1.7382](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/fir_socp_10.p1)	          |
|fir_socp_20_nlp		 |NLP   |307	|15		 |3231	 |2	 	 |[1.04649](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/fir_socp_20.p1)                    |
|fir_socp_40_nlp		 |NLP   |307	|25		 |6271	 |2		 |1.0001	          |
|fir_socp_80_nlp		 |NLP   |307	|45		 |12351	 |2	 	 |                    |
|nb_nlp					 |NLP   |917	|2384	 |193901 |1586	 |-0.0507	          |
|nb_l1_nlp				 |NLP   |1709	|3177	 |195487 |1586	 |[-13.0123](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/nb_l1.p1)	          |
|nb_l2_nlp				 |NLP   |963	|4196	 |407317 |3352	 |[-1.62897](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/nb_l2.p1)	                  |
|nb_l2_bessel_nlp		 |NLP   |963	|2642	 |212295 |1798	 |[-0.1026](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/nb_l2_bessel.p1)	          |
|qp7_nlp				 |NLP   |34		|82		 |1585	 |31	 |[0.0008](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/qp7.p1)	          |
|qp7_50_100_nlp			 |NLP   |34		|82		 |1585	 |31	 |[0.0018](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/qp7_50_100.p1)	          |
|qp7_100_100_nlp		 |NLP   |34		|82		 |1585	 |31	 |[0.0043](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/qp7_100_100.p1)	          |
|qp7_100_170_nlp		 |NLP   |34		|82		 |1585	 |31	 |[0.0034](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/qp7_100_170.p1)	          |
|sched_50_50_orig_nlp	 |NLP   |2530	|4980	 |27967	 |2475	 |[26672.9916](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/sched_50_50_orig.p1)	      |
|sched_50_50_scaled_nlp	 |NLP   |2528	|4978	 |30462	 |2474	 |[7.8520](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/sched_50_50_scaled.p1)	          |
|sched_100_50_orig_nlp	 |NLP   |4847	|9747	 |60037	 |4742	 |[181889.9181](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/sched_100_50_orig.p1)	      |
|sched_100_50_scaled_nlp |NLP   |4845	|9745	 |65032	 |4741	 |[67.1651](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/sched_100_50_scaled.p1)	          |
|sched_100_100_orig_nlp	 |NLP   |8341	|18241	 |113142 |8236	 | 	                  |
|sched_100_100_scaled_nlp|NLP   |8339	|18239	 |123137 |8235	 |[27.3308](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/sched_100_100_scaled.p1)	          |
|sched_200_100_orig_nlp	 |NLP   |18090	|37890	 |278392 |17885	 |141360.3657	      |
|sched_200_100_scaled_nlp|NLP   |18088	|37888	 |298387 |17884	 |[51.8120](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/sched_200_100_scaled.p1)	          |
|springs_10_nlp			 |NLP   |46		|69		 |140	 |32	 |[-185.4461](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/springs_10.p1)	          |
|springs_100_nlp		 |NLP   |406	|609	 |1310	 |302	 |[-41591.0422](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/springs_100.p1)	      |
|springs_1000_nlp		 |NLP   |4006	|6009	 |13010	 |3002	 |[-4.003261E+7](https://git.gams.com/mdekhil/gamsworld/-/blob/master/Cone%20Library/points/springs_1000.p1)        |
|springs_10000_nlp		 |NLP   |40006	|60009	 |130010 |30002	 |                    |

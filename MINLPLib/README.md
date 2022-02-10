# MINLP Library

MINLPLib is a collection of Mixed Integer Nonlinear Programming models. 
The purpose of the collection is to provide algorithm developers with a large and varied set of both theoretical and practical test models.
This is an old version of MINLPLib that is no-longer maintained. The current MINLPLib is available at http://www.minlplib.org/


MINLPLib Organization

The models
==========

The original algebraic models have been translated into a scalar format in which documentation and comments have been removed, sets and set operators
have been unrolled, and the original data and structure of the model have disappeared. This kind of model represenation has the advantage of an easy
translation into different languages and also hides propriotary information. The latter is neccessary because the library contains confidential models.
For the purpose of algorithm development the representaton of the model is not of much importantance. The models are identified by their unique name (e.g. batch.gms).

The points
==========

For a model in the MINLPLib we will collect points. A point might represent a solution to the relaxed problem or a solution to the MINLP. The point is stored
in a GDX file and can be loaded into the model using command 'execute_loadpoint 'name_p1.gdx'. Additional information about the point is stored in a file called
points.htm. This file might contain the contributor of the point, the solution value, the algorithm which was used to produce the point, and the CPU time for
finding the point. The points are part of the library. They are indentified by the model name plus the extension _p1.gdx, _p2.gdx, _p3.gdx, ... (e.g. batch_p1.gdx).

In order to start a model from a certain point you can run gams in the following way:

	  gams batch u1=loadpoint --pfile batch_p1.gdx

In case you liked the old point format. You can use the GDX utility gdxdump to generate ASCII based point format: 'gdxdump batch_p1.gdx format=gamsbas > batch.p1'
and then run the model: 'gams batch u1=batch.p1'.

**Reference**

MINLPLib - A Collection of Test Models for Mixed-Integer Nonlinear Programming, M.R. Bussieck, A.S. Drud, and A. Meeraus. Informs J. Comput. 15(1), 2003

**MINLP Model Statistics** 

Total number of models:   269


|Name                                                                                                                                                                |#Eqns |#Vars   |#DVars |#NZ    |#NNZ   |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|------|-------:|------:|------:|-----: | 
|4stufen	                                                                                                                                                         |99	|150	 |48	 |319	 |87	 |
|[alan		  ](http://www.gams.com/modlib/libhtml/alan.htm)                                                                                                         |8		|9		 |4		 |24	 |3		 |
|batch[MINOPT model](http://titan.princeton.edu/MINOPT/modlib/Tests/kocis88-4a.dat)[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/batch.mod)	 |74	|47		 |24	 |191	 |22	 |
|[batchdes	  ](http://www.gams.com/modlib/libhtml/batchdes.htm)	                                                                                                 |20	|20		 |9		 |53	 |10	 |
|beuster	  	 																																					 |115	|158	|52		|398	|159	|
|blendgap	  	 																																					 |360	|332	|66		|1454	|440	|
|cecil_13	     																																					 |899	|841	|180	|2812	|360	|
|chp_partload  																																						|2517	|2249	|45		|6940	|1916	|
|contvar	   																																						|285	|297	|88		|1281	|530	|
|csched1[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-sched1.dat)[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-sched.mod)|23		|77		|63		|174	|8		|
|csched1a																																							|23		|29		|15		|78		|7		|
|csched2[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-sched1.dat)[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-sched.mod)|138	|401	|308	|958	|58		|
|csched2a																																							|138	|233	|140	|622	|57		|
|deb10																																								|130	|183	|22		|692	|432	|
|deb6																																								|508	|476	|20		|2342	|1432	|
|deb7																																								|898	|814	|20		|4116	|2816	|
|deb8																																								|898	|824	|20		|4136	|2816	|
|deb9																																								|918	|814	|20		|4156	|2816	|
|dosemin2d																																							|119	|166	|32		|4379	|4080	|
|dosemin3d																																							|1003	|1047	|18		|24614	|22095	|
|du-opt5																																							|10		|21		|13		|47		|20		|
|du-opt																																								|10		|21		|13		|47		|20		|
|eg_all_s																																							|26		|8		|7		|206	|182	|
|eg_disc_s																																							|26		|8		|4		|206	|182	|
|eg_disc2_s																																							|26		|8		|3		|206	|182	|
|eg_int_s																																							|26		|8		|3		|206	|182	|
|elf																																								|39		|55		|24		|178	|30		|
|eniplac																																							|190	|142	|24		|511	|48		|
|enpro48																																							|215	|154	|92		|742	|29		|
|enpro48pb																																							|215	|154	|92		|742	|29		|
|enpro56																																							|192	|128	|73		|651	|24		|
|enpro56pb																																							|192	|128	|73		|651	|24		|
|[ex1221		](http://titan.princeton.edu/TestProblems/chapter12/ex12.2.1.gms)	  																				|6		|6		|3		|17		|2		|
|[ex1222		](http://titan.princeton.edu/TestProblems/chapter12/ex12.2.2.gms)	  																				|4		|4		|1		|9		|2		|
|[ex1223		](http://titan.princeton.edu/TestProblems/chapter12/ex12.2.3.gms)	  																				|14		|12		|4		|40		|17		|
|[ex1223a		](http://titan.princeton.edu/TestProblems/chapter12/ex12.2.3.gms)																					|10		|8		|4		|32		|9		|
|[ex1223b		](http://titan.princeton.edu/TestProblems/chapter12/ex12.2.3.gms)																					|10		|8		|4		|32		|17		|
|[ex1224		](http://titan.princeton.edu/TestProblems/chapter12/ex12.2.4.gms)																						|8		|12		|8		|31		|6		|
|[ex1225		](http://titan.princeton.edu/TestProblems/chapter12/ex12.2.5.gms)																						|11		|9		|6		|27		|2		|
|[ex1226		](http://titan.princeton.edu/TestProblems/chapter12/ex12.2.6.gms)																						|6		|6		|3		|15		|2		|
|[ex1233		](http://titan.princeton.edu/TestProblems/chapter12/ex12.3.3.gms)																						|65		|53		|12		|221	|28		|
|[ex1243		](http://titan.princeton.edu/TestProblems/chapter12/ex12.4.3.gms)																						|97		|69		|16		|329	|36		|
|[ex1244		](http://titan.princeton.edu/TestProblems/chapter12/ex12.4.4.gms)																						|130	|96		|23		|469	|52		|
|[ex1252		](http://titan.princeton.edu/TestProblems/chapter12/ex12.5.2.gms)																						|44		|40		|15		|118	|36		|
|[ex1252a		](http://titan.princeton.edu/TestProblems/chapter12/ex12.5.2.gms)																					|35		|25		|9		|94		|36		|
|[ex1263		](http://titan.princeton.edu/TestProblems/chapter12/ex12.6.3.gms)																						|56		|93		|72		|241	|32		|
|[ex1263a		](http://titan.princeton.edu/TestProblems/chapter12/ex12.6.3.gms)																					|36		|25		|24		|153	|32		|
|[ex1264		](http://titan.princeton.edu/TestProblems/chapter12/ex12.6.4.gms)																						|56		|89		|68		|237	|32		|
|[ex1264a		](http://titan.princeton.edu/TestProblems/chapter12/ex12.6.4.gms)																					|36		|25		|24		|153	|32		|
|[ex1265		](http://titan.princeton.edu/TestProblems/chapter12/ex12.6.5.gms)																						|75		|131	|100	|347	|50		|
|[ex1265a		](http://titan.princeton.edu/TestProblems/chapter12/ex12.6.5.gms)																					|45		|36		|35		|222	|50		|
|[ex1266		](http://titan.princeton.edu/TestProblems/chapter12/ex12.6.6.gms)																						|96		|181	|138	|476	|72		|		
|[ex1266a		](http://titan.princeton.edu/TestProblems/chapter12/ex12.6.6.gms)																					|54		|49		|48		|302	|72		|	
|[ex3			](http://titan.princeton.edu/MINOPT/modlib/Tests/facility1.dat)																						|32		|33		|8		|100	|5		|	
|[ex3pb			](http://titan.princeton.edu/MINOPT/modlib/Tests/facility1.dat)																						|32		|33		|8		|100	|5		|
|[ex4			](http://titan.princeton.edu/MINOPT/modlib/Tests/facility1.dat)																						|31		|37		|25		|237	|127	|		
|[fac1			](http://titan.princeton.edu/MINOPT/modlib/Tests/facility1.dat)																						|19		|23		|6		|75	 	|16		|
|[fac2			](http://titan.princeton.edu/MINOPT/modlib/Tests/facility2.dat)																						|34		|67		|12		|217	|54		|
|[fac3			](http://titan.princeton.edu/MINOPT/modlib/Tests/facility3.dat)																						|34		|67		|12		|217	|54		|
|[feedtray		](http://www.gams.com/modlib/libhtml/feedtray.htm)																									|92		|98		|7		|451	|282	|
|[feedtray2		](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/feedloc.mod)																				|284	|88		|36		|1627	|942	|
|[fuel			](http://www.gams.com/modlib/libhtml/fuel.htm)																										|16		|16		|3		|39	 	|6		|
|fuzzy																																								|1057	|897	|120 	|3506	|79		|
|fo7_2																																								|212	|115	|42		|869	|14		|		
|fo7																																								|212	|115	|42		|869	|14		|			
|fo8																																								|274	|147	|56		|1137	|16		|		
|fo9																																								|344	|183	|72		|1441	|18		|		
|fo7_ar25_1																																							|270	|113	|42		|1055	|14		|	
|fo7_ar2_1																																							|270	|113	|42		|1055	|14		|	
|fo7_ar3_1																																							|270	|113	|42		|1055	|14		|	
|fo7_ar4_1																																							|270	|113	|42		|1055	|14		|	
|fo7_ar5_1																																							|270	|113	|42		|1055	|14		|	
|fo8_ar25_1																																							|348	|145	|56		|1381	|16		|	
|fo8_ar2_1																																							|348	|145	|56		|1381	|16		|	
|fo8_ar3_1																																							|348	|145	|56		|1381	|16		|	
|fo8_ar4_1																																							|348	|145	|56		|1381	|16		|	
|fo8_ar5_1																																							|348	|145	|56		|1381	|16		|	
|fo9_ar25_1																																							|436	|181	|72		|1751	|18		|	
|fo9_ar2_1																																							|436	|181	|72		|1751	|18		|	
|fo9_ar3_1																																							|436	|181	|72		|1751	|18		|	
|fo9_ar4_1																																							|436	|181	|72		|1751	|18		|	
|fo9_ar5_1																																							|436	|181	|72		|1751	|18		|	
|[gasnet		](http://www.gams.com/modlib/libhtml/gasnet.htm)																									|70		|91		|10		|267	|130	|
|[gastrans		](http://www.gams.com/modlib/libhtml/gastrans.htm)																									|150	|107	|21		|419	|45		|		
|[gbd			](http://titan.princeton.edu/MINOPT/modlib/Tests/gbd_test.dat)																						|5		|5		|3		|17		|1		|
|gear[GAMS model](http://www.gams.com/modlib/libhtml/gear.htm)[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/geartrain.mod)					|1		|5		|4		|5		|4		|
|gear2[GAMS model](http://www.gams.com/modlib/libhtml/gear.htm)[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/geartrain.mod)					|5		|29		|24		|33	 	|4		|
|gear3[GAMS model](http://www.gams.com/modlib/libhtml/gear.htm)[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/geartrain.mod)					|5		|9		|4		|13	 	|4		|
|gear4[GAMS model](http://www.gams.com/modlib/libhtml/gear.htm)[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/geartrain.mod)					|2		|7		|4		|9		|4		|
|ghg_1veh																																							|38		|30		|12		|131	|91		|
|ghg_2veh																																							|63		|58		|18		|215	|154	|
|ghg_3veh																																							|120	|97		|36		|431	|307	|	
|[hda			](http://www.gams.com/modlib/libhtml/hda.htm)																										|719	|723	|13		|2206	|464	|		
|johnall																																							|193	|195	|190	|958	|573	|				
|[gkocis		](http://titan.princeton.edu/MINOPT/modlib/Tests/kocis87-2.dat)																						|9		|12		|3		|28	 	|2		|
|lop97ic																																							|92		|1754	|1662	|13432	|8822	|
|lop97icx																																							|88		|987	|899	|1891	|704	|	
|m3																																									|44		|27		|6		|157	|6		|
|m6																																									|158	|87		|30		|635	|12		|	
|m7																																									|212	|115	|42		|867	|14		|	
|m7_ar25_1																																							|270	|113	|42		|1053	|14		|
|m7_ar2_1																																							|270	|113	|42		|1053	|14		|
|m7_ar3_1																																							|270	|113	|42		|1053	|14		|
|m7_ar4_1																																							|270	|113	|42		|1053	|14		|
|m7_ar5_1																																							|270	|113	|42		|1053	|14		|
|mbtd																																								|71		|211	|200	|1841	|1400	|
|[meanvarx		](http://www.gams.com/modlib/libhtml/meanvarx.htm)																									|45		|36		|14		|111	|7		|
|[meanvarxsc	](http://www.gams.com/modlib/libhtml/meanvarx.htm)																									|31		|36		|28		|83	 	|7		|
|[minlphix		](http://www.gams.com/modlib/libhtml/minlphi.htm)																									|93		|85		|20		|317	|40		|
|[hmittelman	](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/mittelman.mod)																				|8		|17		|16		|123	|122	|	
|netmod_dol1																																						|3138	|1999	|462	|8569	|6		|	
|netmod_dol2																																						|3081	|1999	|462	|18737	|6		|	
|netmod_kar1																																						|667	|457	|136	|1849	|4		|			
|netmod_kar2																																						|667	|457	|136	|1849	|4		|			
|no7_ar25_1																																							|270	|113	|42		|1061	|14		|
|no7_ar2_1																																							|270	|113	|42		|1061	|14		|
|no7_ar3_1																																							|270	|113	|42		|1061	|14		|
|no7_ar4_1																																							|270	|113	|42		|1061	|14		|	
|no7_ar5_1																																							|270	|113	|42		|1061	|14		|	
|[nous1			](http://titan.princeton.edu/MINOPT/modlib/Tests/nous1.dat)																							|44		|51		|2		|197	|122	|
|[nous2			](http://titan.princeton.edu/MINOPT/modlib/Tests/nous2.dat)																							|44		|51		|2		|197	|122	|
|nuclear104[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-104.dat)	|14246	|23814	|10816	|106857 |61108	|
|nuclear10a[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-104.dat)	|3340	|13011	|10920	|67870	|44884	|
|nuclear10b[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-104.dat)	|24972	|23827	|10920	|100318 |23252	|
|nuclear14[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14a.dat)		|1227	|1563	|576	|8180	|5520	|
|nuclear14a[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14a.dat)		|634	|993	|600	|6362	|4944	|		
|nuclear14b[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14b.dat)		|1786	|1569	|600	|8090	|3792	|
|nuclear25[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-25.dat)	|1304	|1679	|625	|8837	|5990	|
|nuclear25a[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-25.dat)	|660	|1059	|650	|6767	|5240	|	
|nuclear25b[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-25.dat)	|1910	|1684	|650	|8642	|3990	|
|nuclear49[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-49.dat)	|3874	|5736	|2401	|27971	|17539	|
|nuclear49a[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-49.dat)	|1432	|3342	|2450	|19501	|14109	|
|nuclear49b[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-q-49.dat)	|6234	|5743	|2450	|26704	|9307	|
|nuclearva[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14a.dat)		|318	|352	|168	|2545	|2024	|		
|nuclearvb[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14b.dat)		|318	|352	|168	|2509	|1988	|		
|nuclearvc[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14c.dat)		|318	|352	|168	|2509	|1988	|		
|nuclearvd[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14d.dat)		|318	|352	|168	|3385	|2864	|		
|nuclearve[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14e.dat)		|318	|352	|168	|3385	|2864	|		
|nuclearvf[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/c-reload-14f.dat)		|318	|352	|168	|3385	|2864	|		
|nvs01																																												|4		|4		|2		|10		|7		|
|nvs02																																												|4		|9		|5		|20		|16		|
|nvs03																																												|3		|3		|2		|7		|3		|
|nvs04																																												|1		|3		|2		|3		|2		|
|nvs05																																												|10		|9		|2		|31		|24		|
|nvs06																																												|1		|3		|2		|3		|2		|
|nvs07																																												|3		|4		|3		|9		|3		|
|nvs08																																												|4		|4		|2		|13		|7		|
|nvs09																																												|1		|11		|10		|11	 	|10		|
|nvs10																																												|3		|3		|2		|7		|6		|
|nvs11																																												|4		|4		|3		|13		|12		|
|nvs12																																												|5		|5		|4		|21		|20		|
|nvs13																																												|6		|6		|5		|31		|30		|
|nvs14																																												|4		|9		|5		|20	 	|16		|
|nvs15																																												|2		|4		|3		|7		|3		|
|nvs16																																												|1		|3		|2		|3		|2		|
|nvs17																																												|8		|8		|7		|57	 	|56		|
|nvs18																																												|7		|7		|6		|43	 	|42		|
|nvs19																																												|9		|9		|8		|73	 	|72		|
|nvs20																																												|9		|17		|5		|70	 	|16		|
|nvs21																																												|3		|4		|2		|8		|7		|
|nvs22																																												|10		|9		|4		|31	 	|24		|
|nvs23																																												|10		|10		|9		|91	 	|90		|
|nvs24																																												|11		|11		|10		|111	|110	|
|o7_2																																												|212	|115	|42		|877	|14		|	
|o7																																													|212	|115	|42		|877	|14		|	
|o7_ar25_1																																											|270	|113	|42		|1063	|14		|
|o7_ar2_1																																											|270	|113	|42		|1063	|14		|
|o7_ar3_1																																											|270	|113	|42		|1063	|14		|
|o7_ar4_1																																											|270	|113	|42		|1063	|14		|
|o7_ar5_1																																											|270	|113	|42		|1063	|14		|
|o8_ar4_1																																											|348	|145	|56		|1397	|16		|
|o9_ar4_1																																											|436	|181	|72		|1765	|18		|
|[oaer			](http://titan.princeton.edu/MINOPT/modlib/Tests/oaer_test.dat)																										|8		|10		|3		|26	 	|2		|
|oil																																												|1547	|1536	|19		|3932	|759	|	
|oil2																																												|927	|937	|2		|2215	|440	|		
|ortez																																												|75		|88		|18		|269	|54		|
|parallel																																											|116	|206	|25		|752	|155	|		
|pb302035																																											|51		|601	|600	|1801	|600	|	
|pb302055																																											|51		|601	|600	|1801	|600	|	
|pb302075																																											|51		|601	|600	|1801	|600	|	
|pb302095																																											|51		|601	|600	|1801	|600	|	
|pb351535																																											|51		|526	|525	|1576	|525	|	
|pb351555																																											|51		|526	|525	|1576	|525	|	
|pb351575																																											|51		|526	|525	|1576	|525	|	
|pb351595																																											|51		|526	|525	|1576	|525	|	
|prob02																																												|9		|7		|6		|32	 	|10		|
|prob03																																												|2		|3		|2		|5		|2		|
|prob10																																												|3		|3		|1		|7		|2		|
|[procsel		](http://www.gams.com/modlib/libhtml/procsel.htm)																													|8		|11		|3		|26	 	|2		|
|product																																											|1926	|1554	|107	|5556	|264	|	
|product2																																											|3126	|2843	|128	|8250	|1056	|
|[pump			](http://www.gams.com/modlib/libhtml/pump.htm)																														|35		|25		|9		|94	 	|36		|
|qap																																												|31		|226	|225	|676	|225	|				
|qapw																																												|256	|451	|225	|43974	|450	|			
|ravem																																												|187	|113	|54		|611	|28		|		
|ravempb																																											|187	|113	|54		|611	|28		|			
|risk2b		    																																									|581	|464	|14		|2289	|3		|
|risk2bpb																																											|581	|464	|14		|2289	|3		|
|saa_2																																												|6206	|4408	|400	|26610	|15400	|
|[sep1			](http://titan.princeton.edu/MINOPT/modlib/Tests/kocis87-2.dat)																										|32		|30		|2		|99	 |	12		|
|space25 [AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/space-25.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/space-25.dat)			|236	|894	|750	|2057	|111	|			
|space25a[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/space-25-r.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/space-25-r.dat)		|202	|384	|240	|1513	|111	|		
|space960[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/space-960.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/space-960.dat)			|6498	|5538	|960	|19961	|4700	|
|spectra2																																											|73		|70		|30		|409	|240	|	
|[spring		](http://www.gams.com/modlib/libhtml/spring.htm)																													|9		|18		|12		|44		|14		|
|st_e13																																												|3		|3		|1		|7		|1		|
|st_e14																																												|14		|12		|4		|40		|17		|
|st_e15																																												|6		|6		|3		|17		|2		|
|st_e27																																												|7		|5		|2		|17		|2		|
|st_e29																																												|8		|12		|8		|31	 	|6		|
|st_e31																																												|136	|113	|24		|314	|14		|		
|st_e32																																												|19		|36		|19		|169	|63		|
|st_e35																																												|40		|33		|7		|131	|16		|
|st_e36																																												|3		|3		|1		|7		|6		|
|st_e38																																												|4		|5		|2		|11		|6		|
|st_e40																																												|9		|5		|3		|23	 	|6		|
|st_miqp1																																											|2		|6		|5		|11	 	|5		|
|st_miqp2																																											|4		|5		|4		|11	 	|2		|
|st_miqp3																																											|2		|3		|2		|5		|1		|
|st_miqp4																																											|5		|7		|3		|16	 	|3		|
|st_miqp5																																											|14		|8		|2		|75	 	|2		|
|st_test1																																											|2		|6		|5		|11	 	|4		|
|st_test2																																											|3		|7		|6		|15	 	|5		|
|st_test3																																											|11		|14		|13		|42	 	|5		|
|st_test4																																											|6		|7		|6		|37	 	|2		|
|st_test5																																											|12		|11		|10		|112	|7		|
|st_test6																																											|6		|11		|10		|57	 	|10		|
|st_test8																																											|21		|25		|24		|121	|24		|
|st_testgr1																																											|6		|11		|10		|52	 	|10		|
|st_testgr3																																											|21		|21		|20		|182	|20		|
|st_testph4																																											|11		|4		|3		|28	 	|3		|
|[stockcycle	](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/stockcycle.mod)																							|98		|481	|432	|1009	|48		|	
|super1																																												|1659	|1308	|44		|4805	|1201	|
|super2																																												|1659	|1308	|44		|4809	|1201	|
|super3																																												|1659	|1308	|44		|4817	|1201	|
|super3t																																											|1343	|1056	|44		|3719	|872	|	
|[synheat		](http://www.gams.com/modlib/libhtml/synheat.htm)																													|65		|57		|12		|225	|28		|	
|[synthes1		](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/synthes1.mod)																								|7		|7		|3		|23	    |6		|
|[synthes2		](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/synthes2.mod)																								|15		|12		|5		|49	    |8		|
|[synthes3		](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/synthes3.mod)																								|24		|18		|8		|91	 	|12		|
|tln12[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon12.dat)				|73		|169	|168	|793	|288	|			
|tln2[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon2.dat)				|13		|9		|8		|33	 	|8		|
|tln4[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon4.dat)				|25		|25		|24		|105	|32		|
|tln5[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon5.dat)				|31		|36		|35		|156	|50		|
|tln6[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon6.dat)				|37		|49		|48		|217	|72		|
|tln7[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon7.dat)				|43		|64		|63		|288	|98		|
|[tloss			](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)																								|54		|49		|48		|303	|72		|
|tls12[AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimloss12.dat)				|385	|813	|668	|7205	|288	|		
|tls2[ AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimloss2.dat)				|25		|38		|33		|210	|8		|
|tls4 [AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimloss4.dat)				|65		|106	|89		|614	|32		|
|tls5 [AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimloss5.dat)				|91		|162	|136	|956	|50		|		
|tls6 [AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimloss6.dat)				|121	|216	|179	|1370	|72		|		
|tls7 [AMPL model](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimlon.mod)[MacMINLP](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/trimloss7.dat)				|155	|346	|296	|2258	|98		|		
|tltr																																												|55		|49		|48		|228	|54		|
|uselinear																																											|7031	|6793	|58		|22541	|14091	|
|util																																												|168	|146	|28		|467	|10		|	
|var_con10																																											|465	|574	|12		|2557	|1920	|
|var_con5																																											|465	|574	|12		|2557	|1920	|
|waste																																												|1992	|2485	|400	|9243	|2736	|
|[water3		](http://www.gams.com/modlib/libhtml/waterx.htm)																														|138	|196	|126	|757	|46		|		
|[water4		](http://www.gams.com/modlib/libhtml/waterx.htm	)																													|138	|196	|126	|757	|46		|		
|[waterful2		](http://www.gams.com/modlib/libhtml/waterx.htm	)																													|384	|630	|448	|2479	|116	|		
|[waters		](http://www.gams.com/modlib/libhtml/waterx.htm	)																													|138	|196	|126	|645	|46		|		
|[watersbp		](http://www.gams.com/modlib/libhtml/waterx.htm	)																													|138	|196	|126	|645	|46		|		
|[watersym1		](http://www.gams.com/modlib/libhtml/waterx.htm	)																													|202	|322	|224	|1247	|60		|	
|[watersym2		](http://www.gams.com/modlib/libhtml/waterx.htm	)																													|202	|322	|224	|1247	|60		|	
|[waterx		](http://www.gams.com/modlib/libhtml/waterx.htm	)																													|55		|71		|14		|241	|60		|
|[waterz		](http://www.gams.com/modlib/libhtml/waterx.htm)																													|138	|196	|126	|645	|46		|		
|[windfac		](http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems/wind-fac.mod)																								|14		|15		|3		|38	  	|24		|                             
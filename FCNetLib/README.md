# Fixed Cost Network Flow Library FCNetLib

The project collects a selection of models formerly featured on the GAMS World website. This part containts FCNetLib model statistics, FCNet GAMS models and helper GAMS programs.

FCNetLib is a collection of instances for the fixed cost network flow problem. The purpose of the collection is to provide a unified presentation of the data instances together with some GAMS models that implement a straight forward IP formulation and a more sophisticated version that utilizes the GAMS/BCH facility. A class of known cuts (dicuts) is implemented as well as the local branching heuristic within the BCH framework.

The original models were in XPRESS-Modeler format and collected by Laurence Wolsey and collagues at Universite Catholique de Louvain. They were translated by Alexey Koptsevich into GAMS.

**Reference**

Uncapacitated Fixed Charge Networks, by Laurence Wolsey

F. Ortega and L.A. Wolsey. A branch-and-cut algorithm for the single-commodity, uncapacitated, fixed-charge network flow problem. Networks 41 (2003), no. 3, 143--158. (discussion paper with detailed results)

**Additional Information**

[GAMS BCH Facility](https://www.gams.com/latest/docs/UG_SolverUsage.html#ADVANCED_USAGE_BCHFacility)

[Global Optimization and the GAMS Branch-and-Cut Facility](https://www.gams.com/archives/presentations/present_bch_global.pdf)

**Running the Models**

In order to run a particular instance call GAMS in the following way:

`gams bchfcnet.gms idir=includes --fname=instance_name`

where `instance_name` is the base name of the instance in includes (e.g. `beavma`). In order to activate the BCH cuts and heuristics, add `optfile=1` to the command line.


**FCNetLib Model Statistics** 

Total number of models:   83


|Name	     |#Eqns	 |#Vars	|#NZ   |Optimal Solution	     |
|------------|------:|-----:|-----:|------------------------:|
|beasleyC1	 |1751	 |2501	|6251  |85.00	                 |
|beasleyC2	 |1751	 |2501	|6251  |144.00	                 |
|beasleyC3	 |1751	 |2501	|6251  |754.00	                 |
|beavma	     |373	 |391	|1320  |383285.00	             |
|berlin	     |2705	 |5305	|13261 |1044.00	                 |
|brasil	     |3365	 |6613	|16531 |13655.00	             |
|fixnet6	 |601	 |1001	|2795  |3983.00	                 |
|g150x1100	 |1251	 |2201	|6601  |71816.00	             |
|g150x1650	 |1801	 |3301	|9901  |68704.00	             |
|g180x666	 |847	 |1333	|3997  |624632.00	             |
|g200x740b	 |941	 |1481	|4441  |179279.00	             |
|g200x740c	 |941	 |1481	|4441  |680124.00	             |
|g200x740d	 |941	 |1481	|4441  |586038.00	             |
|g200x740e	 |941	 |1481	|4441  |600396.00	             |
|g200x740f	 |941	 |1481	|4441  |617872.00	             |
|g200x740g	 |941	 |1481	|4441  |                         | 
|g200x740h	 |941	 |1481	|4441  |                         | 
|g200x740i	 |941	 |1481	|4441  |                         | 
|g200x740	 |941	 |1481	|4441  |44316.00	             |
|g40x132	 |173	 |265	|793   |26629.00	             |
|g50x170	 |221	 |341	|1021  |25576.00	             |
|g55x188c	 |244	 |377	|1129  |35464.00	             |
|g55x188	 |244	 |377	|1129  |24487.00	             |
|h50x2450b	 |2550	 |4901	|17053 |3030.198086              |
|h50x2450c	 |2550	 |4901	|17053 |4896.196619	             |
|h50x2450d	 |2550	 |4901	|17053 |4639.264786              |
|h50x2450e	 |2550	 |4901	|17053 |4077.68	                 |
|h50x2450	 |2550	 |4901	|17053 |32906.88	             |
|h80x6320b	 |6480	 |12641	|44083 |	                     | 
|h80x6320c	 |6480	 |12641	|44083 |	                     | 
|h80x6320d	 |6480	 |12641	|44083 |	                     | 
|k10x90	     |101	 |181	|541   |568.00	                 |
|k14x182b	 |197	 |365	|1093  |11042.00	             |
|k14x182	 |197	 |365	|1093  |8491.00	                 |
|k15x210	 |226	 |421	|1261  |16128.00	             |
|k15x420	 |436	 |841	|2521  |819.00	                 |
|k15x630	 |646	 |1261	|3781  |936.00	                 |
|k16x240b	 |257	 |481	|1441  |11393.00	             |
|k16x240	 |257	 |481	|1441  |10674.00	             |
|k20x380b	 |401	 |761	|2281  |11343.00	             |
|k20x380c	 |401	 |761	|2281  |17159.00	             |
|k20x380d	 |401	 |761	|2281  |20979.00	             |
|k20x380e	 |401	 |761	|2281  |6904.00	                 |
|k20x380	 |401	 |761	|2281  |1941.00	                 |
|l121x232	 |354	 |465	|1281  |192446.00	             |
|l451x885b	 |1337	 |1771	|4876  |560847.00	             |
|l451x885	 |1337	 |1771	|4876  |431050.00	             |
|l61x114	 |176	 |229	|631   |60085.00	             |
|mc11	     |1921	 |3041	|7601  |11689.00	             |
|mc7	     |1921	 |3041	|7601  |3417.00	                 |
|mc8	     |1921	 |3041	|7601  |1566.00	                 |
|mtest4ma	 |1175	 |1951	|6826  |52148.00	             |
|p100x588b	 |689	 |1177	|3478  |	                     | 
|p100x588c	 |689	 |1177	|3468  |172770.00	             |
|p100x588d	 |689	 |1177	|2941  |5.00	                 |
|p100x588	 |689	 |1177	|3478  |8975.00	                 |
|p200x1188b	 |1389	 |2377	|6982  |	                     | 
|p200x1188c	 |1389	 |2377	|5941  |15078.00	             |
|p200x1188	 |1389	 |2377	|6982  |11396.00	             |
|p500x2988b	 |3489	 |5977	|17676 |	                     | 
|p500x2988c	 |3489	 |5977	|17650 |15215.00	             |
|p500x2988d	 |3489	 |5977	|14941 |6.00	                 |
|p500x2988	 |3489	 |5977	|17676 |71836.00	             |
|p50x288b	 |339	 |577	|1704  |21753.00	             |
|p50x288	 |339	 |577	|1704  |6134.00	                 |
|p50x576	 |627	 |1153	|3457  |19407.00	             |
|p50x864	 |915	 |1729	|5185  |19007.00	             |
|p80x400b	 |481	 |801	|2371  |39667.00	             |
|p80x400	 |481	 |801	|2371  |8548.00	                 |
|r20x100	 |121	 |201	|601   |15603.00	             |
|r20x200	 |221	 |401	|1201  |14783.00	             |
|r30x160	 |191	 |321	|961   |21827.00	             |
|r50x360	 |411	 |721	|2161  |1653.00	                 |
|r80x800	 |881	 |1601	|4801  |	                     | 
|sp100x200	 |301	 |401	|1201  |34507.00	             |
|sp150x300b	 |451	 |601	|1501  |56.00	                 |
|sp150x300c	 |451	 |601	|1801  |560736.00	             |
|sp150x300d	 |451	 |601	|1501  |69.00	                 |
|sp150x300	 |451	 |601	|1801  |30918.00	             |
|sp50x100	 |151	 |201	|601   |50968.00	             |
|sp80x160	 |241	 |321	|961   |19549.00	             |
|sp90x180	 |271	 |361	|1081  |68862.00	             |
|sp90x250	 |341	 |501	|1501  |23571.00	             |

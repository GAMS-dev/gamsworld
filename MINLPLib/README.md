# MINLP Library

MINLPLib is a collection of Mixed Integer Nonlinear Programming models. 
The purpose of the collection is to provide algorithm developers with a large and varied set of both theoretical and practical test models.

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

**MINLP Model Statistics** 

Total number of models:   269


|Name           |#Eqns |#Vars   |#DVars |#NZ    |#NNZ  |BestInt                |
|---------------|------|-------:|------:|------:|-----:|----------------------:|
|4stufen		|99		|150	|48		|319	|87		|116329.6706	       |
|alan			|8		|9		|4		|24		|3		|2.9250			       |
|batch			|74		|47		|24		|191	|22		|285506.5082	       |
|batchdes		|20		|20		|9		|53		|10		|167427.6571	       |
|beuster		|115	|158	|52		|398	|159	|116347.9503	       |
|blendgap		|360	|332	|66		|1454	|440	|-19134.6103	       |
|cecil_13		|899	|841	|180	|2812	|360	|-115656.4997	       |
|chp_partload	|2517	|2249	|45		|6940	|1916	|23.5537		       |
|contvar		|285	|297	|88		|1281	|530	|809149.8272	       |
|csched1		|23		|77		|63		|174	|8		|-30639.2578	       |
|csched1a		|23		|29		|15		|78		|7		|-30430.1770	       |
|csched2		|138	|401	|308	|958	|58		|-166101.9964	       |
|csched2a		|138	|233	|140	|622	|57		|-165398.7013	       |
|deb10			|130	|183	|22		|692	|432	|209.4278		       |
|deb6			|508	|476	|20		|2342	|1432	|201.7393		       |
|deb7			|898	|814	|20		|4116	|2816	|116.5846		       |
|deb8			|898	|824	|20		|4136	|2816	|116.5846		       |
|deb9			|918	|814	|20		|4156	|2816	|116.5846		       |
|dosemin2d		|119	|166	|32		|4379	|4080	|173.9806		       |
|dosemin3d		|1003	|1047	|18		|24614	|22095	|1.3240			       |
|du-opt5		|10		|21		|13		|47		|20		|8.0737			       |
|du-opt			|10		|21		|13		|47		|20		|3.5563			       |
|eg_all_s		|26		|8		|7		|206	|182	|7.6578			       |
|eg_disc_s		|26		|8		|4		|206	|182	|5.7605			       |
|eg_disc2_s		|26		|8		|3		|206	|182	|5.6421			       |
|eg_int_s		|26		|8		|3		|206	|182	|6.4531			       |
|elf			|39		|55		|24		|178	|30		|0.1917			       |
|eniplac		|190	|142	|24		|511	|48		|-132117.0830	       |
|enpro48		|215	|154	|92		|742	|29		|187277.2594	       |
|enpro48pb		|215	|154	|92		|742	|29		|187277.2594	       |
|enpro56		|192	|128	|73		|651	|24		|263428.3010	       |
|enpro56pb		|192	|128	|73		|651	|24		|263428.3010	       |
|ex1221			|6		|6		|3		|17		|2		|7.6672			       |
|ex1222			|4		|4		|1		|9		|2		|1.0765			       |
|ex1223			|14		|12		|4		|40		|17		|4.5796			       |
|ex1223a		|10		|8		|4		|32		|9		|4.5796			       |
|ex1223b		|10		|8		|4		|32		|17		|4.5796			       |
|ex1224			|8		|12		|8		|31		|6		|-0.9435		       |
|ex1225			|11		|9		|6		|27		|2		|31.0000		       |
|ex1226			|6		|6		|3		|15		|2		|-17.0000		       |
|ex1233			|65		|53		|12		|221	|28		|155010.6713	       |
|ex1243			|97		|69		|16		|329	|36		|83402.5064		       |
|ex1244			|130	|96		|23		|469	|52		|82042.9052		       |
|ex1252			|44		|40		|15		|118	|36		|128893.7410	       |
|ex1252a		|35		|25		|9		|94		|36		|128893.7410	       |
|ex1263			|56		|93		|72		|241	|32		|19.6000		       |
|ex1263a		|36		|25		|24		|153	|32		|19.6000		       |
|ex1264			|56		|89		|68		|237	|32		|8.6000			       |
|ex1264a		|36		|25		|24		|153	|32		|8.6000			       |
|ex1265			|75		|131	|100	|347	|50		|10.3000		       |
|ex1265a		|45		|36		|35		|222	|50		|10.3000		       |
|ex1266			|96		|181	|138	|476	|72		|16.3000			   |		
|ex1266a		|54		|49		|48		|302	|72		|16.3000			   |	
|ex3			|32		|33		|8		|100	|5		|68.0097			   |	
|ex3pb			|32		|33		|8		|100	|5		|68.0097			   |
|ex4			|31		|37		|25		|237	|127	|-8.0641			   |		
|fac1			|19		|23		|6		|75	 	|16		|1.6091261E+8	       |
|fac2			|34		|67		|12		|217	|54		|3.3183750E+8		   |
|fac3			|34		|67		|12		|217	|54		|3.1982310E+7		   |
|feedtray		|92		|98		|7		|451	|282	|-13.4060			   |
|feedtray2		|284	|88		|36		|1627	|942	|0.0000				   |
|fuel			|16		|16		|3		|39	 	|6		|8566.1190		       |
|fuzzy			|1057	|897	|120 	|3506	|79		|-0.5377			   |
|fo7_2			|212	|115	|42		|869	|14		|17.7493			   |		
|fo7			|212	|115	|42		|869	|14		|20.7298			   |			
|fo8			|274	|147	|56		|1137	|16		|22.3819			   |		
|fo9			|344	|183	|72		|1441	|18		|23.4643			   |		
|fo7_ar25_1		|270	|113	|42		|1055	|14		|23.0936			   |	
|fo7_ar2_1		|270	|113	|42		|1055	|14		|24.8398			   |	
|fo7_ar3_1		|270	|113	|42		|1055	|14		|22.5175			   |	
|fo7_ar4_1		|270	|113	|42		|1055	|14		|20.7298			   |	
|fo7_ar5_1		|270	|113	|42		|1055	|14		|17.7493			   |	
|fo8_ar25_1		|348	|145	|56		|1381	|16		|28.0452			   |	
|fo8_ar2_1		|348	|145	|56		|1381	|16		|30.3406			   |	
|fo8_ar3_1		|348	|145	|56		|1381	|16		|23.9101			   |	
|fo8_ar4_1		|348	|145	|56		|1381	|16		|22.3819			   |	
|fo8_ar5_1		|348	|145	|56		|1381	|16		|22.3819			   |	
|fo9_ar25_1		|436	|181	|72		|1751	|18		|32.1864			   |	
|fo9_ar2_1		|436	|181	|72		|1751	|18		|32.6250			   |	
|fo9_ar3_1		|436	|181	|72		|1751	|18		|24.8155			   |	
|fo9_ar4_1		|436	|181	|72		|1751	|18		|23.4643			   |	
|fo9_ar5_1		|436	|181	|72		|1751	|18		|23.4643			   |	
|gasnet			|70		|91		|10		|267	|130	|6999381.5619		   |
|gastrans		|150	|107	|21		|419	|45		|89.0858			   |		
|gbd			|5		|5		|3		|17		|1		|2.2000				   |
|gear			|1		|5		|4		|5		|4		|0.0000			       |
|gear2			|5		|29		|24		|33	 	|4		|0.0000			       |
|gear3			|5		|9		|4		|13	 	|4		|0.0000			       |
|gear4			|2		|7		|4		|9		|4		|1.6434			       |
|ghg_1veh		|38		|30		|12		|131	|91		|7.7816				   |
|ghg_2veh		|63		|58		|18		|215	|154	|7.7709				   |
|ghg_3veh		|120	|97		|36		|431	|307	|7.7543				   |	
|hda			|719	|723	|13		|2206	|464	|-5964.5341			   |		
|johnall		|193	|195	|190	|958	|573	|-224.7302			   |				
|gkocis			|9		|12		|3		|28	 	|2		|-1.9231			   |
|lop97ic		|92		|1754	|1662	|13432	|8822	|4041.8315			   |
|lop97icx		|88		|987	|899	|1891	|704	|4099.0600			   |	
|m3				|44		|27		|6		|157	|6		|37.8000			   |
|m6				|158	|87		|30		|635	|12		|82.2569			   |	
|m7				|212	|115	|42		|867	|14		|106.7569			   |	
|m7_ar25_1		|270	|113	|42		|1053	|14		|143.5850			   |
|m7_ar2_1		|270	|113	|42		|1053	|14		|190.2350			   |
|m7_ar3_1		|270	|113	|42		|1053	|14		|143.5850			   |
|m7_ar4_1		|270	|113	|42		|1053	|14		|106.7569			   |
|m7_ar5_1		|270	|113	|42		|1053	|14		|106.4600			   |
|mbtd			|71		|211	|200	|1841	|1400	|4.8333				   |
|meanvarx		|45		|36		|14		|111	|7		|14.3692			   |
|meanvarxsc		|31		|36		|28		|83	 	|7		|14.3692			   |
|minlphix		|93		|85		|20		|317	|40		|316.6927			   |
|hmittelman		|8		|17		|16		|123	|122	|13.0000			   |	
|netmod_dol1	|3138	|1999	|462	|8569	|6		|-0.5600			   |	
|netmod_dol2	|3081	|1999	|462	|18737	|6		|-0.5600			   |	
|netmod_kar1	|667	|457	|136	|1849	|4		|-0.4198			   |			
|netmod_kar2	|667	|457	|136	|1849	|4		|-0.4198			   |			
|no7_ar25_1		|270	|113	|42		|1061	|14		|107.8153			   |
|no7_ar2_1		|270	|113	|42		|1061	|14		|107.8153			   |
|no7_ar3_1		|270	|113	|42		|1061	|14		|107.8153			   |
|no7_ar4_1		|270	|113	|42		|1061	|14		|98.5184			   |	
|no7_ar5_1		|270	|113	|42		|1061	|14		|90.6227			   |	
|nous1			|44		|51		|2		|197	|122	|1.5671				   |
|nous2			|44		|51		|2		|197	|122	|0.6260				   |
|nuclear104		|14246	|23814	|10816	|106857 |61108	| 	 	               |
|nuclear10a		|3340	|13011	|10920	|67870	|44884	| 	 	               |
|nuclear10b		|24972	|23827	|10920	|100318 |23252	| 	 	               |
|nuclear14		|1227	|1563	|576	|8180	|5520	|-1.1277			   |
|nuclear14a		|634	|993	|600	|6362	|4944	|-1.1280			   |		
|nuclear14b		|1786	|1569	|600	|8090	|3792	|-1.1169			   |
|nuclear25		|1304	|1679	|625	|8837	|5990	|-1.1186			   |
|nuclear25a		|660	|1059	|650	|6767	|5240	|-1.1202			   |	
|nuclear25b		|1910	|1684	|650	|8642	|3990	|-1.1010			   |
|nuclear49		|3874	|5736	|2401	|27971	|17539	|-1.1514			   |
|nuclear49a		|1432	|3342	|2450	|19501	|14109	|-1.1514			   |
|nuclear49b		|6234	|5743	|2450	|26704	|9307	|-1.1169			   |
|nuclearva		|318	|352	|168	|2545	|2024	|-1.0125			   |		
|nuclearvb		|318	|352	|168	|2509	|1988	|-1.0304			   |		
|nuclearvc		|318	|352	|168	|2509	|1988	|-0.9983			   |		
|nuclearvd		|318	|352	|168	|3385	|2864	|-1.0344			   |		
|nuclearve		|318	|352	|168	|3385	|2864	|-1.0351			   |		
|nuclearvf		|318	|352	|168	|3385	|2864	|-1.0194			   |		
|nvs01			|4		|4		|2		|10		|7		|12.4697			   |
|nvs02			|4		|9		|5		|20		|16		|5.9846			       |
|nvs03			|3		|3		|2		|7		|3		|16.0000			   |
|nvs04			|1		|3		|2		|3		|2		|0.7200			       |
|nvs05			|10		|9		|2		|31		|24		|5.4709			       |
|nvs06			|1		|3		|2		|3		|2		|1.7703			       |
|nvs07			|3		|4		|3		|9		|3		|4.0000			       |
|nvs08			|4		|4		|2		|13		|7		|23.4497			   |
|nvs09			|1		|11		|10		|11	 	|10		|-43.1343		       |
|nvs10			|3		|3		|2		|7		|6		|-310.8000		       |
|nvs11			|4		|4		|3		|13		|12		|-431.0000		       |
|nvs12			|5		|5		|4		|21		|20		|-481.2000		       |
|nvs13			|6		|6		|5		|31		|30		|-585.2000		       |
|nvs14			|4		|9		|5		|20	 	|16		|-40358.1548		   |
|nvs15			|2		|4		|3		|7		|3		|1.0000			       |
|nvs16			|1		|3		|2		|3		|2		|0.7031			       |
|nvs17			|8		|8		|7		|57	 	|56		|-1100.4000		       |
|nvs18			|7		|7		|6		|43	 	|42		|-778.4000		       |
|nvs19			|9		|9		|8		|73	 	|72		|-1098.4000		       |
|nvs20			|9		|17		|5		|70	 	|16		|230.9222		       |
|nvs21			|3		|4		|2		|8		|7		|-5.6848			   |
|nvs22			|10		|9		|4		|31	 	|24		|6.0582			       |
|nvs23			|10		|10		|9		|91	 	|90		|-1125.2000		       |
|nvs24			|11		|11		|10		|111	|110	|-1033.2000			   |
|o7_2			|212	|115	|42		|877	|14		|116.9459			   |	
|o7				|212	|115	|42		|877	|14		|131.6531			   |	
|o7_ar25_1		|270	|113	|42		|1063	|14		|140.4120			   |
|o7_ar2_1		|270	|113	|42		|1063	|14		|140.4120			   |
|o7_ar3_1		|270	|113	|42		|1063	|14		|137.9318			   |
|o7_ar4_1		|270	|113	|42		|1063	|14		|131.6531			   |
|o7_ar5_1		|270	|113	|42		|1063	|14		|116.9458			   |
|o8_ar4_1		|348	|145	|56		|1397	|16		|243.0707			   |
|o9_ar4_1		|436	|181	|72		|1765	|18		|236.1385			   |
|oaer			|8		|10		|3		|26	 	|2		|-1.9231			   |
|oil			|1547	|1536	|19		|3932	|759	|-0.9325		       |	
|oil2			|927	|937	|2		|2215	|440	|-0.7333		       |		
|ortez			|75		|88		|18		|269	|54		|-9532.0391			   |
|parallel		|116	|206	|25		|752	|155	|924.2956			   |		
|pb302035		|51		|601	|600	|1801	|600	|3379359.0000		   |	
|pb302055		|51		|601	|600	|1801	|600	|3599602.0000		   |	
|pb302075		|51		|601	|600	|1801	|600	|4050938.0000		   |	
|pb302095		|51		|601	|600	|1801	|600	|5726530.0000		   |	
|pb351535		|51		|526	|525	|1576	|525	|4456670.0000		   |	
|pb351555		|51		|526	|525	|1576	|525	|4639128.0000		   |	
|pb351575		|51		|526	|525	|1576	|525	|6301723.0000		   |	
|pb351595		|51		|526	|525	|1576	|525	|6670264.0000		   |	
|prob02			|9		|7		|6		|32	 	|10		|112235.0000		   |
|prob03			|2		|3		|2		|5		|2		|10.0000			   |
|prob10			|3		|3		|1		|7		|2		|3.4455			       |
|procsel		|8		|11		|3		|26	 	|2		|-1.9231			   |
|product		|1926	|1554	|107	|5556	|264	|-2142.9481			   |	
|product2		|3126	|2843	|128	|8250	|1056	|-2102.3893			   |
|pump			|35		|25		|9		|94	 	|36		|128893.7410		   |
|qap			|31		|226	|225	|676	|225	|388214.0000		   |				
|qapw			|256	|451	|225	|43974	|450	|388214.0000		   |			
|ravem			|187	|113	|54		|611	|28		|269590.2193		   |		
|ravempb		|187	|113	|54		|611	|28		|269590.2193		   |			
|risk2b			|581	|464	|14		|2289	|3		|-55.8761			   |
|risk2bpb		|581	|464	|14		|2289	|3		|-55.8761			   |
|saa_2			|6206	|4408	|400	|26610	|15400	|12.1613			   |
|sep1			|32		|30		|2		|99	 |	12		|-510.0810		       |
|space25		|236	|894	|750	|2057	|111	|484.3286			   |			
|space25a		|202	|384	|240	|1513	|111	|484.3286			   |		
|space960		|6498	|5538	|960	|19961	|4700	|7610305.2458		   |
|spectra2		|73		|70		|30		|409	|240	|13.9783			   |	
|spring			|9		|18		|12		|44		|14		|0.8462			       |
|st_e13			|3		|3		|1		|7		|1		|2.0000			       |
|st_e14			|14		|12		|4		|40		|17		|4.5796			       |
|st_e15			|6		|6		|3		|17		|2		|7.6672			       |
|st_e27			|7		|5		|2		|17		|2		|2.0000			       |
|st_e29			|8		|12		|8		|31	 	|6		|-0.9435			   |
|st_e31			|136	|113	|24		|314	|14		|-2.0000			   |		
|st_e32			|19		|36		|19		|169	|63		|-1.4304			   |
|st_e35			|40		|33		|7		|131	|16		|64868.0768			   |
|st_e36			|3		|3		|1		|7		|6		|-246.0000		       |
|st_e38			|4		|5		|2		|11		|6		|7197.7271		       |
|st_e40			|9		|5		|3		|23	 	|6		|30.4142			   |
|st_miqp1		|2		|6		|5		|11	 	|5		|281.0000		       |
|st_miqp2		|4		|5		|4		|11	 	|2		|2.0000			       |
|st_miqp3		|2		|3		|2		|5		|1		|-6.0000			   |
|st_miqp4		|5		|7		|3		|16	 	|3		|-4574.0000		       |
|st_miqp5		|14		|8		|2		|75	 	|2		|-333.8889		       |
|st_test1		|2		|6		|5		|11	 	|4		|0.0000			       |
|st_test2		|3		|7		|6		|15	 	|5		|-9.2500			   |
|st_test3		|11		|14		|13		|42	 	|5		|-7.0000			   |
|st_test4		|6		|7		|6		|37	 	|2		|-7.0000			   |
|st_test5		|12		|11		|10		|112	|7		|-110.0000			   |
|st_test6		|6		|11		|10		|57	 	|10		|471.0000		       |
|st_test8		|21		|25		|24		|121	|24		|-29605.0000		   |
|st_testgr1		|6		|11		|10		|52	 	|10		|-12.8116		       |
|st_testgr3		|21		|21		|20		|182	|20		|-20.5900			   |
|st_testph4		|11		|4		|3		|28	 	|3		|-80.5000		       |
|stockcycle		|98		|481	|432	|1009	|48		|119948.6883		   |	
|super1			|1659	|1308	|44		|4805	|1201	|9.5079			       |
|super2			|1659	|1308	|44		|4809	|1201	|4.9345			       |
|super3			|1659	|1308	|44		|4817	|1201	|12.6284			   |
|super3t		|1343	|1056	|44		|3719	|872	|-0.6689			   |	
|synheat		|65		|57		|12		|225	|28		|154997.3349		   |	
|synthes1		|7		|7		|3		|23	    |6		|6.0098			       |
|synthes2		|15		|12		|5		|49	    |8		|73.0353			   |
|synthes3		|24		|18		|8		|91	 	|12		|68.0097			   |
|tln12			|73		|169	|168	|793	|288	|90.5000			   |			
|tln2			|13		|9		|8		|33	 	|8		|5.3000			       |
|tln4			|25		|25		|24		|105	|32		|8.3000				   |
|tln5			|31		|36		|35		|156	|50		|10.3000			   |
|tln6			|37		|49		|48		|217	|72		|15.3000			   |
|tln7			|43		|64		|63		|288	|98		|15.0000			   |
|tloss			|54		|49		|48		|303	|72		|16.3000			   |
|tls12			|385	|813	|668	|7205	|288	|112.8000			   |		
|tls2			|25		|38		|33		|210	|8		|5.3000				   |
|tls4			|65		|106	|89		|614	|32		|8.3000				   |
|tls5			|91		|162	|136	|956	|50		|10.3000			   |		
|tls6			|121	|216	|179	|1370	|72		|15.3000			   |		
|tls7			|155	|346	|296	|2258	|98		|15.5000			   |		
|tltr			|55		|49		|48		|228	|54		|48.0667			   |
|uselinear		|7031	|6793	|58		|22541	|14091	|-1050.3359		       |
|util			|168	|146	|28		|467	|10		|999.5788			   |	
|var_con10		|465	|574	|12		|2557	|1920	|444.2140			   |
|var_con5		|465	|574	|12		|2557	|1920	|278.1449			   |
|waste			|1992	|2485	|400	|9243	|2736	|598.9192			   |
|water3			|138	|196	|126	|757	|46		|907.0170			   |		
|water4			|138	|196	|126	|757	|46		|907.0170			   |		
|waterful2		|384	|630	|448	|2479	|116	|1012.6093			   |		
|waters			|138	|196	|126	|645	|46		|913.7757			   |		
|watersbp		|138	|196	|126	|645	|46		|913.7757			   |		
|watersym1		|202	|322	|224	|1247	|60		|913.7757			   |	
|watersym2		|202	|322	|224	|1247	|60		|940.9189			   |	
|waterx			|55		|71		|14		|241	|60		|909.0401			   |
|waterz			|138	|196	|126	|645	|46		|907.0170			   |		
|windfac		|14		|15		|3		|38	  	|24		|0.2545				   |
                                
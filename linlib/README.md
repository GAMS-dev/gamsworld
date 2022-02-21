# LINLib Model Statistics

This is a large collection of linear and quadratic models. Some of the the instances also contain discrete variables.

**LINLib Organization**

In order to run a particular instance call GAMS in the following way:

gams gensolve.gms --iname=instances/<instance_name>

where instance_name is the name of the GDX file in instances  (e.g. 10teams.gdx).

**Reference**

Fourer, R., Gay, D.M., and Kernighan, B.W. The AMPL Book. AMPL: A Modeling Language for Mathematical Programming, Duxbury Press, Brooks/Cole Publishing Company, 2002. 

**LINLib Model Statistics** 

Total number of models:   699

|Name        		|Type   |#Eqns  |#Vars  |Binary Vars    |Other Discrete Vars|#NZ        |#Q Matrices|Max NZ in Q Matrices|Max Rows in Q Matrices|Best Solution|
|-------------------|-------|------:|------:|--------------:|------------------:|----------:|----------:|-------------------:|---------------------:|------------:|
|[10teams     ](http://miplib.zib.de/miplib3/miplib3/10teams.mps.gz                              )|MIP    |230	|2025	|1800			|0					|14175		|0			|0		 			 |0	    				|924.0000	 |
|[25fv47      ](http://www.netlib.org/lp/data/25fv47                                              )|LP	    |821	|1571	|0				|0					|11127		|0			|0		 			 |0	    				|5501.8459	 |
|[80bau3b     ](http://www.netlib.org/lp/data/80bau3b                                             )|LP	    |2262	|9799	|0				|0					|29063		|0			|0		 			 |0	    				|987224.1924 |	 
|[aa01        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/aa01.gz                 )|LP	    |823	|8904	|0				|0					|81869		|0			|0		 			 |0	    				|55535.4364	 |
|[aa03        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/aa03.gz                 )|LP	    |825	|8627	|0				|0					|79433		|0			|0		 			 |0	    				|49616.3636	 |
|[aa3         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/aa3.gz                  )|LP	    |0		|1		|0				|0					|0			|0			|0		 			 |0	    				|49616.3636	 |
|[aa4         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/aa4.gz                  )|LP	    |0		|1		|0				|0					|0			|0			|0		 			 |0	    				|25877.6093	 |
|[aa5         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/aa5.gz                  )|LP	    |0		|1		|0				|0					|0			|0			|0		 			 |0	    				|53735.9286	 |
|[aa6         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/aa6.gz                  )|LP	    |0		|1		|0				|0					|0			|0			|0		 			 |0	    				|26977.1875	 |
|[acc-tight-0 ](http://www.ps.uni-sb.de/~walser/benchmarks/acc-benchmarks-mps.tar.gz              )|MIP    |1737	|1620	|1620			|0					|7291		|0			|0		 			 |0	    				|0.0000	 	 |
|[acc-tight-1 ](http://www.ps.uni-sb.de/~walser/benchmarks/acc-benchmarks-mps.tar.gz              )|MIP    |2520	|1620	|1620			|0					|15328		|0			|0		 			 |0	    				|0.0000	 	 |
|[acc-tight-2 ](http://www.ps.uni-sb.de/~walser/benchmarks/acc-benchmarks-mps.tar.gz              )|MIP    |3285	|1620	|1620			|0					|17074		|0			|0		 			 |0	    				| 	 	     |
|[acc-tight-3 ](http://www.ps.uni-sb.de/~walser/benchmarks/acc-benchmarks-mps.tar.gz              )|MIP    |3047	|1335	|1335			|0					|16109		|0			|0		 			 |0	    				| 	 	     |
|[acc-tight-4 ](http://www.ps.uni-sb.de/~walser/benchmarks/acc-benchmarks-mps.tar.gz              )|MIP    |2286	|1620	|1620			|0					|12979		|0			|0		 			 |0	    				|0.0000	 	 |
|[acc-tight-5 ](http://www.ps.uni-sb.de/~walser/benchmarks/acc-benchmarks-mps.tar.gz              )|MIP    |3249	|1620	|1620			|0					|16786		|0			|0		 			 |0	    				| 	 	     |
|[acc-tight-6 ](http://www.ps.uni-sb.de/~walser/benchmarks/acc-benchmarks-mps.tar.gz              )|MIP    |3052	|1339	|1339			|0					|16135		|0			|0		 			 |0	    				| 	 	     |
|[adlittle    ](http://www.netlib.org/lp/data/adlittle                                            )|LP	    |56		|97		|0				|0					|465		|0			|0		 			 |0	    				|225494.9632 |	 
|[afiro       ](http://www.netlib.org/lp/data/afiro                                               )|LP	    |27		|32		|0				|0					|88			|0			|0		 			 |0	    				|-464.7531	 |
|[agg         ](http://www.netlib.org/lp/data/agg                                                 )|LP	    |488	|163	|0				|0					|2541		|0			|0		 			 |0	    				|-3.599177E+7| 
|[agg2        ](http://www.netlib.org/lp/data/agg2                                                )|LP	    |516	|302	|0				|0					|4515		|0			|0		 			 |0	    				|-2.023925E+7| 
|[agg3        ](http://www.netlib.org/lp/data/agg3                                                )|LP	    |516	|302	|0				|0					|4531		|0			|0		 			 |0	    				|1.0312116E+7| 
|[air02       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/air02.gz                )|LP	    |50		|6774	|0				|0					|68329		|0			|0		 			 |0	    				|7640.0000	 |
|[air03       ](http://miplib.zib.de/miplib3/miplib3/air03.mps.gz                                 )|MIP    |124	|10757	|10757			|0					|101785		|0			|0		 			 |0	    				|340160.0000 |	 
|[air04       ](http://miplib.zib.de/miplib3/miplib3/air04.mps.gz                                 )|MIP    |823	|8904	|8904			|0					|81869		|0			|0		 			 |0	    				|56137.0000	 |
|[air05       ](http://miplib.zib.de/miplib3/miplib3/air05.mps.gz                                 )|MIP    |426	|7195	|7195			|0					|59316		|0			|0		 			 |0	    				|26374.0000	 |
|[air06       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/air06.gz                )|LP	    |825	|8627	|0				|0					|79433		|0			|0		 			 |0	    				|49616.3636	 |
|[aircraft    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/aircraft.gz             )|LP	    |3754	|7517	|0				|0					|24034		|0			|0		 			 |0	    				|1567.0423	 |
|[arki001     ](http://miplib.zib.de/miplib3/miplib3/arki001.mps.gz                               )|MIP    |1048	|1388	|415			|123				|20440		|0			|0		 			 |0	    				| 	 	     |
|[bal8x12     ](http://plato.la.asu.edu/ftp/fctp/bal8x12.mps.gz                                   )|MIP    |116	|192	|96				|0					|576		|0			|0		 			 |0	    				|471.5500	 |
|[bandm       ](http://www.netlib.org/lp/data/bandm                                               )|LP	    |305	|472	|0				|0					|2659		|0			|0		 			 |0	    				|-158.6280	 |
|[bas1lp      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/bas1lp.gz               )|LP	    |5411	|4461	|0				|0					|582429		|0			|0		 			 |0	    				|363.0000	 |
|[baxter      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/baxter.gz               )|LP	    |27441	|15128	|0				|0					|109823		|0			|0		 			 |0	    				|5.6007256E+7| 
|[bc          ](ftp://ftp.mcs.anl.gov/neos/mip-bench/bc.mps.gz                                    )|MIP    |1913	|1751	|483			|0					|276843		|0			|0		 			 |0	    				| 	 	     |
|[bc1         ](http://plato.la.asu.edu/ftp/milp/bc1.mps.gz                                       )|MIP    |1913	|1751	|252			|0					|276843		|0			|0		 			 |0	    				| 	 	     |
|[beaconfd    ](http://www.netlib.org/lp/data/beaconfd                                            )|LP	    |173	|262	|0				|0					|3476		|0			|0		 			 |0	    				|33592.4858	 |
|[bell3a      ](http://miplib.zib.de/miplib3/miplib3/bell3a.mps.gz                                )|MIP    |123	|133	|39				|32					|441		|0			|0		 			 |0	    				|878430.3160 |	 
|[bell5       ](http://miplib.zib.de/miplib3/miplib3/bell5.mps.gz                                 )|MIP    |91		|104	|30				|28					|340		|0			|0		 			 |0	    				|8966406.4915| 
|[bgdbg1      ](http://www.netlib.org/lp/infeas/bgdbg1                                            )|LP	    |348	|407	|0				|0					|1485		|0			|0		 			 |0	    				| 	 	     |
|[bgetam      ](http://www.netlib.org/lp/infeas/bgetam                                            )|LP	    |400	|688	|0				|0					|2489		|0			|0		 			 |0	    				| 	 	     |
|[bgindy      ](http://www.netlib.org/lp/infeas/bgindy                                            )|LP	    |2671	|10116	|0				|0					|75019		|0			|0		 			 |0	    				| 	 	     |
|[bgprtr      ](http://www.netlib.org/lp/infeas/bgprtr                                            )|LP	    |20		|34		|0				|0					|90			|0			|0		 			 |0	    				| 	 	     |
|[bienst1     ](http://plato.la.asu.edu/ftp/milp/bienst1.mps.gz                                   )|MIP    |576	|505	|28				|0					|2185		|0			|0		 			 |0	    				|46.7500	 |	 
|[bienst2     ](http://plato.la.asu.edu/ftp/milp/bienst2.mps.gz                                   )|MIP    |576	|505	|35				|0					|2185		|0			|0		 			 |0	    				| 	 	     |
|[binkar10_1  ](ftp://ftp.mcs.anl.gov/neos/mip-bench/binkar10_1.mps.gz                            )|MIP    |1026	|2298	|170			|0					|6238		|0			|0		 			 |0	    				|6742.2000	 |
|[bk4x3       ](http://plato.la.asu.edu/ftp/fctp/bk4x3.mps.gz                                     )|MIP    |19		|24		|12				|0					|72			|0			|0		 			 |0	    				|350.0000	 |
|[blend       ](http://www.netlib.org/lp/data/blend                                               )|LP	    |74		|83		|0				|0					|521		|0			|0		 			 |0	    				|0.0000	 	 |
|[blend2      ](http://miplib.zib.de/miplib3/miplib3/blend2.mps.gz                                )|MIP    |274	|353	|231			|33					|1497		|0			|0		 			 |0	    				|7.5990	 	 |
|[bnl1        ](http://www.netlib.org/lp/data/bnl1                                                )|LP	    |643	|1175	|0				|0					|6129		|0			|0		 			 |0	    				|1977.6296	 |
|[bnl2        ](http://www.netlib.org/lp/data/bnl2                                                )|LP	    |2324	|3489	|0				|0					|16124		|0			|0		 			 |0	    				|1811.2365	 |
|[boeing1     ](http://www.netlib.org/lp/data/boeing1                                             )|LP	    |351	|384	|0				|0					|3865		|0			|0		 			 |0	    				|-901.3164	 |
|[boeing2     ](http://www.netlib.org/lp/data/boeing2                                             )|LP	    |166	|143	|0				|0					|1339		|0			|0		 			 |0	    				|-872.8729	 |
|[bore3d      ](http://www.netlib.org/lp/data/bore3d                                              )|LP	    |233	|315	|0				|0					|1525		|0			|0		 			 |0	    				|1373.0804	 |	
|[box1        ](http://www.netlib.org/lp/infeas/box1                                              )|LP	    |231	|261	|0				|0					|912		|0			|0		 			 |0	    				| 	 	 	 |	
|[brandy      ](http://www.netlib.org/lp/data/brandy                                              )|LP	    |220	|249	|0				|0					|2150		|0			|0		 			 |0	    				|1518.5099	 |	
|[cap6000     ](http://miplib.zib.de/miplib3/miplib3/cap6000.mps.gz                               )|MIP    |2176	|6000	|6000			|0					|54238		|0			|0		 			 |0	    				|-2.451377E+6| 	
|[capri       ](http://www.netlib.org/lp/data/capri                                               )|LP	    |271	|353	|0				|0					|1786		|0			|0		 			 |0	    				|2690.0129	 |	
|[car4        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/car4.gz                 )|LP	    |16384	|33052	|0				|0					|96492	    |0			|0		 			 |0	    				|35.4604	 |	 
|[cari        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/cari.gz                 )|LP	    |400	|1200	|0				|0					|153600		|0			|0		 			 |0	    				|581.8931	 |
|[cracker1    ](                                                                                  )|LP	    |7		|8		|0				|0					|43		    |0			|0		 			 |0	    				| 	 	     |
|[cracker2    ](                                                                                  )|LP	    |7		|8		|0				|0					|43		    |0			|0		 			 |0	    				| 	 	     |
|[cep1        ](http://www.sztaki.hu/~meszaros/public\_ftp/lptestse/stochlp/cep1.gz             )|LP	    |1521	|3248	|0				|0					|9956	    |0			|0		 			 |0	    				|355160.0860 |	 
|[ceria3d     ](http://www.netlib.org/lp/infeas/ceria3d                                           )|LP	    |3576	|824	|0				|0					|17604		|0			|0		 			 |0	    				| 	 	 	 |
|[ch          ](http://www.sztaki.hu/~meszaros/public\_ftp/lptestse/misc/ch.gz                  )|LP	    |3700	|5062	|0				|0					|24760	    |0			|0		 			 |0	    				|925756.3704 |	 
|[chemcom     ](http://www.netlib.org/lp/infeas/chemcom                                           )|LP	    |288	|720	|0				|0					|2190		|0			|0		 			 |0	    				| 	 	 	 |	
|[cl120a13l1  ](                                                                                  )|QCP    |72321	|72002	|0				|0					|301882		|14400		|2		 			 |2	    				| 	 	     |
|[cl180a13l1  ](                                                                                  )|QCP    |162481	|162002	|0				|0					|679622		|32400		|2		 			 |2	    				| 	 	     |
|[cl3a13l1    ](                                                                                  )|QCP    |54		|47		|0				|0					|178		|9			|2		 			 |2	    				| 	 	 	 |
|[cl30a13l1   ](                                                                                  )|QCP    |4581	|4502	|0				|0					|18772		|900		|2		 			 |2	    				| 	 	 	 |
|[cl60a13l1   ](                                                                                  )|QCP    |18161	|18002	|0				|0					|75342		|3600		|2		 			 |2	    				| 	 	     |
|[cl90a13l1   ](                                                                                  )|QCP    |40741	|40502	|0				|0					|169712		|8100		|2		 			 |2	    				| 	 	     |
|[client1     ](                                                                                  )|MIP    |344158	|348195	|26093			|12512				|3918856	|0			|0		 			 |0	    				| 	 	 	 |	
|[co5         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/co5.gz                  )|LP	    |5774	|7993	|0				|0					|58739		|0			|0		 			 |0	    				|714469.5538 |	 
|[co9         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/co9.gz                  )|LP	    |10789	|14851	|0				|0					|111158		|0			|0		 			 |0	    				|946920.4303 |	 
|[complex     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/complex.gz              )|LP	    |1023	|1408	|0				|0					|46783		|0			|0		 			 |0	    				|-99.6667	 |
|[cplex1      ](http://www.netlib.org/lp/infeas/cplex1                                            )|LP	    |3005	|3221	|0				|0					|10664	    |0			|0		 			 |0	    				| 	 	     |
|[cplex2      ](http://www.netlib.org/lp/infeas/cplex2                                            )|LP	    |224	|221	|0				|0					|1059		|0			|0		 			 |0	    				| 	 	 	 |
|[cq5         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/cq5.gz                  )|LP	    |5048	|7530	|0				|0					|51879		|0			|0		 			 |0	    				|400133.8075 |	 
|[cq9         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/cq9.gz                  )|LP	    |9278	|13778	|0				|0					|97283		|0			|0		 			 |0	    				|505541.7098 |	 
|[cr42        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/cr42.gz                 )|LP	    |905	|1513	|0				|0					|7527		|0			|0		 			 |0	    				|28.0185	 |	 
|[cre-a       ](http://www.netlib.org/lp/data/kennington/cre-a.gz                                 )|LP	    |3516	|4067	|0				|0					|19054	    |0			|0		 			 |0	    				|2.3595407E+7| 
|[cre-b       ](http://www.netlib.org/lp/data/kennington/cre-b.gz                                 )|LP	    |9648	|72447	|0				|0					|328542	    |0			|0		 			 |0	    				|2.3129640E+7| 
|[cre-c       ](http://www.netlib.org/lp/data/kennington/cre-c.gz                                 )|LP	    |3068	|3678	|0				|0					|16922	    |0			|0		 			 |0	    				|2.5275116E+7| 
|[cre-d       ](http://www.netlib.org/lp/data/kennington/cre-d.gz                                 )|LP	    |8926	|69980	|0				|0					|312626	    |0			|0		 			 |0	    				|2.4454970E+7| 
|[crew1       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/crew1.gz                )|LP	    |135	|6469	|0				|0					|53419		|0			|0		 			 |0	    				|20.5556	 |	 
|[cycle       ](http://www.netlib.org/lp/data/cycle                                               )|LP	    |1903	|2857	|0				|0					|21322	    |0			|0		 			 |0	    				|-5.2264	 |	 
|[czprob      ](http://www.netlib.org/lp/data/czprob                                              )|LP	    |929	|3523	|0				|0					|14173		|0			|0		 			 |0	    				|2185196.6989| 
|[d2q06c      ](http://www.netlib.org/lp/data/d2q06c                                              )|LP	    |2171	|5167	|0				|0					|35674	    |0			|0		 			 |0	    				|122784.2108 |	 
|[d6cube      ](http://www.netlib.org/lp/data/d6cube                                              )|LP	    |415	|6184	|0				|0					|43888		|0			|0		 			 |0	    				|315.4917	 |
|[dano3_3     ](http://plato.la.asu.edu/ftp/milp/dano3_3.mps.gz                                   )|MIP    |3202	|13873	|69				|0					|79656		|0			|0		 			 |0	    				| 	 	 	 |
|[dano3_4     ](http://plato.la.asu.edu/ftp/milp/dano3_4.mps.gz                                   )|MIP    |3202	|13873	|92				|0					|79656		|0			|0		 			 |0	    				| 	 	 	 |
|[dano3_5     ](http://plato.la.asu.edu/ftp/milp/dano3_5.mps.gz                                   )|MIP    |3202	|13873	|115			|0					|79656		|0			|0		 			 |0	    				| 	 	 	 |	
|[dano3mip    ](http://miplib.zib.de/miplib3/miplib3/dano3mip.mps.gz                              )|MIP    |3202	|13873	|552			|0					|79656		|0			|0		 			 |0	    				| 	 	 	 |
|[danoint     ](http://miplib.zib.de/miplib3/miplib3/danoint.mps.gz                               )|MIP    |664	|521	|56				|0					|3233		|0			|0		 			 |0	    				| 	 	 	 |		
|[dbic1       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/dbic1.gz                )|LP	    |43200	|183235	|0				|0					|1217046	|0			|0		 			 |0	    				| 	 	     |
|[dbir1       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/dbir1.gz                )|LP	    |18804	|27355	|0				|0					|1067815	|0			|0		 			 |0	    				|-8.106707E+6| 
|[dbir2       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/dbir2.gz                )|LP	    |18906	|27355	|0				|0					|1148847	|0			|0		 			 |0	    				|-6.116917E+6| 
|[dcmulti     ](http://miplib.zib.de/miplib3/miplib3/dcmulti.mps.gz                               )|MIP    |290	|548	|75				|0					|1833		|0			|0		 			 |0	    				|188182.0000 |	 			
|[de063155    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/problematic/de063155.gz      )|LP	    |852	|1488	|0				|0					|5405		|0			|0		 			 |0	    				|9.8830945E+9| 
|[de063157    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/problematic/de063157.gz      )|LP	    |936	|1488	|0				|0					|5551		|0			|0		 			 |0	    				|2.1528501E+7| 
|[de080285    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/problematic/de080285.gz      )|LP	    |936	|1488	|0				|0					|5514		|0			|0		 			 |0	    				|13.9247	 |	 
|[degen2      ](http://www.netlib.org/lp/data/degen2                                              )|LP	    |444	|534	|0				|0					|4449		|0			|0		 			 |0	    				|-1435.1780	 |	
|[degen3      ](http://www.netlib.org/lp/data/degen3                                              )|LP	    |1503	|1818	|0				|0					|26230	    |0			|0		 			 |0	    				|-987.2940	 |
|[delf000     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf000.gz              )|LP	    |3128	|5464	|0				|0					|15534		|0			|0		 			 |0	    				|3.0763	 	 |
|[delf001     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf001.gz              )|LP	    |3098	|5462	|0				|0					|16142		|0			|0		 			 |0	    				|2358.6089	 |
|[delf002     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf002.gz              )|LP	    |3135	|5460	|0				|0					|16215		|0			|0		 			 |0	    				|2.8328	 	 |
|[delf003     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf003.gz              )|LP	    |3065	|5460	|0				|0					|16197		|0			|0		 			 |0	    				|9115.5452	 |
|[delf004     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf004.gz              )|LP	    |3142	|5464	|0				|0					|16474		|0			|0		 			 |0	    				|158.6937	 |
|[delf005     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf005.gz              )|LP	    |3103	|5464	|0				|0					|16422		|0			|0		 			 |0	    				|2287.3040	 |
|[delf006     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf006.gz              )|LP	    |3147	|5469	|0				|0					|16532		|0			|0		 			 |0	    				|228.4311	 |
|[delf007     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf007.gz              )|LP	    |3137	|5471	|0				|0					|16686		|0			|0		 			 |0	    				|379.9558	 |
|[delf008     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf008.gz              )|LP	    |3148	|5472	|0				|0					|16749		|0			|0		 			 |0	    				|241.2355	 |
|[delf009     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf009.gz              )|LP	    |3135	|5472	|0				|0					|16678		|0			|0		 			 |0	    				|484.1248	 |
|[delf010     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf010.gz              )|LP	    |3147	|5472	|0				|0					|16730		|0			|0		 			 |0	    				|229.1067	 |
|[delf011     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf011.gz              )|LP	    |3134	|5471	|0				|0					|16705		|0			|0		 			 |0	    				|473.4942	 |
|[delf012     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf012.gz              )|LP	    |3151	|5471	|0				|0					|16721		|0			|0		 			 |0	    				|178.6801	 |
|[delf013     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf013.gz              )|LP	    |3116	|5472	|0				|0					|16737		|0			|0		 			 |0	    				|2616.6769	 |
|[delf014     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf014.gz              )|LP	    |3170	|5472	|0				|0					|16794		|0			|0		 			 |0	    				|153.4985	 |
|[delf015     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf015.gz              )|LP	    |3161	|5471	|0				|0					|16721		|0			|0		 			 |0	    				|737.0368	 |
|[delf017     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf017.gz              )|LP	    |3176	|5471	|0				|0					|16660		|0			|0		 			 |0	    				|461.5183	 |
|[delf018     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf018.gz              )|LP	    |3196	|5471	|0				|0					|16702		|0			|0		 			 |0	    				|142.1339	 |
|[delf019     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf019.gz              )|LP	    |3185	|5471	|0				|0					|16690		|0			|0		 			 |0	    				|2342.1289	 |
|[delf020     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf020.gz              )|LP	    |3213	|5472	|0				|0					|16998		|0			|0		 			 |0	    				|351.6813	 |
|[delf021     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf021.gz              )|LP	    |3208	|5471	|0				|0					|16996		|0			|0		 			 |0	    				|394.7044	 |
|[delf022     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf022.gz              )|LP	    |3214	|5472	|0				|0					|16988		|0			|0		 			 |0	    				|364.9929	 |
|[delf023     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf023.gz              )|LP	    |3214	|5472	|0				|0					|17026		|0			|0		 			 |0	    				|354.1171	 |
|[delf024     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf024.gz              )|LP	    |3207	|5466	|0				|0					|17384		|0			|0		 			 |0	    				|351.4168	 |
|[delf025     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf025.gz              )|LP	    |3197	|5464	|0				|0					|17375		|0			|0		 			 |0	    				|350.2968	 |
|[delf026     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf026.gz              )|LP	    |3190	|5462	|0				|0					|17148		|0			|0		 			 |0	    				|351.6133	 |
|[delf027     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf027.gz              )|LP	    |3187	|5457	|0				|0					|17128		|0			|0		 			 |0	    				|319.4556	 |
|[delf028     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf028.gz              )|LP	    |3177	|5452	|0				|0					|17330		|0			|0		 			 |0	    				|297.2456	 |
|[delf029     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf029.gz              )|LP	    |3179	|5454	|0				|0					|17330		|0			|0		 			 |0	    				|275.2256	 |
|[delf030     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf030.gz              )|LP	    |3199	|5469	|0				|0					|17190		|0			|0		 			 |0	    				|253.8402	 |
|[delf031     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf031.gz              )|LP	    |3176	|5455	|0				|0					|17133		|0			|0		 			 |0	    				|234.2985	 |
|[delf032     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf032.gz              )|LP	    |3196	|5467	|0				|0					|17179		|0			|0		 			 |0	    				|216.0392	 |
|[delf033     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf033.gz              )|LP	    |3173	|5456	|0				|0					|17133		|0			|0		 			 |0	    				|200.2717	 |
|[delf034     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf034.gz              )|LP	    |3175	|5455	|0				|0					|17136		|0			|0		 			 |0	    				|189.4375	 |
|[delf035     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf035.gz              )|LP	    |3193	|5468	|0				|0					|17212		|0			|0		 			 |0	    				|176.9488	 |
|[delf036     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/delf036.gz              )|LP	    |3170	|5459	|0				|0					|17130		|0			|0		 			 |0	    				|164.4593	 |
|[deter0      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter0.gz            )|LP	    |1923	|5468	|0				|0					|11191	    |0			|0		 			 |0	    				|-2.0459	 |	 
|[deter1      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter1.gz            )|LP	    |5527	|15737	|0				|0					|32239	    |0			|0		 			 |0	    				|-2.5576	 |	 
|[deter2      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter2.gz            )|LP	    |6095	|17313	|0				|0					|35811	    |0			|0		 			 |0	    				|-1.8299	 |	 
|[deter3      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter3.gz            )|LP	    |7647	|21777	|0				|0					|44619	    |0			|0		 			 |0	    				|-2.1078	 |	 
|[deter4      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter4.gz            )|LP	    |3235	|9133	|0				|0					|19301	    |0			|0		 			 |0	    				|-1.4280	 |	 
|[deter5      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter5.gz            )|LP	    |5103	|14529	|0				|0					|29763	    |0			|0		 			 |0	    				|-2.2612	 |	 
|[deter6      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter6.gz            )|LP	    |4255	|12113	|0				|0					|24811	    |0			|0		 			 |0	    				|-2.3080	 |	 
|[deter7      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter7.gz            )|LP	    |6375	|18153	|0				|0					|37191	    |0			|0		 			 |0	    				|-2.2286	 |	 
|[deter8      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/deter8.gz            )|LP	    |3831	|10905	|0				|0					|22335	    |0			|0		 			 |0	    				|-2.7943	 |	 
|[df2177      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/df2177.gz               )|LP	    |630	|9728	|0				|0					|31434		|0			|0		 			 |0	    				|90.0000	 |	 
|[dfl001      ](http://www.netlib.org/lp/data/dfl001                                              )|LP	    |6071	|12230	|0				|0					|41873	    |0			|0		 			 |0	    				|0.0000	 	 |
|[disp3       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/disp3.gz                )|LP	    |2182	|1856	|0				|0					|8221	    |0			|0		 			 |0	    				|183887.5223 |	 
|[dsbmip      ](http://miplib.zib.de/miplib3/miplib3/dsbmip.mps.gz                                )|MIP    |1182	|1886	|160			|32					|8434		|0			|0		 			 |0	    				|-306.7690	 |	
|[e226        ](http://www.netlib.org/lp/data/e226                                                )|LP	    |223	|282	|0				|0					|2767		|0			|0		 			 |0	    				|-18.7519	 |	
|[egout       ](http://miplib.zib.de/miplib3/miplib3/egout.mps.gz                                 )|MIP    |98		|141	|55				|0					|392		|0			|0		 			 |0	    				|568.1007	 |		
|[eild76      ](ftp://ftp.mcs.anl.gov/neos/mip-bench/eild76.mps.gz                                )|MIP    |75		|1898	|0				|1898				|21009		|0			|0		 			 |0	    				| 	 	     |
|[enigma      ](http://miplib.zib.de/miplib3/miplib3/enigma.mps.gz                                )|MIP    |21		|100	|100			|0					|298		|0			|0		 			 |0	    				|0.0000	 	 |			
|[etamacro    ](http://www.netlib.org/lp/data/etamacro                                            )|LP	    |400	|688	|0				|0					|2489		|0			|0		 			 |0	    				|-755.7152	 |	
|[ex3sta1     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/ex3sta1.gz              )|LP	    |17443	|8156	|0				|0					|59420		|0			|0		 			 |0	    				|-63.0754	 |
|[ex72a       ](http://www.netlib.org/lp/infeas/ex72a                                             )|LP	    |197	|215	|0				|0					|682		|0			|0		 			 |0	    				| 	 	 	 |	
|[ex73a       ](http://www.netlib.org/lp/infeas/ex73a                                             )|LP	    |193	|211	|0				|0					|668		|0			|0		 			 |0	    				| 	 	 	 |	
|[farm        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/farm.gz                 )|LP	    |7		|12		|0				|0					|48		    |0			|0		 			 |0	    				|17500.0000	 |
|[fast0507    ](http://miplib.zib.de/miplib3/miplib3/fast0507.mps.gz                              )|MIP    |507	|63009	|63009			|0					|472358		|0			|0		 			 |0	    				| 	 	 	 |
|[fffff800    ](http://www.netlib.org/lp/data/fffff800                                            )|LP	    |524	|854	|0				|0					|6235		|0			|0		 			 |0	    				|555679.5648 |	 	
|[fiber       ](http://miplib.zib.de/miplib3/miplib3/fiber.mps.gz                                 )|MIP    |363	|1298	|1254			|0					|4198		|0			|0		 			 |0	    				|405935.1800 |	 	
|[finnis      ](http://www.netlib.org/lp/data/finnis                                              )|LP	    |497	|614	|0				|0					|2714		|0			|0		 			 |0	    				|172791.0656 |	 	
|[fit1d       ](http://www.netlib.org/lp/data/fit1d                                               )|LP	    |24		|1026	|0				|0					|14430	    |0			|0		 			 |0	    				|-9146.3781	 |
|[fit1p       ](http://www.netlib.org/lp/data/fit1p                                               )|LP	    |627	|1677	|0				|0					|10894		|0			|0		 			 |0	    				|9146.3781	 |
|[fit2d       ](http://www.netlib.org/lp/data/fit2d                                               )|LP	    |25		|10500	|0				|0					|138018	    |0			|0		 			 |0	    				|-68464.2933 |	 
|[fit2p       ](http://www.netlib.org/lp/data/fit2p                                               )|LP	    |3000	|13525	|0				|0					|60784	    |0			|0		 			 |0	    				|68464.2933	 |
|[fixnet6     ](http://miplib.zib.de/miplib3/miplib3/fixnet6.mps.gz                               )|MIP    |478	|878	|378			|0					|2550		|0			|0		 			 |0	    				|3983.0000	 |				
|[flugpl      ](http://miplib.zib.de/miplib3/miplib3/flugpl.mps.gz                                )|MIP    |18		|18		|0				|11					|64			|0			|0		 			 |0	    				|1167185.7256| 
|[fome10      ](http://plato.la.asu.edu/ftp/lptestset/fome/fome10.gz                              )|LP	    |6071	|12230	|0				|0					|41873	    |0			|0		 			 |0	    				|0.0000	 	 |
|[fome11      ](http://plato.la.asu.edu/ftp/lptestset/fome/fome11.gz                              )|LP	    |12142	|24460	|0				|0					|83746	    |0			|0		 			 |0	    				|0.0000	 	 |
|[fome12      ](http://plato.la.asu.edu/ftp/lptestset/fome/fome12.gz                              )|LP	    |24284	|48920	|0				|0					|167492	    |0			|0		 			 |0	    				|0.0000	 	 |
|[fome13      ](http://plato.la.asu.edu/ftp/lptestset/fome/fome13.gz                              )|LP	    |48568	|97840	|0				|0					|334984	    |0			|0		 			 |0	    				|0.0000	 	 |
|[fome20      ](http://plato.la.asu.edu/ftp/lptestset/fome/fome20.gz                              )|LP	    |33874	|105728	|0				|0					|304153	    |0			|0		 			 |0	    				|2.382166E+10| 
|[fome21      ](http://plato.la.asu.edu/ftp/lptestset/fome/fome21.gz                              )|LP	    |67748	|211456	|0				|0					|608306	    |0			|0		 			 |0	    				|4.734632E+10| 
|[forest6     ](http://www.netlib.org/lp/infeas/forest6                                           )|LP	    |66		|95		|0				|0					|270		|0			|0		 			 |0	    				| 	 	 	 |
|[forplan     ](http://www.netlib.org/lp/data/forplan                                             )|LP	    |70		|83		|0				|0					|38			|0			|0		 			 |0	    				| 	 	     |
|[fxm2-16     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/fxm2-16.gz           )|LP	    |3900	|4012	|0				|0					|21542		|0			|0		 			 |0	    				| 	 	     |
|[fxm2-6      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/fxm2-6.gz            )|LP	    |1520	|1642	|0				|0					|8082	    |0			|0		 			 |0	    				| 	 	     |
|[fxm3_16     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/fxm3\_16.gz          )|LP	    |41340	|59692	|0				|0					|343382		|0			|0		 			 |0	    				| 	 	     |
|[fxm3_6      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/fxm3\_6.gz           )|LP	    |6200	|8602	|0				|0					|48312	    |0			|0		 			 |0	    				| 	 	     |
|[fxm4_6      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/fxm4\_6.gz           )|LP	    |22400	|27682	|0				|0					|234612	    |0			|0		 			 |0	    				| 	 	     |
|[galenet     ](http://www.netlib.org/lp/infeas/galenet                                           )|LP	    |8		|8		|0				|0					|16			|0			|0		 			 |0	    				| 	 	     |
|[gams10a     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/gams10a.gz              )|LP	    |114	|61		|0				|0					|298		|0			|0		 			 |0	    				|1.0000	 	 |		
|[gams10am    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/infeas/gams10am.gz           )|LP	    |114	|61		|0				|0					|298		|0			|0		 			 |0	    				| 	 	 	 |
|[gams30a     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/gams30a.gz              )|LP	    |354	|181	|0				|0					|938		|0			|0		 			 |0	    				|1.0000	 	 |			
|[gams30am    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/infeas/gams30am.gz           )|LP	    |354	|181	|0				|0					|938		|0			|0		 			 |0	    				| 	 	 	 |	
|[gams60am    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/infeas/gams60am.gz           )|LP	    |714	|361	|0				|0					|1897		|0			|0		 			 |0	    				| 	 	 	 |
|[ganges      ](http://www.netlib.org/lp/data/ganges                                              )|LP	    |1309	|1681	|0				|0					|7021	    |0			|0		 			 |0	    				|-109585.7361| 
|[gas11       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/infeas/gas11.gz              )|LP	    |459	|862	|0				|0					|2731		|0			|0		 			 |0	    				|2.2636722E+7| 	
|[ge          ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/ge.gz                   )|LP	    |10099	|11098	|0				|0					|43627	    |0			|0		 			 |0	    				|5581280.2084| 
|[gen         ](http://miplib.zib.de/miplib3/miplib3/gen.mps.gz                                   )|MIP    |780	|870	|144			|6					|3174		|0			|0		 			 |0	    				|112313.3627 |	 				
|[gen1        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/problematic/gen1.gz          )|LP	    |769	|2560	|0				|0					|64621		|0			|0		 			 |0	    				|0.0000	 	 |
|[gen2        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/problematic/gen2.gz          )|LP	    |1121	|3264	|0				|0					|84095	    |0			|0		 			 |0	    				|3.2928	 	 |
|[gen4        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/problematic/gen4.gz          )|LP	    |1537	|4297	|0				|0					|110174	    |0			|0		 			 |0	    				|0.0000	 	 |
|[gesa2       ](http://miplib.zib.de/miplib3/miplib3/gesa2.mps.gz                                 )|MIP    |1392	|1224	|240			|168				|6000		|0			|0		 			 |0	    				|2.5779856E+7| 		
|[gesa2_o     ](http://miplib.zib.de/miplib3/miplib3/gesa2\_o.mps.gz                              )|MIP    |1248	|1224	|384			|336				|4608		|0			|0		 			 |0	    				|2.5779856E+7| 			
|[gesa3       ](http://miplib.zib.de/miplib3/miplib3/gesa3.mps.gz                                 )|MIP    |1368	|1152	|216			|168				|5736		|0			|0		 			 |0	    				|2.7991043E+7| 		
|[gesa3_o     ](http://miplib.zib.de/miplib3/miplib3/gesa3\_o.mps.gz                              )|MIP    |1224	|1152	|336			|336				|4416		|0			|0		 			 |0	    				|2.7991043E+7| 			
|[gfrd-pnc    ](http://www.netlib.org/lp/data/gfrd-pnc                                            )|LP	    |616	|1092	|0				|0					|3467		|0			|0		 			 |0	    				|0.0000	 	 |
|[gosh        ](http://www.netlib.org/lp/infeas/gosh                                              )|LP	    |3632	|10433	|0				|0					|93475	    |0			|0		 			 |0	    				| 	 	     |
|[gr4x6       ](http://plato.la.asu.edu/ftp/fctp/gr4x6.mps.gz                                     )|MIP    |34		|48		|24				|0					|144		|0			|0		 			 |0	    				|202.3500	 |	
|[gran        ](http://www.netlib.org/lp/infeas/gran                                              )|LP	    |2658	|2520	|0				|0					|20151	    |0			|0		 			 |0	    				| 	 	     |
|[greenbea    ](http://www.netlib.org/lp/data/greenbea                                            )|LP	    |2392	|5405	|0				|0					|31499	    |0			|0		 			 |0	    				|-7.255525E+7| 
|[greenbeb    ](http://www.netlib.org/lp/data/greenbeb                                            )|LP	    |2392	|5405	|0				|0					|31499	    |0			|0		 			 |0	    				|-4.302260E+6| 
|[greenbei    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/infeas/greenbei.gz           )|LP	    |2393	|5405	|0				|0					|31105	    |0			|0		 			 |0	    				| 	 	     |
|[grow15      ](http://www.netlib.org/lp/data/grow15                                              )|LP	    |300	|645	|0				|0					|5665		|0			|0		 			 |0	    				|-1.068709E+8| 	
|[grow22      ](http://www.netlib.org/lp/data/grow22                                              )|LP	    |440	|946	|0				|0					|8318		|0			|0		 			 |0	    				|-1.608343E+8| 	
|[grow7       ](http://www.netlib.org/lp/data/grow7                                               )|LP	    |140	|301	|0				|0					|2633		|0			|0		 			 |0	    				|-4.778781E+7| 	
|[gt2         ](http://miplib.zib.de/miplib3/miplib3/gt2.mps.gz                                   )|MIP    |29		|188	|24				|164				|468		|0			|0		 			 |0	    				|21166.0000	 |				
|[haprp       ](ftp://ftp.mcs.anl.gov/neos/mip-bench/haprp.mps.gz                                 )|MIP    |1048	|1828	|0				|1828				|5363		|0			|0		 			 |0	    				|3665963.2135| 
|[harp2       ](http://miplib.zib.de/miplib3/miplib3/harp2.mps.gz                                 )|MIP    |112	|2993	|2993			|0					|8833		|0			|0		 			 |0	     				| 	 	     |
|[iair04      ](                                                                                  )|MIQCP  |824	|8905	|8904			|0					|81871		|1			|17807	 			 |8904				    | 	 	     |
|[iair05      ](                                                                                  )|MIQCP  |427	|7196	|7195			|0					|59318		|1			|14389	 			 |7195				    | 	 	     |
|[ibc1        ](                                                                                  )|MIQCP  |1914	|1752	|252			|0					|276845		|1			|503	 			 |252    				| 	 		 |
|[ibienst1    ](                                                                                  )|MIQCP  |577	|506	|28				|0					|2187		|1			|55		 			 |28	     			| 	 	     |
|[icap6000    ](                                                                                  )|MIQCP  |2172	|6001	|6000			|0					|24240	    |1			|11999	 			 |6000			    	| 	 	     |
|[iiasa       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/iiasa.gz                )|LP	    |669	|2970	|0				|0					|9258		|0			|0		 			 |0	    				|2.6348612E+8| 
|[imas284     ](                                                                                  )|MIQCP  |69		|152	|150			|0					|9784		|1			|299	 			 |150    				| 	 		 |		
|[imisc07     ](                                                                                  )|MIQCP  |213	|261	|259			|0					|8622		|1			|517	 			 |259    				| 	 		 |			
|[imod011     ](                                                                                  )|MIQCP  |4481	|10958	|97				|0					|29840		|1			|191	 			 |96	     			| 	 	     |
|[ineos4      ](                                                                                  )|MIQCP  |36704	|21125	|17136			|0					|109075	    |1			|34271	 			 |17136				    | 	 	     |
|[ineos5      ](                                                                                  )|MIQCP  |36703	|21125	|17136			|0					|109070	    |1			|34271	 			 |17136	    			| 	 	     |
|[iprob       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/problematic/iprob.gz         )|LP	    |3001	|3001	|0				|0					|12000	    |0			|0		 			 |0	     				| 	         |
|[iqiu        ](                                                                                  )|MIQCP  |1193	|841	|48				|0					|3746		|1			|95		 			 |48	     			| 	         |
|[iran13x13   ](                                                                                  )|MIQCP  |196	|339	|169			|0					|1016		|1			|337	 			 |169    				| 	 		 |		
|[iran8x32    ](                                                                                  )|MIQCP  |297	|513	|256			|0					|1538		|1			|511	 			 |256    				| 	 		 |		
|[irp         ](ftp://ftp.mcs.anl.gov/neos/mip-bench/irp.mps.gz                                   )|MIP    |39		|20315	|20315			|0					|118569		|0			|0		 			 |0	    				|12159.4928	 |	
|[israel      ](http://www.netlib.org/lp/data/israel                                              )|LP	    |174	|142	|0				|0					|2358		|0			|0		 			 |0	    				|-896644.8219| 	
|[iswath2     ](                                                                                  )|MIQCP  |484	|6405	|2213			|0					|34087		|1			|4425	 			 |2213			    	| 	 	 	 |
|[itest2      ](http://www.netlib.org/lp/infeas/itest2                                            )|LP	    |9		|4		|0				|0					|17		    |0			|0		 			 |0	     				| 	         |
|[itest6      ](http://www.netlib.org/lp/infeas/itest6                                            )|LP	    |11		|8		|0				|0					|23		    |0			|0		 			 |0	     				| 	         |
|[jendrec1    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/jendrec1.gz             )|LP	    |2109	|4228	|0				|0					|93836	    |0			|0		 			 |0	    				|7028.4605	 |
|[kb2         ](http://www.netlib.org/lp/data/kb2                                                 )|LP	    |43		|41		|0				|0					|291		|0			|0		 			 |0	    				|-1749.9001	 |	
|[ken-07      ](http://www.netlib.org/lp/data/kennington/ken-07.gz                                )|LP	    |2426	|3602	|0				|0					|11981	    |0			|0		 			 |0	    				|-6.795204E+8| 
|[ken-11      ](http://www.netlib.org/lp/data/kennington/ken-11.gz                                )|LP	    |14694	|21349	|0				|0					|70354	    |0			|0		 			 |0	    				|-6.972382E+9| 
|[ken-13      ](http://www.netlib.org/lp/data/kennington/ken-13.gz                                )|LP	    |28632	|42659	|0				|0					|139834	    |0			|0		 			 |0	    				|-1.02574E+10| 
|[ken-18      ](http://www.netlib.org/lp/data/kennington/ken-18.gz                                )|LP	    |105127	|154699	|0				|0					|512719	    |0			|0		 			 |0	    				|-5.22170E+10| 
|[kent        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/kent.gz                 )|LP	    |21302	|6622	|0				|0					|56914	    |0			|0		 			 |0	    				| 	 	     |
|[khb05250    ](http://miplib.zib.de/miplib3/miplib3/khb05250.mps.gz                              )|MIP    |101	|1350	|24				|0					|3973		|0			|0		 			 |0	    				|1.0694023E+8| 	
|[kl02        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/kl02.gz                 )|LP	    |71		|36699	|0				|0					|249235	    |0			|0		 			 |0	    				|215.2500	 |
|[kleemin3    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/kleemin3.gz             )|LP	    |3		|3		|0				|0					|9		    |0			|0		 			 |0	    				|-10000.0000 |	 
|[kleemin4    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/kleemin4.gz             )|LP	    |4		|4		|0				|0					|14		    |0			|0		 			 |0	    				|-1.000000E+6| 
|[kleemin5    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/kleemin5.gz             )|LP	    |5		|5		|0				|0					|20		    |0			|0		 			 |0	    				|-1.000000E+8| 
|[kleemin6    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/kleemin6.gz             )|LP	    |6		|6		|0				|0					|27		    |0			|0		 			 |0	    				|-1.00000E+10| 
|[kleemin7    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/kleemin7.gz             )|LP	    |7		|7		|0				|0					|35		    |0			|0		 			 |0	    				|-1.00000E+12| 
|[kleemin8    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/kleemin8.gz             )|LP	    |8		|8		|0				|0					|44		    |0			|0		 			 |0	    				|-1.00000E+14| 
|[klein1      ](http://www.netlib.org/lp/infeas/klein1                                            )|LP	    |54		|54		|0				|0					|696		|0			|0		 			 |0	    				| 	 	     |
|[klein2      ](http://www.netlib.org/lp/infeas/klein2                                            )|LP	    |477	|54		|0				|0					|4585		|0			|0		 			 |0	    				| 	 	     |
|[klein3      ](http://www.netlib.org/lp/infeas/klein3                                            )|LP	    |994	|88		|0				|0					|12107		|0			|0		 			 |0	    				| 	 	     |
|[l152lav     ](http://miplib.zib.de/miplib3/miplib3/l152lav.mps.gz                               )|MIP    |97		|1989	|1989			|0					|11911		|0			|0		 			 |0	    				|4722.0000	 |	
|[l30         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/problematic/l30.gz           )|LP	    |2701	|15380	|0				|0					|64790		|0			|0		 			 |0	    				|0.9527	 	 |
|[l9          ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/l9.gz                   )|LP	    |244	|1401	|0				|0					|5829		|0			|0		 			 |0	    				|0.9982	 	 |
|[large000    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large000.gz             )|LP	    |4239	|6833	|0				|0					|20233	    |0			|0		 			 |0	    				|72.6085	 |	 
|[large001    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large001.gz             )|LP	    |4162	|6834	|0				|0					|20885	    |0			|0		 			 |0	    				|33181.4155	 |
|[large002    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large002.gz             )|LP	    |4249	|6835	|0				|0					|21990	    |0			|0		 			 |0	    				|2.8815	 	 |
|[large003    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large003.gz             )|LP	    |4200	|6835	|0				|0					|21676	    |0			|0		 			 |0	    				|24595.4876	 |
|[large004    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large004.gz             )|LP	    |4250	|6836	|0				|0					|21399	    |0			|0		 			 |0	    				|174.7063	 |
|[large005    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large005.gz             )|LP	    |4237	|6837	|0				|0					|21235	    |0			|0		 			 |0	    				|411.8529	 |
|[large006    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large006.gz             )|LP	    |4249	|6837	|0				|0					|21547	    |0			|0		 			 |0	    				|247.4492	 |
|[large007    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large007.gz             )|LP	    |4236	|6836	|0				|0					|21516	    |0			|0		 			 |0	    				|502.6115	 |
|[large008    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large008.gz             )|LP	    |4248	|6837	|0				|0					|21558	    |0			|0		 			 |0	    				|268.1140	 |
|[large009    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large009.gz             )|LP	    |4237	|6837	|0				|0					|21538	    |0			|0		 			 |0	    				|502.8242	 |
|[large010    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large010.gz             )|LP	    |4247	|6837	|0				|0					|21547	    |0			|0		 			 |0	    				|256.2503	 |
|[large011    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large011.gz             )|LP	    |4236	|6837	|0				|0					|21538	    |0			|0		 			 |0	    				|493.5848	 |
|[large012    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large012.gz             )|LP	    |4253	|6838	|0				|0					|21579	    |0			|0		 			 |0	    				|199.7012	 |
|[large013    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large013.gz             )|LP	    |4248	|6838	|0				|0					|21601	    |0			|0		 			 |0	    				|571.0062	 |
|[large014    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large014.gz             )|LP	    |4271	|6838	|0				|0					|21639	    |0			|0		 			 |0	    				|171.5760	 |
|[large015    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large015.gz             )|LP	    |4265	|6838	|0				|0					|21617	    |0			|0		 			 |0	    				|672.5306	 |
|[large016    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large016.gz             )|LP	    |4287	|6838	|0				|0					|21689	    |0			|0		 			 |0	    				|163.4869	 |
|[large017    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large017.gz             )|LP	    |4277	|6837	|0				|0					|21643	    |0			|0		 			 |0	    				|625.6827	 |
|[large018    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large018.gz             )|LP	    |4297	|6837	|0				|0					|21451	    |0			|0		 			 |0	    				|214.6165	 |
|[large019    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large019.gz             )|LP	    |4300	|6836	|0				|0					|21446	    |0			|0		 			 |0	    				|525.5277	 |
|[large020    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large020.gz             )|LP	    |4315	|6837	|0				|0					|21796	    |0			|0		 			 |0	    				|377.5187	 |
|[large021    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large021.gz             )|LP	    |4311	|6838	|0				|0					|21817	    |0			|0		 			 |0	    				|422.1310	 |
|[large022    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large022.gz             )|LP	    |4312	|6834	|0				|0					|21764	    |0			|0		 			 |0	    				|377.4854	 |
|[large023    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large023.gz             )|LP	    |4302	|6835	|0				|0					|21783	    |0			|0		 			 |0	    				|362.4467	 |
|[large024    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large024.gz             )|LP	    |4292	|6831	|0				|0					|22259	    |0			|0		 			 |0	    				|356.0314	 |
|[large025    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large025.gz             )|LP	    |4297	|6832	|0				|0					|22403	    |0			|0		 			 |0	    				|355.4460	 |
|[large026    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large026.gz             )|LP	    |4284	|6824	|0				|0					|22291	    |0			|0		 			 |0	    				|356.3755	 |
|[large027    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large027.gz             )|LP	    |4275	|6821	|0				|0					|22222	    |0			|0		 			 |0	    				|333.7057	 |
|[large028    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large028.gz             )|LP	    |4302	|6833	|0				|0					|22546	    |0			|0		 			 |0	    				|311.3651	 |
|[large029    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large029.gz             )|LP	    |4301	|6832	|0				|0					|22612	    |0			|0		 			 |0	    				|287.4776	 |
|[large030    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large030.gz             )|LP	    |4285	|6823	|0				|0					|22503	    |0			|0		 			 |0	    				|265.1260	 |
|[large031    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large031.gz             )|LP	    |4294	|6826	|0				|0					|22527	    |0			|0		 			 |0	    				|245.0276	 |
|[large032    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large032.gz             )|LP	    |4292	|6827	|0				|0					|22510	    |0			|0		 			 |0	    				|226.1456	 |
|[large033    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large033.gz             )|LP	    |4273	|6817	|0				|0					|22451	    |0			|0		 			 |0	    				|209.8381	 |
|[large034    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large034.gz             )|LP	    |4294	|6831	|0				|0					|22515	    |0			|0		 			 |0	    				|198.7676	 |
|[large035    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large035.gz             )|LP	    |4293	|6829	|0				|0					|22541	    |0			|0		 			 |0	    				|185.6066	 |
|[large036    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/large036.gz             )|LP	    |4282	|6822	|0				|0					|22500	    |0			|0		 			 |0	    				|171.0654	 |
|[lotfi       ](http://www.netlib.org/lp/data/lotfi                                               )|LP	    |153	|308	|0				|0					|1086		|0			|0		 			 |0	    				|-25.2647	 |	
|[lp22        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/lp22.gz                 )|LP	    |2958	|13434	|0				|0					|78994	    |0			|0		 			 |0	    				|458.9446	 |
|[lpl1        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/lpl1.gz                 )|LP	    |39951	|125000	|0				|0					|462127	    |0			|0		 			 |0	    				| 	 	     |
|[lpl2        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/lpl2.gz                 )|LP	    |3294	|10755	|0				|0					|42861	    |0			|0		 			 |0	    				|4465.0000	 |
|[lpl3        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/lpl3.gz                 )|LP	    |10828	|33538	|0				|0					|133915	    |0			|0		 			 |0	    				|27318.0000	 |
|[lseu        ](http://miplib.zib.de/miplib3/miplib3/lseu.mps.gz                                  )|MIP    |28		|89		|89				|0					|394		|0			|0		 			 |0	    				|1120.0000	 |	
|[markshare1  ](http://miplib.zib.de/miplib3/miplib3/markshare1.mps.gz                            )|MIP    |6		|62		|50				|0					|324		|0			|0		 			 |0	    				| 	 	 	 |
|[markshare2  ](http://miplib.zib.de/miplib3/miplib3/markshare2.mps.gz                            )|MIP    |7		|74		|60				|0					|448		|0			|0		 			 |0	    				| 	 	 	 |
|[maros-r7    ](http://www.netlib.org/lp/data/maros-r7                                            )|LP	    |3136	|9408	|0				|0					|151120	    |0			|0		 			 |0	    				|1497185.1665| 
|[maros       ](http://www.netlib.org/lp/data/maros                                               )|LP	    |846	|1443	|0				|0					|10006		|0			|0		 			 |0	    				|-58063.7437 |	 
|[mas284      ](ftp://ftp.mcs.anl.gov/neos/mip-bench/mas284.mps.gz                                )|MIP    |68		|151	|150			|0					|9782		|0			|0		 			 |0	    				|91405.7237	 |		
|[mas74       ](http://miplib.zib.de/miplib3/miplib3/mas74.mps.gz                                 )|MIP    |13		|151	|150			|0					|1857		|0			|0		 			 |0	    				| 	 	 	 |	
|[mas76       ](http://miplib.zib.de/miplib3/miplib3/mas76.mps.gz                                 )|MIP    |12		|151	|150			|0					|1791		|0			|0		 			 |0	    				|40005.0541	 |		
|[misc03      ](http://miplib.zib.de/miplib3/miplib3/misc03.mps.gz                                )|MIP    |96		|160	|159			|0					|2054		|0			|0		 			 |0	    				|3360.0000	 |		
|[misc06      ](http://miplib.zib.de/miplib3/miplib3/misc06.mps.gz                                )|MIP    |820	|1808	|112			|0					|5860		|0			|0		 			 |0	    				|12850.8607	 |		
|[misc07      ](http://miplib.zib.de/miplib3/miplib3/misc07.mps.gz                                )|MIP    |212	|260	|259			|0					|8620		|0			|0		 			 |0	    				|2810.0000	 |			
|[mitre       ](http://miplib.zib.de/miplib3/miplib3/mitre.mps.gz                                 )|MIP    |2054	|9958	|9958			|0					|46329		|0			|0		 			 |0	    				|115155.0000 |	 
|[mkc         ](http://miplib.zib.de/miplib3/miplib3/mkc.mps.gz                                   )|MIP    |3411	|5325	|5323			|0					|19984		|0			|0		 			 |0	    				| 	 	 	 |
|[mkc1        ](http://plato.la.asu.edu/ftp/milp/mkc1.mps.gz                                      )|MIP    |3411	|5325	|3087			|0					|19984		|0			|0		 			 |0	    				| 	 	     |
|[mod008      ](http://miplib.zib.de/miplib3/miplib3/mod008.mps.gz                                )|MIP    |6		|319	|319			|0					|1562		|0			|0		 			 |0	    				|307.0000	 |		
|[mod010      ](http://miplib.zib.de/miplib3/miplib3/mod010.mps.gz                                )|MIP    |146	|2655	|2655			|0					|13858		|0			|0		 			 |0	    				|6548.0000	 |	
|[mod011      ](http://miplib.zib.de/miplib3/miplib3/mod011.mps.gz                                )|MIP    |4480	|10958	|96				|0					|29839		|0			|0		 			 |0	    				| 	 	     |
|[mod2        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/mod2.gz                 )|LP	    |30895	|28194	|0				|0					|174441	    |0			|0		 			 |0	    				|2.7737371E+7| 
|[model1      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model1.gz               )|LP	    |362	|798	|0				|0					|3028		|0			|0		 			 |0	    				|0.0000	 	 |	
|[model10     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model10.gz              )|LP	    |4400	|15447	|0				|0					|152025		|0			|0		 			 |0	    				|-154599.6213| 
|[model11     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model11.gz              )|LP	    |7056	|18288	|0				|0					|65523		|0			|0		 			 |0	    				|0.0000	 	 |
|[model2      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model2.gz               )|LP	    |379	|1212	|0				|0					|7716		|0			|0		 			 |0	    				|-7400.4891	 |
|[model3      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model3.gz               )|LP	    |1609	|3840	|0				|0					|24724	    |0			|0		 			 |0	    				|17489.0610	 |
|[model4      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model4.gz               )|LP	    |1337	|4549	|0				|0					|46055	    |0			|0		 			 |0	    				|1112702.4465| 
|[model5      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model5.gz               )|LP	    |1888	|11360	|0				|0					|90235	    |0			|0		 			 |0	    				|-858440.7291| 
|[model6      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model6.gz               )|LP	    |2096	|5001	|0				|0					|28203	    |0			|0		 			 |0	    				|117507.6918 |	 
|[model7      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model7.gz               )|LP	    |3358	|8007	|0				|0					|52721	    |0			|0		 			 |0	    				|49380.0855	 |
|[model8      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model8.gz               )|LP	    |2896	|6464	|0				|0					|25293	    |0			|0		 			 |0	    				|0.0000	 	 |
|[model9      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/model9.gz               )|LP	    |2879	|10257	|0				|0					|60162	    |0			|0		 			 |0	    				|-141123.0936| 
|[modglob     ](http://miplib.zib.de/miplib3/miplib3/modglob.mps.gz                               )|MIP    |291	|422	|98				|0					|1390		|0			|0		 			 |0	    				|2.0740508E+7| 			
|[modszk1     ](http://www.netlib.org/lp/data/modszk1                                             )|LP	    |687	|1620	|0				|0					|4158		|0			|0		 			 |0	    				|320.6197	 |	
|[mondou2     ](http://www.netlib.org/lp/infeas/mondou2                                           )|LP	    |312	|604	|0				|0					|1623		|0			|0		 			 |0	    				| 	 	 	 |	
|[multi       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/multi.gz                )|LP	    |61		|102	|0				|0					|1063		|0			|0		 			 |0	    				|43904.9117	 |
|[n3700       ](http://plato.la.asu.edu/ftp/fctp/n3700.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n3701       ](http://plato.la.asu.edu/ftp/fctp/n3701.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n3702       ](http://plato.la.asu.edu/ftp/fctp/n3702.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n3703       ](http://plato.la.asu.edu/ftp/fctp/n3703.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|29999		|0			|0		 			 |0	    				| 	 	     |
|[n3704       ](http://plato.la.asu.edu/ftp/fctp/n3704.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n3705       ](http://plato.la.asu.edu/ftp/fctp/n3705.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n3706       ](http://plato.la.asu.edu/ftp/fctp/n3706.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n3707       ](http://plato.la.asu.edu/ftp/fctp/n3707.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n3708       ](http://plato.la.asu.edu/ftp/fctp/n3708.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n3709       ](http://plato.la.asu.edu/ftp/fctp/n3709.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n370a       ](http://plato.la.asu.edu/ftp/fctp/n370a.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n370b       ](http://plato.la.asu.edu/ftp/fctp/n370b.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n370c       ](http://plato.la.asu.edu/ftp/fctp/n370c.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n370d       ](http://plato.la.asu.edu/ftp/fctp/n370d.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[n370e       ](http://plato.la.asu.edu/ftp/fctp/n370e.mps.gz                                     )|MIP    |5150	|10000	|5000			|0					|30000		|0			|0		 			 |0	    				| 	 	     |
|[nemsafm     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nemsafm.gz              )|LP	    |334	|2252	|0				|0					|4982		|0			|0		 			 |0	    				|-6792.3743	 |	
|[nemscem     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nemscem.gz              )|LP	    |651	|1570	|0				|0					|5228		|0			|0		 			 |0	    				|89772.3335	 |	
|[nemsemm1    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nemsemm1.gz             )|LP	    |3945	|71413	|0				|0					|1120871	|0			|0		 			 |0	    				|512959.6008 |	 
|[nemsemm2    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nemsemm2.gz             )|LP	    |6943	|42133	|0				|0					|212793	    |0			|0		 			 |0	    				|581079.5709 |	 
|[nemspmm1    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nemspmm1.gz             )|LP	    |2372	|8622	|0				|0					|57961	    |0			|0		 			 |0	    				|-327415.8357| 
|[nemspmm2    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nemspmm2.gz             )|LP	    |2301	|8413	|0				|0					|69838	    |0			|0		 			 |0	    				|-291794.8361| 
|[nemswrld    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nemswrld.gz             )|LP	    |7138	|27174	|0				|0					|193284	    |0			|0		 			 |0	    				|260.3090	 |
|[neos1       ](http://plato.la.asu.edu/ftp/milp/neos1.mps.gz                                     )|MIP    |5020	|2112	|2112			|0					|21600		|0			|0		 			 |0	    				|19.0000	 |	 
|[neos2       ](http://plato.la.asu.edu/ftp/milp/neos2.mps.gz                                     )|MIP    |1103	|2101	|1040			|0					|7330		|0			|0		 			 |0	    				|454.8647	 |
|[neos3       ](http://plato.la.asu.edu/ftp/milp/neos3.mps.gz                                     )|MIP    |1442	|2747	|1360			|0					|9585		|0			|0		 			 |0	    				| 	 	     |
|[neos4       ](http://plato.la.asu.edu/ftp/milp/neos4.mps.gz                                     )|MIP    |38577	|22884	|17172			|0					|116040		|0			|0		 			 |0	    				|-4.86034E+10| 
|[neos5       ](http://plato.la.asu.edu/ftp/milp/neos5.mps.gz                                     )|MIP    |36702	|21124	|17136			|0					|109068		|0			|0		 			 |0	    				|-4.86034E+10| 
|[neos6       ](http://plato.la.asu.edu/ftp/milp/neos6.mps.gz                                     )|MIP    |1036	|8786	|8340			|0					|252169		|0			|0		 			 |0	    				| 	 	     |
|[neos7       ](http://plato.la.asu.edu/ftp/milp/neos7.mps.gz                                     )|MIP    |1994	|1556	|424			|30					|5472		|0			|0		 			 |0	    				| 	 	 	 |
|[nesm        ](http://www.netlib.org/lp/data/nesm                                                )|LP	    |662	|2923	|0				|0					|13988		|0			|0		 			 |0	    				|1.4076034E+7| 
|[nl          ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nl.gz                   )|LP	    |7039	|9718	|0				|0					|49250	    |0			|0		 			 |0	    				|1229264.0078| 
|[noswot      ](http://miplib.zib.de/miplib3/miplib3/noswot.mps.gz                                )|MIP    |182	|128	|75				|25					|760		|0			|0		 			 |0	    				| 	 	 	 |		
|[nql201      ](                                                                                  )|QCP    |162141	|161606	|0				|0					|766750		|40401		|2		 			 |2	    				| 	 	     |
|[nql30       ](                                                                                  )|QCP    |3681	|3602	|0				|0					|16972		|900		|2		 			 |2	    				| 	 	 	 |
|[nsct1       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nsct1.gz                )|LP	    |22901	|14981	|0				|0					|667499	    |0			|0		 			 |0	    				|-3.892244E+7| 
|[nsct2       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nsct2.gz                )|LP	    |23003	|14981	|0				|0					|686396	    |0			|0		 			 |0	    				|-3.717508E+7| 
|[nsic1       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nsic1.gz                )|LP	    |451	|463	|0				|0					|3063		|0			|0		 			 |0	    				|-9.168554E+6| 	
|[nsic2       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nsic2.gz                )|LP	    |465	|463	|0				|0					|3225		|0			|0		 			 |0	    				|-8.203512E+6| 	
|[nsir1       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nsir1.gz                )|LP	    |4407	|5717	|0				|0					|141102	    |0			|0		 			 |0	    				|-2.890903E+7| 
|[nsir2       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nsir2.gz                )|LP	    |4453	|5717	|0				|0					|152746	    |0			|0		 			 |0	    				|-2.717559E+7| 
|[nug05       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nug05.gz                )|LP	    |210	|225	|0				|0					|1190		|0			|0		 			 |0	    				|50.0000	 |	 	
|[nug06       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nug06.gz                )|LP	    |372	|486	|0				|0					|2532		|0			|0		 			 |0	    				|86.0000	 |	 	
|[nug07       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nug07.gz                )|LP	    |602	|931	|0				|0					|4886		|0			|0		 			 |0	    				|148.0000	 |	
|[nug08       ](http://plato.la.asu.edu/ftp/milp/nug08.mps.gz                                     )|MIP    |912	|1632	|0				|1632				|8304		|0			|0		 			 |0	    				| 	 	 	 |
|[nug12       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nug12.gz                )|LP	    |3192	|8856	|0				|0					|44244	    |0			|0		 			 |0	    				| 	 	     |
|[nug15       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nug15.gz                )|LP	    |6330	|22275	|0				|0					|110700	    |0			|0		 			 |0	    				| 	 	     |
|[nug20       ](http://plato.la.asu.edu/ftp/lptestset/nug/nug20.gz                                )|LP	    |15240	|72600	|0				|0					|358380	    |0			|0		 			 |0	    				| 	 	     |
|[nug30       ](http://plato.la.asu.edu/ftp/lptestset/nug/nug30.gz                                )|LP	    |52260	|379350	|0				|0					|1822710	|0			|0		 			 |0	    				| 	 	     |
|[nw04        ](http://miplib.zib.de/miplib3/miplib3/nw04.mps.gz                                  )|MIP    |36		|87482	|87482			|0					|724148		|0			|0		 			 |0	    				|16862.0000	 |
|[nw14        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/nw14.gz                 )|LP	    |73		|123409	|0				|0					|1028319	|0			|0		 			 |0	    				|61844.0000	 |
|[orna1       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/orna1.gz                )|LP	    |882	|882	|0				|0					|3990		|0			|0		 			 |0	    				| 	 	 	 |
|[orna2       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/orna2.gz                )|LP	    |882	|882	|0				|0					|3990		|0			|0		 			 |0	    				| 	 	 	 |
|[orna3       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/orna3.gz                )|LP	    |882	|882	|0				|0					|3990		|0			|0		 			 |0	    				| 	 	 	 |
|[orna4       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/orna4.gz                )|LP	    |882	|882	|0				|0					|3990		|0			|0		 			 |0	    				| 	 	 	 |
|[orna7       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/orna7.gz                )|LP	    |882	|882	|0				|0					|3990		|0			|0		 			 |0	    				| 	 	 	 |
|[orswq2      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/orswq2.gz               )|LP	    |80		|80		|0				|0					|344		|0			|0		 			 |0	    				|-0.1846	 |	 
|[osa-07      ](http://www.netlib.org/lp/data/kennington/osa-07.gz                                )|LP	    |1118	|23949	|0				|0					|167643	    |0			|0		 			 |0	    				|535722.5173 |	 
|[osa-14      ](http://www.netlib.org/lp/data/kennington/osa-14.gz                                )|LP	    |2337	|52460	|0				|0					|367220	    |0			|0		 			 |0	    				|1106462.8447| 
|[osa-30      ](http://www.netlib.org/lp/data/kennington/osa-30.gz                                )|LP	    |4350	|100024	|0				|0					|700160	    |0			|0		 			 |0	    				|2142139.8732| 
|[osa-60      ](http://www.netlib.org/lp/data/kennington/osa-60.gz                                )|LP	    |10280	|232966	|0				|0					|1630758	|0			|0		 			 |0	    				|4044072.5032| 
|[p0033       ](http://miplib.zib.de/miplib3/miplib3/p0033.mps.gz                                 )|MIP    |16		|33		|33				|0					|131		|0			|0		 			 |0	    				|3089.0000	 |	
|[p0040       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/p0040.gz                )|LP	    |23		|40		|0				|0					|150		|0			|0		 			 |0	    				|61796.5451	 |
|[p010        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/p010.gz                 )|LP	    |10090	|19000	|0				|0					|136910	    |0			|0		 			 |0	    				|1115047.9151| 
|[p0201       ](http://miplib.zib.de/miplib3/miplib3/p0201.mps.gz                                 )|MIP    |133	|201	|201			|0					|2124		|0			|0		 			 |0	    				|7615.0000	 |			
|[p0282       ](http://miplib.zib.de/miplib3/miplib3/p0282.mps.gz                                 )|MIP    |241	|282	|282			|0					|2248		|0			|0		 			 |0	    				| 	 	 	 |		
|[p0291       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/p0291.gz                )|LP	    |252	|291	|0				|0					|2321		|0			|0		 			 |0	    				|1705.1288	 |	
|[p05         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/p05.gz                  )|LP	    |5090	|9500	|0				|0					|68455		|0			|0		 			 |0	    				|556000.2766 |	 
|[p0548       ](http://miplib.zib.de/miplib3/miplib3/p0548.mps.gz                                 )|MIP    |176	|548	|548			|0					|2127		|0			|0		 			 |0	    				|8691.0000	 |			
|[p19         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/p19.gz                  )|LP	    |284	|586	|0				|0					|5891		|0			|0		 			 |0	    				|249976.1750 |	 		
|[p2756       ](http://miplib.zib.de/miplib3/miplib3/p2756.mps.gz                                 )|MIP    |755	|2756	|2756			|0					|11103		|0			|0		 			 |0	    				|3124.0000	 |	
|[p6000       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/p6000.gz                )|LP	    |2095	|5872	|0				|0					|23603	    |0			|0		 			 |0	    				|-2.351871E+6| 
|[pang        ](http://www.netlib.org/lp/infeas/pang                                              )|LP	    |361	|460	|0				|0					|2666		|0			|0		 			 |0	    				| 	 	 	 |
|[pcb1000     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pcb1000.gz              )|LP	    |1565	|2428	|0				|0					|22499		|0			|0		 			 |0	    				|56809.4569	 |
|[pcb3000     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pcb3000.gz              )|LP	    |3960	|6810	|0				|0					|63367		|0			|0		 			 |0	    				|137416.4196 |	 
|[pds-02      ](http://www.netlib.org/lp/data/kennington/pds-02.gz                                )|LP	    |2953	|7535	|0				|0					|21252	    |0			|0		 			 |0	    				|2.885786E+10| 
|[pds-06      ](http://www.netlib.org/lp/data/kennington/pds-06.gz                                )|LP	    |9881	|28655	|0				|0					|82269	    |0			|0		 			 |0	    				|2.776104E+10| 
|[pds-10      ](http://www.netlib.org/lp/data/kennington/pds-10.gz                                )|LP	    |16558	|48763	|0				|0					|140063	    |0			|0		 			 |0	    				|2.672709E+10| 
|[pds-100     ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-100.gz                              )|LP	    |156243	|505360	|0				|0					|1390539	|0			|0		 			 |0	    				| 	 	 	 |
|[pds-2       ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-2.gz                                )|LP	    |2953	|7535	|0				|0					|21252	    |0			|0		 			 |0	    				|2.885786E+10| 
|[pds-20      ](http://www.netlib.org/lp/data/kennington/pds-20.gz                                )|LP	    |33874	|105728	|0				|0					|304153	    |0			|0		 			 |0	    				|2.382166E+10| 
|[pds-30      ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-30.gz                               )|LP	    |49944	|154998	|0				|0					|442876	    |0			|0		 			 |0	    				|2.138545E+10| 
|[pds-40      ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-40.gz                        	      )|LP	    |66844	|212859	|0				|0					|605678	    |0			|0		 			 |0	    				|1.885520E+10| 
|[pds-50      ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-50.gz                        	      )|LP	    |83060	|270095	|0				|0					|764161	    |0			|0		 			 |0	    				|1.660353E+10| 
|[pds-60      ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-60.gz                        	      )|LP	    |99431	|329643	|0				|0					|928368	    |0			|0		 			 |0	    				|1.426590E+10| 
|[pds-70      ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-70.gz                        	      )|LP	    |114944	|382311	|0				|0					|1071390	|0			|0		 			 |0	    				|1.224116E+10| 
|[pds-80      ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-80.gz                        	      )|LP	    |129181	|426278	|0				|0					|1187165	|0			|0		 			 |0	    				|1.146908E+10| 
|[pds-90      ](http://plato.la.asu.edu/ftp/lptestset/pds/pds-90.gz                        	      )|LP	    |142823	|466671	|0				|0					|1291579	|0			|0		 			 |0	    				| 	 	     |
|[perold      ](http://www.netlib.org/lp/data/perold                                       	      )|LP	    |625	|1376	|0				|0					|6026		|0			|0		 			 |0	    				|-9380.7553	 |
|[pf2177      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pf2177.gz        	      )|LP	    |9728	|900	|0				|0					|22606		|0			|0		 			 |0	    				|90.0000	 |	 
|[pgp2        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/pgp2.gz       	      )|LP	    |4034	|9220	|0				|0					|25924	    |0			|0		 			 |0	    				|447.3243	 |
|[pilot-ja    ](http://www.netlib.org/lp/data/pilot.ja                                     	      )|LP	    |940	|1988	|0				|0					|14706		|0			|0		 			 |0	    				|-6113.1365	 |
|[pilot-we    ](http://www.netlib.org/lp/data/pilot.we                                     	      )|LP	    |722	|2789	|0				|0					|9218		|0			|0		 			 |0	    				|-2.720108E+6| 
|[pilot       ](http://www.netlib.org/lp/data/pilot                                        	      )|LP	    |1441	|3652	|0				|0					|43220	    |0			|0		 			 |0	    				|-557.4897	 |
|[pilot4      ](http://www.netlib.org/lp/data/pilot4                                       	      )|LP	    |410	|1000	|0				|0					|5145		|0			|0		 			 |0	    				|-2581.1393	 |
|[pilot4i     ](http://www.netlib.org/lp/infeas/pilot4i                                           )|LP	    |410	|1000	|0				|0					|5145		|0			|0		 			 |0	    				| 	 	 	 |
|[pilot87     ](http://www.netlib.org/lp/data/pilot87                                             )|LP	    |2030	|4883	|0				|0					|73804		|0			|0		 			 |0	    				|301.7103	 |
|[pilotnov    ](http://www.netlib.org/lp/data/pilotnov                                     	      )|LP	    |975	|2172	|0				|0					|13129		|0			|0		 			 |0	    				|-4497.2762	 |
|[pk1         ](http://miplib.zib.de/miplib3/miplib3/pk1.mps.gz                                   )|MIP    |45		|86		|55				|0					|916		|0			|0		 			 |0     				|11.0000	 |	 		
|[pldd000b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd000b.gz      	      )|LP	    |3069	|3267	|0				|0					|10762	    |0			|0		 			 |0	    				|2.7433	 	 |
|[pldd001b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd001b.gz      	      )|LP	    |3069	|3267	|0				|0					|10763	    |0			|0		 			 |0	    				|3.8114	 	 |
|[pldd002b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd002b.gz      	      )|LP	    |3069	|3267	|0				|0					|10764	    |0			|0		 			 |0	    				|4.0651	 	 |
|[pldd003b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd003b.gz      	      )|LP	    |3069	|3267	|0				|0					|10765	    |0			|0		 			 |0	    				|4.0349	 	 |
|[pldd004b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd004b.gz      	      )|LP	    |3069	|3267	|0				|0					|10766	    |0			|0		 			 |0	    				|4.1822	 	 |
|[pldd005b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd005b.gz      	      )|LP	    |3069	|3267	|0				|0					|10767	    |0			|0		 			 |0	    				|4.1540	 	 |
|[pldd006b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd006b.gz      	      )|LP	    |3069	|3267	|0				|0					|10768	    |0			|0		 			 |0	    				|4.1824	 	 |
|[pldd007b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd007b.gz      	      )|LP	    |3069	|3267	|0				|0					|10769	    |0			|0		 			 |0	    				|4.0438	 	 |
|[pldd008b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd008b.gz      	      )|LP	    |3069	|3267	|0				|0					|10829	    |0			|0		 			 |0	    				|4.1721	 	 |
|[pldd009b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd009b.gz      	      )|LP	    |3069	|3267	|0				|0					|10832	    |0			|0		 			 |0	    				|4.5432	 	 |
|[pldd010b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd010b.gz      	      )|LP	    |3069	|3267	|0				|0					|10835	    |0			|0		 			 |0	    				|4.8276	 	 |
|[pldd011b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd011b.gz      	      )|LP	    |3069	|3267	|0				|0					|10837	    |0			|0		 			 |0	    				|4.9681	 	 |
|[pldd012b    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/pldd012b.gz      	      )|LP	    |3069	|3267	|0				|0					|10839	    |0			|0		 			 |0	    				|4.6133	 	 |
|[pltexpa2-16 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/pltexpA2-16.gz       )|LP	    |1726	|4540	|0				|0					|7312		|0			|0		 			 |0	     				| 	         |
|[pltexpa2-6  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/pltexpA2-6.gz 	      )|LP	    |686	|1820	|0				|0					|2912		|0			|0		 			 |0	     				| 	         |
|[pltexpa3_16 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/pltexpA3_16.gz       )|LP	    |28350	|74172	|0				|0					|119952		|0			|0		 			 |0	     				| 	         |
|[pltexpa3_6  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/pltexpA3_6.gz  	  )|LP	    |4430	|11612	|0				|0					|18752	    |0			|0		 			 |0	     				| 	         |
|[pltexpa4_6  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/pltexpA4_6.gz  	  )|LP	    |26894	|70364	|0				|0					|113792	    |0			|0		 			 |0	     				| 	         |
|[power       ](                                                                           	      )|LP	    |22		|17		|0				|0					|57		    |0			|0		 			 |0	     				| 	         |
|[pp08a       ](http://miplib.zib.de/miplib3/miplib3/pp08a.mps.gz                          	      )|MIP    |136	|240	|64				|0					|656		|0			|0		 			 |0	    				|7350.0000	 |			
|[pp08acuts   ](http://miplib.zib.de/miplib3/miplib3/pp08aCUTS.mps.gz                      	      )|MIP    |246	|240	|64				|0					|1015		|0			|0		 			 |0	    				|7350.0000	 |		
|[primagaz    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/primagaz.gz      	      )|LP	    |1554	|10836	|0				|0					|32487	    |0			|0		 			 |0	    				|1.0719026E+9| 
|[problem     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/problem.gz              )|LP	    |12		|46		|0				|0					|120		|0			|0		 			 |0	    				|0.0000	 	 |	
|[prod1       ](ftp://ftp.mcs.anl.gov/neos/mip-bench/prod1.mps.gz                          	      )|MIP    |208	|250	|149			|0					|5351		|0			|0		 			 |0	    				|-56.0000	 |			
|[progas      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/progas.gz        	      )|LP	    |1650	|1425	|0				|0					|8722	    |0			|0		 			 |0	    				|760773.2160 |	 
|[q18a13l1    ](                                                                           	      )|QCP    |5501	|5478	|0				|0					|53170		|1369		|2		 			 |2	    				| 	 	     |
|[q30a13l1    ](                                                                           	      )|QCP    |14925	|14886	|0				|0					|146586		|3721		|2		 			 |2	    				| 	 	     |
|[q9a13l1     ](                                                                                  )|QCP    |1457	|1446	|0				|0					|13537		|361		|2		 			 |2	    				| 	 	 	 |	
|[qap08       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/NETLIB/qap08.gz       	      )|LP	    |912	|1632	|0				|0					|8304		|0			|0		 			 |0	    				|203.5000	 |
|[qap10       ](http://plato.la.asu.edu/ftp/milp/qap10.mps.gz                              	      )|MIP    |1820	|4150	|0				|4150				|20810		|0			|0		 			 |0	    				| 	 	     |
|[qap12       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/NETLIB/qap12.gz       	      )|LP	    |3192	|8856	|0				|0					|44244	    |0			|0		 			 |0	    				| 	 	     |
|[qap15       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/NETLIB/qap15.gz       	      )|LP	    |6330	|22275	|0				|0					|110700	    |0			|0		 			 |0	    				| 	 	     |
|[qiu         ](http://miplib.zib.de/miplib3/miplib3/qiu.mps.gz                                   )|MIP    |1192	|840	|48				|0					|3744		|0			|0		 			 |0	    				|-132.8731	 |		
|[qiulp       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/qiulp.gz         	      )|LP	    |1192	|840	|0				|0					|3744		|0			|0		 			 |0	    				|-931.6389	 |
|[qnet1       ](http://miplib.zib.de/miplib3/miplib3/qnet1.mps.gz                          	      )|MIP    |503	|1541	|1288			|129				|4746		|0			|0		 			 |0	    				|16029.6927	 |		
|[qnet1_o     ](http://miplib.zib.de/miplib3/miplib3/qnet1_o.mps.gz                               )|MIP    |456	|1541	|1288			|129				|4338		|0			|0		 			 |0	    				|16029.6927	 |			
|[qssp120l1   ](                                                                           	      )|QCP    |72965	|87848	|0				|0					|372978		|14641		|3		 			 |3	    				| 	 	     |
|[qssp180l1   ](                                                                           	      )|QCP    |163445	|196568	|0				|0					|840258		|32761		|3		 			 |3	    				| 	 	     |
|[qssp18l1    ](                                                                           	      )|QCP    |1769	|2168	|0				|0					|8226		|361		|3		 			 |3	    				| 	 	 	 |
|[qssp30l1    ](                                                                           	      )|QCP    |4745	|5768	|0				|0					|23058		|961		|3		 			 |3	    				| 	 	 	 |
|[qssp60l1    ](                                                                           	      )|QCP    |18485	|22328	|0				|0					|92898		|3721		|3		 			 |3	    				| 	 	     |
|[qssp90l1    ](                                                                           	      )|QCP    |41225	|49688	|0				|0					|209538		|8281		|3		 			 |3	    				| 	 	     |
|[qt120a13l1  ](                                                                           	      )|QCP    |73044	|73207	|0				|0					|419567		|14641		|2		 			 |2	    				| 	 	     |
|[qt12a13l1   ](                                                                           	      )|QCP    |828	|847	|0				|0					|4379		|169		|2		 			 |2	    				| 	 	 	 |		
|[qt180a13l1  ](                                                                           	      )|QCP    |163564	|163807	|0				|0					|942547		|32761		|2		 			 |2	    				| 	 	     |
|[qt18a13l1   ](                                                                           	      )|QCP    |1780	|1807	|0				|0					|9697		|361		|2		 			 |2	    				| 	 	 	 |
|[qt30a13l1   ](                                                                           	      )|QCP    |4764	|4807	|0				|0					|26597		|961		|2		 			 |2	    				| 	 	 	 |
|[qt60a13l1   ](                                                                           	      )|QCP    |18524	|18607	|0				|0					|105387		|3721		|2		 			 |2	    				| 	 	     |
|[qt90a13l1   ](                                                                           	      )|QCP    |41284	|41407	|0				|0					|236377		|8281		|2		 			 |2	    				| 	 	     |
|[qt9a13l1    ](                                                                           	      )|QCP    |487	|502	|0				|0					|2503		|100		|2		 			 |2	    				| 	 	 	 |		
|[q60a13l1    ](                                                                           	      )|QCP    |58645	|58566	|0				|0					|350358		|14641		|2		 			 |2	    				| 	 	     |
|[qual        ](http://www.netlib.org/lp/infeas/qual                                       	      )|LP	    |323	|464	|0				|0					|1714		|0			|0		 			 |0	    				| 	 	 	 |
|[r05         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/r05.gz                  )|LP	    |5190	|9500	|0				|0					|113455		|0			|0		 			 |0	    				|557831.8590 |	 
|[rail2586    ](http://plato.la.asu.edu/ftp/lptestset/rail/rail2586.gz                     	      )|LP	    |2586	|920683	|0				|0					|8929459	|0			|0		 			 |0	    				| 	 	     |
|[rail4284    ](http://plato.la.asu.edu/ftp/lptestset/rail/rail4284.gz                     	      )|LP	    |4284	|1092610|0				|0					|12372358	|0			|0		 			 |0	    				| 	 	     |
|[rail507     ](http://plato.la.asu.edu/ftp/lptestset/rail/rail507.gz                             )|LP	    |507	|63009	|0				|0					|472358		|0			|0		 			 |0	    				|172.1456	 |	
|[rail516     ](http://plato.la.asu.edu/ftp/lptestset/rail/rail516.gz                             )|LP	    |516	|47311	|0				|0					|362207		|0			|0		 			 |0	    				|182.0000	 |	
|[rail582     ](http://plato.la.asu.edu/ftp/lptestset/rail/rail582.gz                             )|LP	    |582	|55515	|0				|0					|457223		|0			|0		 			 |0	    				|209.7122	 |	
|[ran10x10a   ](http://plato.la.asu.edu/ftp/fctp/ran10x10a.mps.gz                          	      )|MIP    |120	|200	|100			|0					|600		|0			|0		 			 |0	    				|1499.0000	 |				
|[ran10x10b   ](http://plato.la.asu.edu/ftp/fctp/ran10x10b.mps.gz                          	      )|MIP    |120	|200	|100			|0					|600		|0			|0		 			 |0	    				|3073.0000	 |				
|[ran10x10c   ](http://plato.la.asu.edu/ftp/fctp/ran10x10c.mps.gz                          	      )|MIP    |120	|200	|100			|0					|600		|0			|0		 			 |0	    				|13007.0000	 |				
|[ran10x12    ](http://plato.la.asu.edu/ftp/fctp/ran10x12.mps.gz                           	      )|MIP    |142	|240	|120			|0					|720		|0			|0		 			 |0	    				|2714.0000	 |				
|[ran10x26    ](http://plato.la.asu.edu/ftp/fctp/ran10x26.mps.gz                           	      )|MIP    |296	|520	|260			|0					|1560		|0			|0		 			 |0	    				|4270.0000	 |			
|[ran12x12    ](http://plato.la.asu.edu/ftp/fctp/ran12x12.mps.gz                           	      )|MIP    |168	|288	|144			|0					|864		|0			|0		 			 |0	    				|2291.0000	 |				
|[ran12x21    ](http://plato.la.asu.edu/ftp/fctp/ran12x21.mps.gz                           	      )|MIP    |285	|504	|252			|0					|1512		|0			|0		 			 |0	    				|3664.0000	 |			
|[ran13x13    ](http://plato.la.asu.edu/ftp/fctp/ran13x13.mps.gz                           	      )|MIP    |195	|338	|169			|0					|1014		|0			|0		 			 |0	    				|3252.0000	 |			
|[ran14x18    ](http://plato.la.asu.edu/ftp/fctp/ran14x18.mps.gz                           	      )|MIP    |284	|504	|252			|0					|1512		|0			|0		 			 |0	    				| 	 	 	 |		
|[ran16x16    ](http://plato.la.asu.edu/ftp/fctp/ran16x16.mps.gz                           	      )|MIP    |288	|512	|256			|0					|1536		|0			|0		 			 |0	    				| 	 	 	 |		
|[ran17x17    ](http://plato.la.asu.edu/ftp/fctp/ran17x17.mps.gz                           	      )|MIP    |323	|578	|289			|0					|1734		|0			|0		 			 |0	    				|1373.0000	 |			
|[ran4x64     ](http://plato.la.asu.edu/ftp/fctp/ran4x64.mps.gz                                   )|MIP    |324	|512	|256			|0					|1536		|0			|0		 			 |0	    				|9711.0000	 |				
|[ran6x43     ](http://plato.la.asu.edu/ftp/fctp/ran6x43.mps.gz                                   )|MIP    |307	|516	|258			|0					|1548		|0			|0		 			 |0	    				|6330.0000	 |				
|[ran8x32     ](http://plato.la.asu.edu/ftp/fctp/ran8x32.mps.gz                                   )|MIP    |296	|512	|256			|0					|1536		|0			|0		 			 |0	    				|5247.0000	 |				
|[rat1        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rat1.gz          	      )|LP	    |3136	|9408	|0				|0					|94539	    |0			|0		 			 |0	    				|1999531.6629| 
|[rat5        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rat5.gz             	  )|LP	    |3136	|9408	|0				|0					|143685	    |0			|0		 			 |0	    				|3083707.0104| 
|[rat7a       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rat7a.gz            	  )|LP	    |3136	|9408	|0				|0					|275180	    |0			|0		 			 |0	    				|2074371.4157| 
|[reactor     ](http://www.netlib.org/lp/infeas/reactor                                           )|LP	    |318	|637	|0				|0					|2995		|0			|0		 			 |0	    				| 	 	 	 |	
|[recipe      ](http://www.netlib.org/lp/data/recipe                                          	  )|LP	    |91		|180	|0				|0					|752		|0			|0		 			 |0	    				|-266.6160	 |	
|[refine      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/refine.gz           	  )|LP	    |29		|33		|0				|0					|155		|0			|0		 			 |0	    				|-392691.8000| 
|[refinery    ](http://www.netlib.org/lp/infeas/refinery                                      	  )|LP	    |323	|464	|0				|0					|1694		|0			|0		 			 |0	    				| 	 	 	 |
|[rentacar    ](http://miplib.zib.de/miplib3/miplib3/rentacar.mps.gz                          	  )|MIP    |6803	|9557	|55				|0					|42019		|0			|0		 			 |0	    				|2.8882471E+7| 
|[rgn         ](http://miplib.zib.de/miplib3/miplib3/rgn.mps.gz                                   )|MIP    |24		|180	|100			|0					|540		|0			|0		 			 |0	    				|82.2000	 |	 				
|[rlfddd      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rlfddd.gz           	  )|LP	    |4050	|57471	|0				|0					|310044	    |0			|0		 			 |0	    				|-13.0000	 |
|[rlfdual     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rlfdual.gz              )|LP	    |8052	|66918	|0				|0					|328891		|0			|0		 			 |0	    				|-1.0000	 |	 
|[rlfprim     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rlfprim.gz              )|LP	    |58866	|8052	|0				|0					|265975		|0			|0		 			 |0	    				|1.0000	 	 |
|[rlp2        ](ftp://ftp.mcs.anl.gov/neos/mip-bench/rlp2.mps.gz                              	  )|MIP    |68		|451	|450			|0					|5396		|0			|0		 			 |0	    				|19.0000	 |	 		
|[rosen1      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rosen1.gz           	  )|LP	    |520	|1024	|0				|0					|24231		|0			|0		 			 |0	    				|-27612.7367 |	 
|[rosen10     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rosen10.gz              )|LP	    |2056	|4096	|0				|0					|65988		|0			|0		 			 |0	    				|-174215.4561| 
|[rosen2      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rosen2.gz           	  )|LP	    |1032	|2048	|0				|0					|48432	    |0			|0		 			 |0	    				|-54417.5098 |	 
|[rosen7      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rosen7.gz           	  )|LP	    |264	|512	|0				|0					|8247		|0			|0		 			 |0	    				|-20329.7018 |	 	
|[rosen8      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/rosen8.gz           	  )|LP	    |520	|1024	|0				|0					|16498		|0			|0		 			 |0	    				|-42122.6795 |	 
|[rout        ](http://miplib.zib.de/miplib3/miplib3/rout.mps.gz                              	  )|MIP    |291	|556	|300			|15					|2432		|0			|0		 			 |0	    				| 	 	 	 |		
|[route       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/route.gz            	  )|LP	    |20894	|23923	|0				|0					|210025	    |0			|0		 			 |0	    				|5941.6503	 |
|[sc105       ](http://www.netlib.org/lp/data/sc105                                           	  )|LP	    |105	|103	|0				|0					|281		|0			|0		 			 |0	    				|-52.2021	 |		
|[sc205-2r-100](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-100.gz  	  )|LP	    |2213	|2214	|0				|0					|6031	    |0			|0		 			 |0	    				|-10.0705	 |
|[sc205-2r-16 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-16.gz       )|LP	    |365	|366	|0				|0					|991		|0			|0		 			 |0	    				|-55.3877	 |			
|[sc205-2r-1600(]http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-1600.gz 	  )|LP	    |35213	|35214	|0				|0					|96031	    |0			|0		 			 |0	    				|0.0000	 	 |
|[sc205-2r-200](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-200.gz  	  )|LP	    |4413	|4414	|0				|0					|12031	    |0			|0		 			 |0	    				|-10.0705	 |
|[sc205-2r-27 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-27.gz       )|LP	    |607	|608	|0				|0					|1651		|0			|0		 			 |0	    				|-15.1057	 |		
|[sc205-2r-32 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-32.gz       )|LP	    |717	|718	|0				|0					|1951		|0			|0		 			 |0	    				|-55.3877	 |		
|[sc205-2r-4  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-4.gz    	  )|LP	    |35		|36		|0				|0					|0		    |0			|0		 			 |0	    				|0.0000	 	 |
|[sc205-2r-400](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-400.gz  	  )|LP	    |8813	|8814	|0				|0					|24031	    |0			|0		 			 |0	    				|-10.0705	 |
|[sc205-2r-50 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-50.gz       )|LP	    |1113	|1114	|0				|0					|3031		|0			|0		 			 |0	    				|-30.7641	 |
|[sc205-2r-64 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-64.gz       )|LP	    |1421	|1422	|0				|0					|3871		|0			|0		 			 |0	    				|-55.3877	 |
|[sc205-2r-8  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-8.gz    	  )|LP	    |189	|190	|0				|0					|511		|0			|0		 			 |0	    				|-60.4230	 |		
|[sc205-2r-800](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sc205-2r-800.gz  	  )|LP	    |17613	|17614	|0				|0					|48031	    |0			|0		 			 |0	    				|-10.0705	 |
|[sc205       ](http://www.netlib.org/lp/data/sc205                                           	  )|LP	    |205	|203	|0				|0					|552		|0			|0		 			 |0	    				|-52.2021	 |		
|[sc50a       ](http://www.netlib.org/lp/data/sc50a                                           	  )|LP	    |50		|48		|0				|0					|131		|0			|0		 			 |0	    				|-64.5751	 |
|[sc50b       ](http://www.netlib.org/lp/data/sc50b                                           	  )|LP	    |50		|48		|0				|0					|119		|0			|0		 			 |0	    				|-70.0000	 |
|[scagr25     ](http://www.netlib.org/lp/data/scagr25                                             )|LP	    |471	|500	|0				|0					|2029		|0			|0		 			 |0	    				|-1.475343E+7| 		
|[scagr7-2b-16](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2b-16.gz  	  )|LP	    |623	|660	|0				|0					|2685		|0			|0		 			 |0	    				|-832902.1508| 	
|[scagr7-2b-4 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2b-4.gz       )|LP	    |167	|180	|0				|0					|717		|0			|0		 			 |0	    				|-832941.3274| 			
|[scagr7-2b-64](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2b-64.gz  	  )|LP	    |9743	|10260	|0				|0					|42045	    |0			|0		 			 |0	    				|-832901.5479| 
|[scagr7-2c-16](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2c-16.gz  	  )|LP	    |623	|660	|0				|0					|2685		|0			|0		 			 |0	    				|-832260.0342| 	
|[scagr7-2c-4 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2c-4.gz       )|LP	    |167	|180	|0				|0					|717		|0			|0		 			 |0	    				|-832260.0342| 			
|[scagr7-2c-64](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2c-64.gz  	  )|LP	    |2447	|2580	|0				|0					|10557	    |0			|0		 			 |0	    				|-818719.6055| 
|[scagr7-2r-108](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-108.gz 	  )|LP	    |4119	|4340	|0				|0					|17665	    |0			|0		 			 |0	    				|-834038.8492| 
|[scagr7-2r-16](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-16.gz  	  )|LP	    |623	|660	|0				|0					|2685		|0			|0		 			 |0	    				|-832902.1512| 	
|[scagr7-2r-216](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-216.gz 	  )|LP	    |8223	|8660	|0				|0					|35269	    |0			|0		 			 |0	    				|-834038.8492| 
|[scagr7-2r-27](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-27.gz  	  )|LP	    |1041	|1100	|0				|0					|4489	    |0			|0		 			 |0	    				|-833543.8170| 
|[scagr7-2r-32 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-32.gz  	  )|LP	    |1231	|1300	|0				|0					|5309	    |0			|0		 			 |0	    				|-832902.0936| 
|[scagr7-2r-4  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-4.gz      )|LP	    |167	|180	|0				|0					|717		|0			|0		 			 |0	    				|-832902.1508| 			
|[scagr7-2r-432](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-432.gz 	  )|LP	    |16431	|17300	|0				|0					|70477	    |0			|0		 			 |0	    				|-834029.7738| 
|[scagr7-2r-54 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-54.gz  	  )|LP	    |2067	|2180	|0				|0					|8917	    |0			|0		 			 |0	    				|-833834.1039| 
|[scagr7-2r-64 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-64.gz  	  )|LP	    |2447	|2580	|0				|0					|10557	    |0			|0		 			 |0	    				|-832902.0434| 
|[scagr7-2r-8  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-8.gz      )|LP	    |319	|340	|0				|0					|1373		|0			|0		 			 |0	    				|-832902.1508| 		
|[scagr7-2r-864](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scagr7-2r-864.gz 	  )|LP	    |32847	|34580	|0				|0					|140893	    |0			|0		 			 |0	    				|-834376.0991| 
|[scagr7       ](http://www.netlib.org/lp/data/scagr7                                          	  )|LP	    |129	|140	|0				|0					|553		|0			|0		 			 |0	    				|-2.331390E+6| 		
|[scfxm1-2b-16 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2b-16.gz  	  )|LP	    |2460	|3714	|0				|0					|14052	    |0			|0		 			 |0	    				|2877.5639	 |
|[scfxm1-2b-4  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2b-4.gz      )|LP	    |684	|1014	|0				|0					|4032		|0			|0		 			 |0	    				|2875.9834	 |	
|[scfxm1-2b-64 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2b-64.gz  	  )|LP	    |19036	|28914	|0				|0					|107572	    |0			|0		 			 |0	    				|2877.5639	 |
|[scfxm1-2c-4  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2c-4.gz      )|LP	    |684	|1014	|0				|0					|4032		|0			|0		 			 |0	    				|2875.9834	 |	
|[scfxm1-2r-128](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-128.gz 	  )|LP	    |19036	|28914	|0				|0					|107572	    |0			|0		 			 |0	    				|2891.7061	 |
|[scfxm1-2r-16 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-16.gz  	  )|LP	    |2460	|3714	|0				|0					|14052	    |0			|0		 			 |0	    				|2877.5639	 |
|[scfxm1-2r-256](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-256.gz 	  )|LP	    |37980	|57714	|0				|0					|214452	    |0			|0		 			 |0	    				|2891.7061	 |
|[scfxm1-2r-27 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-27.gz  	  )|LP	    |4088	|6189	|0				|0					|23237	    |0			|0		 			 |0	    				|2886.9646	 |
|[scfxm1-2r-32 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-32.gz  	  )|LP	    |4828	|7314	|0				|0					|27412	    |0			|0		 			 |0	    				|2877.5639	 |
|[scfxm1-2r-4  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-4.gz      )|LP	    |684	|1014	|0				|0					|4032		|0			|0		 			 |0	    				|2877.5639	 |	
|[scfxm1-2r-64 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-64.gz  	  )|LP	    |9564	|14514	|0				|0					|54132	    |0			|0		 			 |0	    				|2877.5639	 |
|[scfxm1-2r-8  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-8.gz      )|LP	    |1276	|1914	|0				|0					|7372		|0			|0		 			 |0	    				|2877.5639	 |
|[scfxm1-2r-96 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scfxm1-2r-96.gz  	  )|LP	    |14300	|21714	|0				|0					|80852	    |0			|0		 			 |0	    				|2891.7061	 |
|[scfxm1       ](http://www.netlib.org/lp/data/scfxm1                                          	  )|LP	    |330	|457	|0				|0					|2612		|0			|0		 			 |0	    				|18416.7590	 |	
|[scfxm2       ](http://www.netlib.org/lp/data/scfxm2                                          	  )|LP	    |660	|914	|0				|0					|5229		|0			|0		 			 |0	    				|36660.2616	 |	
|[scfxm3       ](http://www.netlib.org/lp/data/scfxm3                                          	  )|LP	    |990	|1371	|0				|0					|7846		|0			|0		 			 |0	    				|54901.2545	 |
|[scorpion     ](http://www.netlib.org/lp/data/scorpion                                        	  )|LP	    |388	|358	|0				|0					|1708		|0			|0		 			 |0	    				|1878.1248	 |	
|[scrs8-2b-16  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2b-16.gz      )|LP	    |476	|645	|0				|0					|1955		|0			|0		 			 |0	    				|112.1043	 |		
|[scrs8-2b-4   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2b-4.gz    	  )|LP	    |140	|189	|0				|0					|551		|0			|0		 			 |0	    				|112.1043	 |		
|[scrs8-2b-64  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2b-64.gz      )|LP	    |1820	|2469	|0				|0					|7571		|0			|0		 			 |0	    				|1121.4512	 |
|[scrs8-2c-16  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2c-16.gz      )|LP	    |476	|645	|0				|0					|1955		|0			|0		 			 |0	    				|112.4317	 |		
|[scrs8-2c-32  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2c-32.gz      )|LP	    |924	|1253	|0				|0					|3827		|0			|0		 			 |0	    				|112.1562	 |	
|[scrs8-2c-4   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2c-4.gz    	  )|LP	    |140	|189	|0				|0					|551		|0			|0		 			 |0	    				|112.1043	 |		
|[scrs8-2c-64  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2c-64.gz      )|LP	    |1820	|2469	|0				|0					|7571		|0			|0		 			 |0	    				|111.8812	 |
|[scrs8-2c-8   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2c-8.gz    	  )|LP	    |252	|341	|0				|0					|1019		|0			|0		 			 |0	    				|112.4159	 |	
|[scrs8-2r-128 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-128.gz  	  )|LP	    |3612	|4901	|0				|0					|15059	    |0			|0		 			 |0	    				|1177.3450	 |
|[scrs8-2r-16  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-16.gz      )|LP	    |476	|645	|0				|0					|1955		|0			|0		 			 |0	    				|123.1766	 |		
|[scrs8-2r-256 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-256.gz  	  )|LP	    |7196	|9765	|0				|0					|30035	    |0			|0		 			 |0	    				|1144.1606	 |
|[scrs8-2r-27  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-27.gz      )|LP	    |784	|1063	|0				|0					|3242		|0			|0		 			 |0	    				|587.1664	 |	
|[scrs8-2r-32  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-32.gz      )|LP	    |924	|1253	|0				|0					|3827		|0			|0		 			 |0	    				|123.1766	 |	
|[scrs8-2r-4   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-4.gz    	  )|LP	    |140	|189	|0				|0					|551		|0			|0		 			 |0	    				|123.1766	 |		
|[scrs8-2r-512 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-512.gz  	  )|LP	    |14364	|19493	|0				|0					|59987	    |0			|0		 			 |0	    				|1074.0993	 |
|[scrs8-2r-64  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-64.gz      )|LP	    |1820	|2469	|0				|0					|7571		|0			|0		 			 |0	    				|123.1766	 |
|[scrs8-2r-64b ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-64b.gz  	  )|LP	    |1820	|2469	|0				|0					|7571	    |0			|0		 			 |0	    				|1346.0963	 |
|[scrs8-2r-8   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scrs8-2r-8.gz    	  )|LP	    |252	|341	|0				|0					|1019		|0			|0		 			 |0	    				|1122.9708	 |	
|[scrs8        ](http://www.netlib.org/lp/data/scrs8                                           	  )|LP	    |490	|1169	|0				|0					|4029		|0			|0		 			 |0	    				|904.2970	 |
|[scsd1        ](http://www.netlib.org/lp/data/scsd1                                           	  )|LP	    |77		|760	|0				|0					|3148		|0			|0		 			 |0	    				|8.6667	 	 |
|[scsd6        ](http://www.netlib.org/lp/data/scsd6                                           	  )|LP	    |147	|1350	|0				|0					|5666		|0			|0		 			 |0	    				|50.5000	 |	 
|[scsd8-2b-16  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2b-16.gz      )|LP	    |330	|2310	|0				|0					|9480		|0			|0		 			 |0	    				|27.5000	 |	 	
|[scsd8-2b-4   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2b-4.gz    	  )|LP	    |90		|630	|0				|0					|2520		|0			|0		 			 |0	    				|15.2500	 |	 
|[scsd8-2b-64  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2b-64.gz      )|LP	    |5130	|35910	|0				|0					|148680		|0			|0		 			 |0	    				|15.9987	 |	 
|[scsd8-2c-16  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2c-16.gz      )|LP	    |330	|2310	|0				|0					|9480		|0			|0		 			 |0	    				|15.0000	 |	 	
|[scsd8-2c-4   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2c-4.gz    	  )|LP	    |90		|630	|0				|0					|2520		|0			|0		 			 |0	    				|15.0000	 |	 
|[scsd8-2c-64  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2c-64.gz      )|LP	    |5130	|35910	|0				|0					|148680		|0			|0		 			 |0	    				|14.9992	 |	 
|[scsd8-2r-108 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-108.gz  	  )|LP	    |2170	|15190	|0				|0					|62840	    |0			|0		 			 |0	    				|23.7000	 |	 
|[scsd8-2r-16  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-16.gz      )|LP	    |330	|2310	|0				|0					|9480		|0			|0		 			 |0	    				|15.9995	 |		
|[scsd8-2r-216 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-216.gz     )|LP	    |4330	|30310	|0				|0					|125480	    |0			|0		 			 |0	    				|23.4000	 |	 
|[scsd8-2r-27  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-27.gz      )|LP	    |550	|3850	|0				|0					|15860		|0			|0		 			 |0	    				|24.0000	 |	 	
|[scsd8-2r-32  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-32.gz      )|LP	    |650	|4550	|0				|0					|18760		|0			|0		 			 |0	    				|15.9990	 |	 	
|[scsd8-2r-4   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-4.gz       )|LP	    |90		|630	|0				|0					|2520		|0			|0		 			 |0	    				|15.5000	 |	 
|[scsd8-2r-432 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-432.gz     )|LP	    |8650	|60550	|0				|0					|250760	    |0			|0		 			 |0	    				|25.8000	 |	 
|[scsd8-2r-54  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-54.gz      )|LP	    |1090	|7630	|0				|0					|31520		|0			|0		 			 |0	    				|23.8500	 |	 
|[scsd8-2r-64  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-64.gz      )|LP	    |1290	|9030	|0				|0					|37320		|0			|0		 			 |0	    				|15.8428	 |	 
|[scsd8-2r-8   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-8.gz       )|LP	    |170	|1190	|0				|0					|4840		|0			|0		 			 |0	    				|16.0000	 |	 
|[scsd8-2r-8b  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/scsd8-2r-8b.gz      )|LP	    |170	|1190	|0				|0					|4840		|0			|0		 			 |0	    				|16.0000	 |	 	
|[scsd8        ](http://www.netlib.org/lp/data/scsd8                                              )|LP	    |397	|2750	|0				|0					|11334		|0			|0		 			 |0	    				|905.0000	 |
|[sctap1-2b-16 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2b-16.gz     )|LP	    |990	|1584	|0				|0					|6928		|0			|0		 			 |0	    				|280.8000	 |
|[sctap1-2b-4  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2b-4.gz      )|LP	    |270	|432	|0				|0					|1840		|0			|0		 			 |0	    				|239.2500	 |		
|[sctap1-2b-64 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2b-64.gz     )|LP	    |15390	|24624	|0				|0					|108688	    |0			|0		 			 |0	    				|484.5600	 |
|[sctap1-2c-16 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2c-16.gz     )|LP	    |990	|1584	|0				|0					|6928		|0			|0		 			 |0	    				|326.4000	 |
|[sctap1-2c-4  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2c-4.gz      )|LP	    |270	|432	|0				|0					|1840		|0			|0		 			 |0	    				|236.2500	 |		
|[sctap1-2c-64 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2c-64.gz     )|LP	    |3390	|5424	|0				|0					|23888	    |0			|0		 			 |0	    				|200.3906	 |
|[sctap1-2r-108](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-108.gz    )|LP	    |6510	|10416	|0				|0					|45936	    |0			|0		 			 |0	    				|248.0000	 |
|[sctap1-2r-16 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-16.gz     )|LP	    |990	|1584	|0				|0					|6928		|0			|0		 			 |0	    				|359.0000	 |
|[sctap1-2r-216](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-216.gz    )|LP	    |12990	|20784	|0				|0					|91728	    |0			|0		 			 |0	    				|249.0000	 |
|[sctap1-2r-27 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-27.gz     )|LP	    |1650	|2640	|0				|0					|11592	    |0			|0		 			 |0	    				|247.5000	 |
|[sctap1-2r-32 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-32.gz     )|LP	    |1950	|3120	|0				|0					|13712	    |0			|0		 			 |0	    				|354.0000	 |
|[sctap1-2r-4  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-4.gz      )|LP	    |270	|432	|0				|0					|1840		|0			|0		 			 |0	    				|280.5000	 |		
|[sctap1-2r-480](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-480.gz    )|LP	    |28830	|46128	|0				|0					|203664	    |0			|0		 			 |0	    				|248.5000	 |
|[sctap1-2r-54 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-54.gz     )|LP	    |3270	|5232	|0				|0					|23040	    |0			|0		 			 |0	    				|249.2500	 |
|[sctap1-2r-64 ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-64.gz     )|LP	    |3870	|6192	|0				|0					|27280	    |0			|0		 			 |0	    				|344.0000	 |
|[sctap1-2r-8  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-8.gz      )|LP	    |510	|816	|0				|0					|3536		|0			|0		 			 |0	    				|360.5000	 |		
|[sctap1-2r-8b ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/sctap1-2r-8b.gz     )|LP	    |510	|816	|0				|0					|3536		|0			|0		 			 |0	    				|250.0000	 |	
|[sctap1       ](http://www.netlib.org/lp/data/sctap1                                             )|LP	    |300	|480	|0				|0					|2052		|0			|0		 			 |0	    				|1412.2500	 |	
|[sctap2       ](http://www.netlib.org/lp/data/sctap2                                             )|LP	    |1090	|1880	|0				|0					|8124	    |0			|0		 			 |0	    				|1724.8071	 |
|[sctap3       ](http://www.netlib.org/lp/data/sctap3                                             )|LP	    |1480	|2480	|0				|0					|10734	    |0			|0		 			 |0	    				|1424.0000	 |
|[seba         ](http://www.netlib.org/lp/data/seba                                               )|LP	    |515	|1028	|0				|0					|4874		|0			|0		 			 |0	    				|13697.4000	 |
|[self         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/infeas/self.gz              )|LP	    |960	|7364	|0				|0					|1148865	|0			|0		 			 |0	    				| 	 	 	 |
|[set1ch       ](http://miplib.zib.de/miplib3/miplib3/set1ch.mps.gz                               )|MIP    |492	|712	|240			|0					|1884		|0			|0		 			 |0	    				|54537.7500	 |			
|[seymour      ](http://miplib.zib.de/miplib3/miplib3/seymour.mps.gz                              )|MIP    |4944	|1372	|1372			|0					|34921		|0			|0		 			 |0	    				| 	 	 	 |
|[seymour1     ](http://plato.la.asu.edu/ftp/milp/seymour1.mps.gz                                 )|MIP    |4944	|1372	|451			|0					|34921		|0			|0		 			 |0	    				| 	 	 	 |
|[seymourl     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/seymourl.gz            )|LP	    |4944	|1372	|0				|0					|34921	    |0			|0		 			 |0	    				|403.8465	 |
|[sgpf5y6      ](http://plato.la.asu.edu/ftp/lptestset/misc/sgpf5y6.gz                            )|LP	    |131228	|112517	|0				|0					|639540		|0			|0		 			 |0	    				| 	 	     |
|[share1b      ](http://www.netlib.org/lp/data/share1b                                            )|LP	    |117	|225	|0				|0					|1182		|0			|0		 			 |0	    				|-76589.3186 |	 		
|[share2b      ](http://www.netlib.org/lp/data/share2b                                            )|LP	    |96		|79		|0				|0					|730		|0			|0		 			 |0	    				|-415.7322	 |	
|[shell        ](http://www.netlib.org/lp/data/shell                                              )|LP	    |536	|1775	|0				|0					|4900		|0			|0		 			 |0	    				|1.2088253E+9| 
|[ship04l      ](http://www.netlib.org/lp/data/ship04l                                            )|LP	    |402	|2118	|0				|0					|8450		|0			|0		 			 |0	    				|1793324.5380| 	
|[ship04s      ](http://www.netlib.org/lp/data/ship04s                                            )|LP	    |402	|1458	|0				|0					|5810		|0			|0		 			 |0	    				|1798714.7004| 	
|[ship08l      ](http://www.netlib.org/lp/data/ship08l                                            )|LP	    |778	|4283	|0				|0					|17085		|0			|0		 			 |0	    				|1909055.2114| 	
|[ship08s      ](http://www.netlib.org/lp/data/ship08s                                            )|LP	    |778	|2387	|0				|0					|9501		|0			|0		 			 |0	    				|1920098.2105| 	
|[ship12l      ](http://www.netlib.org/lp/data/ship12l                                            )|LP	    |1151	|5427	|0				|0					|21597		|0			|0		 			 |0	    				|1470187.9193| 
|[ship12s      ](http://www.netlib.org/lp/data/ship12s                                            )|LP	    |1151	|2763	|0				|0					|10941		|0			|0		 			 |0	    				|1489236.1344| 
|[sierra       ](http://www.netlib.org/lp/data/sierra                                             )|LP	    |1227	|2036	|0				|0					|9252	    |0			|0		 			 |0	    				|0.0000	 	 |
|[slptsk       ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/slptsk.gz              )|LP	    |2861	|3347	|0				|0					|73062	    |0			|0		 			 |0	    				|29.8954	 |	 
|[small000     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small000.gz            )|LP	    |709	|1140	|0				|0					|3359		|0			|0		 			 |0	    				|21.2825	 |	 
|[small001     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small001.gz            )|LP	    |687	|1140	|0				|0					|3481		|0			|0		 			 |0	    				|2007.6324	 |
|[small002     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small002.gz            )|LP	    |713	|1140	|0				|0					|3556		|0			|0		 			 |0	    				|37.6576	 |	 
|[small003     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small003.gz            )|LP	    |711	|1140	|0				|0					|3555		|0			|0		 			 |0	    				|185.4368	 |
|[small004     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small004.gz            )|LP	    |717	|1140	|0				|0					|3593		|0			|0		 			 |0	    				|54.6844	 |	 
|[small005     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small005.gz            )|LP	    |717	|1140	|0				|0					|3627		|0			|0		 			 |0	    				|34.1714	 |	 
|[small006     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small006.gz            )|LP	    |710	|1138	|0				|0					|3634		|0			|0		 			 |0	    				|24.4313	 |	 
|[small007     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small007.gz            )|LP	    |711	|1137	|0				|0					|3689		|0			|0		 			 |0	    				|13.8824	 |	 
|[small008     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small008.gz            )|LP	    |712	|1134	|0				|0					|3652		|0			|0		 			 |0	    				|8.0538	 	 |
|[small009     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small009.gz            )|LP	    |710	|1135	|0				|0					|3640		|0			|0		 			 |0	    				|4.9081	 	 |
|[small010     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small010.gz            )|LP	    |711	|1138	|0				|0					|3637		|0			|0		 			 |0	    				|2.2629	 	 |
|[small011     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small011.gz            )|LP	    |705	|1133	|0				|0					|3615		|0			|0		 			 |0	    				|0.8866	 	 |
|[small012     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small012.gz            )|LP	    |706	|1134	|0				|0					|3624		|0			|0		 			 |0	    				|0.6231	 	 |
|[small013     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small013.gz            )|LP	    |701	|1131	|0				|0					|3599		|0			|0		 			 |0	    				|0.9630	 	 |
|[small014     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small014.gz            )|LP	    |687	|1130	|0				|0					|3537		|0			|0		 			 |0	    				|1.2298	 	 |
|[small015     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small015.gz            )|LP	    |683	|1130	|0				|0					|3577		|0			|0		 			 |0	    				|1.6805	 	 |
|[small016     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/small016.gz            )|LP	    |677	|1130	|0				|0					|3547		|0			|0		 			 |0	    				|2.2031	 	 |
|[south31      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/south31.gz             )|LP	    |18425	|35421	|0				|0					|146919		|0			|0		 			 |0	    				|1.8189402E+9| 
|[stair        ](http://www.netlib.org/lp/data/stair                                              )|LP	    |356	|467	|0				|0					|3857		|0			|0		 			 |0	    				|-251.2670	 |	
|[standata     ](http://www.netlib.org/lp/data/standata                                           )|LP	    |359	|1075	|0				|0					|3038		|0			|0		 			 |0	    				|1257.6995	 |
|[standgub     ](http://www.netlib.org/lp/data/standgub                                           )|LP	    |361	|1184	|0				|0					|3146		|0			|0		 			 |0	    				|1257.6995	 |
|[standmps     ](http://www.netlib.org/lp/data/standmps                                           )|LP	    |467	|1075	|0				|0					|3686		|0			|0		 			 |0	    				|1406.0175	 |
|[stein27      ](http://miplib.zib.de/miplib3/miplib3/stein27.mps.gz                              )|MIP    |118	|27		|27				|0					|405		|0			|0		 			 |0	    				|18.0000	 |	 			
|[stein45      ](http://miplib.zib.de/miplib3/miplib3/stein45.mps.gz                              )|MIP    |331	|45		|45				|0					|1079		|0			|0		 			 |0	    				|30.0000	 |	 		
|[stocfor1     ](http://www.netlib.org/lp/data/stocfor1                                           )|LP	    |117	|111	|0				|0					|474		|0			|0		 			 |0	    				|-41131.9762 |	 		
|[stocfor2     ](http://www.netlib.org/lp/data/stocfor2                                           )|LP	    |2157	|2031	|0				|0					|9492	    |0			|0		 			 |0	    				|-39024.4085 |	 
|[stocfor3     ](http://www.netlib.org/lp/data/stocfor3                                           )|LP	    |16675	|15695	|0				|0					|74004	    |0			|0		 			 |0	    				|-39976.7839 |	 
|[stormg2-125  ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/stormg2-125.gz      )|LP	    |66185	|157496	|0				|0					|529317		|0			|0		 			 |0	    				| 	 	     |
|[stormg2-27   ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/stormg2-27.gz       )|LP	    |14441	|34114	|0				|0					|114973	    |0			|0		 			 |0	    				| 	 	     |
|[stormg2-8    ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/stochlp/stormg2-8.gz        )|LP	    |4409	|10193	|0				|0					|34641	    |0			|0		 			 |0	    				| 	 	     |
|[stormg2_1000 ](http://plato.la.asu.edu/ftp/lptestset/misc/stormg2_1000.gz                       )|LP	    |528185	|1259121|0				|0					|4228817	|0			|0		 			 |0	    				| 	 	 	 |
|[swath        ](http://miplib.zib.de/miplib3/miplib3/swath.mps.gz                                )|MIP    |884	|6805	|6724			|0					|34966		|0			|0		 			 |0	    				| 	 	 	 |
|[swath1       ](http://plato.la.asu.edu/ftp/milp/swath1.mps.gz                                   )|MIP    |884	|6805	|2306			|0					|34966		|0			|0		 			 |0	    				|379.0713	 |	
|[swath2       ](http://plato.la.asu.edu/ftp/milp/swath2.mps.gz                                   )|MIP    |884	|6805	|2406			|0					|34966		|0			|0		 			 |0	    				| 	 	 	 |
|[sws          ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/sws.gz                 )|LP	    |11429	|2467	|0				|0					|11921		|0			|0		 			 |0	    				| 	 	     |
|[t0331-4l     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/t0331-4l.gz            )|LP	    |664	|46915	|0				|0					|477897		|0			|0		 			 |0	    				|29730.0334	 |
|[testbig      ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/testbig.gz             )|LP	    |17613	|31223	|0				|0					|61640		|0			|0		 			 |0	    				|-60.4230	 |
|[truss        ](http://www.netlib.org/lp/data/truss                                              )|LP	    |1000	|8806	|0				|0					|36642	    |0			|0		 			 |0	    				|458815.8472 |	 
|[tuff         ](http://www.netlib.org/lp/data/tuff                                               )|LP	    |333	|587	|0				|0					|4523		|0			|0		 			 |0	    				|0.2921	 	 |	
|[ulevimin     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/ulevimin.gz            )|LP	    |6590	|44605	|0				|0					|162207	    |0			|0		 			 |0	    				|-5.191102E+9| 
|[us04         ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/us04.gz                )|LP	    |163	|28016	|0				|0					|325554		|0			|0		 			 |0	    				|17731.6667	 |
|[vol1         ](http://www.netlib.org/lp/infeas/vol1                                             )|LP	    |323	|464	|0				|0					|1714		|0			|0		 			 |0	    				| 	 	 	 |
|[vpm1         ](http://miplib.zib.de/miplib3/miplib3/vpm1.mps.gz                                 )|MIP    |234	|378	|168			|0					|917		|0			|0		 			 |0	    				|20.0000	 |	 				
|[vpm2         ](http://miplib.zib.de/miplib3/miplib3/vpm2.mps.gz                                 )|MIP    |234	|378	|168			|0					|1085		|0			|0		 			 |0	    				|13.7500	 |	 			
|[vtp-base     ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/NETLIB/vtp-base.gz          )|LP	    |198	|203	|0				|0					|914		|0			|0		 			 |0	    				|129831.4625 |	 		
|[watson_1     ](http://plato.la.asu.edu/ftp/lptestset/misc/watson_1.gz                           )|LP	    |155469	|295650	|0				|0					|880828	    |0			|0		 			 |0	    				| 	 	     |
|[wood1p       ](http://www.netlib.org/lp/data/wood1p                                             )|LP	    |244	|2594	|0				|0					|70216		|0			|0		 			 |0	    				|1.4429	 	 |
|[woodinfe     ](http://www.netlib.org/lp/infeas/woodinfe                                         )|LP	    |35		|89		|0				|0					|209		|0			|0		 			 |0	    				| 	 	     |
|[woodw        ](http://www.netlib.org/lp/data/woodw                                              )|LP	    |1098	|8405	|0				|0					|37478	    |0			|0		 			 |0	    				|1.3045	 	 |
|[world        ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/world.gz               )|LP	    |30736	|29218	|0				|0					|174016	    |0			|0		 			 |0	    				|4.0364873E+7| 
|[zed          ](http://www.sztaki.hu/~meszaros/public_ftp/lptestse/misc/zed.gz                 )|LP	    |116	|43		|0				|0					|594		|0			|0		 			 |0	    				|-15060.6452 |	 		                                                                                                      
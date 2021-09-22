$ontext
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

For a model in the MINLPLib we will collect points. A point might represent a
solution to the relaxed problem or a solution to the MINLP. The point is stored
in a GDX file and can be loaded into the model using command 'execute_loadpoint
'name_p1.gdx'. Additional information about the point is stored in a file called
points.htm. This file might contain the contributor of the point, the solution
value, the algorithm which was used to produce the point, and the CPU time for
finding the point. The points are part of the library. They are indentified by
the model name plus the extension _p1.gdx, _p2.gdx, _p3.gdx, ... (e.g. batch_p1.gdx).

In order to start a model from a certain point you can run gams in the
following way:

	  gams batch u1=loadpoint --pfile batch_p1.gdx 

In case you liked the old point format. You can use the GDX utility gdxdump to 
generate ASCII based point format: 'gdxdump batch_p1.gdx format=gamsbas > batch.p1' 
and then run the model: 'gams batch u1=batch.p1'.
 

The controlling model minlplib.gms
==================================

The library also contains the GAMS model minlplib.gms that helps organizing
the models and points in the MINLPLib. All models are matched with propper
references to contributors, publications, and application areas.

The model also help to create batch execution scripts. For example. the
following piece of GAMS code creates a batch script that runs models that
come from the book "Handbook of Test Problems in Local and Global
Optimization" by Floudas e.a. with solver SBB and NLP subsolver CONOPT2 :

file frs batch run script / rs.bat /;
loop(m$mr(m,"r3"),
  put frs "gams " m.tl:0 " minlp=SBB nlp=CONOPT2 " /;
  put$xp(m) xp.te(m);
  put /;
);
$offtext


$eolcom #

Set s sequence number / 1*273 /;

$set GAMSMODURL  http://www.gams.com/modlib/libhtml
$set MACMINLPURL http://www-unix.mcs.anl.gov/~leyffer/MacMINLP/problems
$set MINOPTURL   http://titan.princeton.edu/MINOPT/modlib/Tests
$set TESTURL     ftp://titan.princeton.edu/TestProblems/chapter12

set m models /
  4stufen
  alan            "GAMS model <a href=%GAMSMODURL%/alan.htm>alan.gms</a> from Gams Model Library"
  batch           "MINOPT model <a href=%MINOPTURL%/kocis88-4a.dat>kocis88-4a.dat</a> from MINOPT Model Library and AMPL model <a href=%MACMINLPURL%/batch.mod>batch.mod</a> from MacMINLP"
  batchdes        "GAMS model <a href=%GAMSMODURL%/batchdes.htm>batchdes.gms</a> from Gams Model Library"
  beuster
  blendgap
  cecil_13
  chp_partload
  contvar   
  csched1         "AMPL model <a href=%MACMINLPURL%/c-sched.mod>c-sched.mod</a> and <a href=%MACMINLPURL%/c-sched1.dat>c-sched1.dat</a> from MacMINLP"
  csched1a
  csched2         "AMPL model <a href=%MACMINLPURL%/c-sched.mod>c-sched.mod</a> and <a href=%MACMINLPURL%/c-sched2.dat>c-sched2.dat</a> from MacMINLP"
  csched2a
  deb10
  deb6
  deb7
  deb8
  deb9
  dosemin2d
  dosemin3d
  du-opt5
  du-opt
  eg_all_s
  eg_disc_s
  eg_disc2_s
  eg_int_s
  elf       
  eniplac
  enpro48
  enpro48pb
  enpro56
  enpro56pb
  ex1221          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.2.1.gms>ex12.2.1.gms</a> from Floudas e.a. Test Problems"
  ex1222          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.2.2.gms>ex12.2.2.gms</a> from Floudas e.a. Test Problems"
  ex1223          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.2.3.gms>ex12.2.3.gms</a> from Floudas e.a. Test Problems"
  ex1223a         "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.2.3.gms>ex12.2.3.gms</a> from Floudas e.a. Test Problems"
  ex1223b         "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.2.3.gms>ex12.2.3.gms</a> from Floudas e.a. Test Problems"
  ex1224          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.2.4.gms>ex12.2.4.gms</a> from Floudas e.a. Test Problems"
  ex1225          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.2.5.gms>ex12.2.5.gms</a> from Floudas e.a. Test Problems"
  ex1226          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.2.6.gms>ex12.2.5.gms</a> from Floudas e.a. Test Problems"
  ex1233          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.3.3.gms>ex12.3.3.gms</a> from Floudas e.a. Test Problems"
  ex1243          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.4.3.gms>ex12.4.3.gms</a> from Floudas e.a. Test Problems"
  ex1244          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.4.4.gms>ex12.4.4.gms</a> from Floudas e.a. Test Problems"
  ex1252          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.5.2.gms>ex12.5.2.gms</a> from Floudas e.a. Test Problems"
  ex1252a         "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.5.2.gms>ex12.5.2.gms</a> from Floudas e.a. Test Problems"
  ex1263          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.6.3.gms>ex12.6.3.gms</a> from Floudas e.a. Test Problems"
  ex1263a         "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.6.3.gms>ex12.6.3.gms</a> from Floudas e.a. Test Problems"
  ex1264          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.6.4.gms>ex12.6.4.gms</a> from Floudas e.a. Test Problems"
  ex1264a         "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.6.4.gms>ex12.6.4.gms</a> from Floudas e.a. Test Problems"
  ex1265          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.6.5.gms>ex12.6.5.gms</a> from Floudas e.a. Test Problems"
  ex1265a         "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.6.5.gms>ex12.6.5.gms</a> from Floudas e.a. Test Problems"
  ex1266          "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.6.6.gms>ex12.6.6.gms</a> from Floudas e.a. Test Problems"
  ex1266a         "MINLP Model of Chapter 12 <a href=%TESTURL%/ex12.6.6.gms>ex12.6.6.gms</a> from Floudas e.a. Test Problems"
  ex3             "MINOPT model <a href=%MINOPTURL%/facility1.dat>duran86-3.dat</a> from MINOPT Model Library"
  ex3pb           "MINOPT model <a href=%MINOPTURL%/facility1.dat>duran86-3.dat</a> from MINOPT Model Library"
  ex4             "MINOPT model <a href=%MINOPTURL%/facility1.dat>duran86-4.dat</a> from MINOPT Model Library"
  fac1            "MINOPT model <a href=%MINOPTURL%/facility1.dat>facility1.dat</a> from MINOPT Model Library"
  fac2 		  "MINOPT model <a href=%MINOPTURL%/facility2.dat>facility2.dat</a> from MINOPT Model Library"
  fac3 		  "MINOPT model <a href=%MINOPTURL%/facility3.dat>facility3.dat</a> from MINOPT Model Library"
  feedtray 	  "GAMS model <a href=%GAMSMODURL%/feedtray.htm>feedtray.gms</a> from Gams Model Library"
  feedtray2 	  "AMPL model <a href=%MACMINLPURL%/feedloc.mod>feedloc.mod</a> from MacMINLP"
  fuel            "GAMS model <a href=%GAMSMODURL%/fuel.htm>feedtray.gms</a> from Gams Model Library"
  fuzzy
  fo7_2           
  fo7
  fo8
  fo9
  fo7_ar25_1
  fo7_ar2_1
  fo7_ar3_1
  fo7_ar4_1
  fo7_ar5_1
  fo8_ar25_1
  fo8_ar2_1
  fo8_ar3_1
  fo8_ar4_1
  fo8_ar5_1
  fo9_ar25_1
  fo9_ar2_1
  fo9_ar3_1
  fo9_ar4_1
  fo9_ar5_1
  gasnet          "GAMS model <a href=%GAMSMODURL%/gasnet.htm>gasnet.gms</a> from Gams Model Library"
  gastrans 	  "GAMS model <a href=%GAMSMODURL%/gastrans.htm>gastrans.gms</a> from Gams Model Library"
  gbd 		  "MINOPT model <a href=%MINOPTURL%/gbd_test.dat>gbd_test.dat</a> from MINOPT Model Library"
  gear 		  "GAMS model <a href=%GAMSMODURL%/gear.htm>gear.gms</a> from Gams Model Library and AMPL model <a href=%MACMINLPURL%/geartrain.mod>geartrain.mod</a> from MacMINLP"
  gear2 	  "GAMS model <a href=%GAMSMODURL%/gear.htm>gear.gms</a> from Gams Model Library and AMPL model <a href=%MACMINLPURL%/geartrain.mod>geartrain.mod</a> from MacMINLP"
  gear3 	  "GAMS model <a href=%GAMSMODURL%/gear.htm>gear.gms</a> from Gams Model Library and AMPL model <a href=%MACMINLPURL%/geartrain.mod>geartrain.mod</a> from MacMINLP"
  gear4 	  "GAMS model <a href=%GAMSMODURL%/gear.htm>gear.gms</a> from Gams Model Library and AMPL model <a href=%MACMINLPURL%/geartrain.mod>geartrain.mod</a> from MacMINLP"
  ghg_1veh
  ghg_2veh
  ghg_3veh
  hda 		  "GAMS model <a href=%GAMSMODURL%/hda.htm>hda.gms</a> from Gams Model Library"
  johnall 
  gkocis 	  "MINOPT model <a href=%MINOPTURL%/kocis87-2.dat>kocis87-2.dat</a> from MINOPT Model Library"
  lop97ic
  lop97icx
  m3
  m6
  m7
  m7_ar25_1
  m7_ar2_1
  m7_ar3_1
  m7_ar4_1
  m7_ar5_1
  mbtd
  meanvarx 	  "GAMS model <a href=%GAMSMODURL%/meanvarx.htm>meanvarx.gms</a> from Gams Model Library"
  meanvarxsc 	  "GAMS model <a href=%GAMSMODURL%/meanvarx.htm>meanvarx.gms</a> from Gams Model Library"
  minlphix 	  "GAMS model <a href=%GAMSMODURL%/minlphi.htm>minlphi.gms</a> from Gams Model Library"
  hmittelman 	  "AMPL model <a href=%MACMINLPURL%/mittelman.mod>mittelman.mod</a> from MacMINLP"
  netmod_dol1
  netmod_dol2
  netmod_kar1
  netmod_kar2
  no7_ar25_1
  no7_ar2_1
  no7_ar3_1
  no7_ar4_1
  no7_ar5_1
  nous1 	  "MINOPT model <a href=%MINOPTURL%/nous1.dat>nous1.dat</a> from MINOPT Model Library"
  nous2 	  "MINOPT model <a href=%MINOPTURL%/nous2.dat>nous2.dat</a> from MINOPT Model Library"
  nuclear104 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and <a href=%MACMINLPURL%/c-reload-q-104.dat>c-reload-q-104.dat</a> from MacMINLP"
  nuclear10a 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and <a href=%MACMINLPURL%/c-reload-q-104.dat>c-reload-q-104.dat</a> from MacMINLP"
  nuclear10b 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and <a href=%MACMINLPURL%/c-reload-q-104.dat>c-reload-q-104.dat</a> from MacMINLP"
  nuclear14       "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14a.dat>c-reload-14a.dat</a> from MacMINLP"
  nuclear14a 	  "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14a.dat>c-reload-14a.dat</a> from MacMINLP"
  nuclear14b 	  "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14b.dat>c-reload-14b.dat</a> from MacMINLP"
  nuclear25 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and <a href=%MACMINLPURL%/c-reload-q-25.dat>c-reload-q-25.dat</a> from MacMINLP"
  nuclear25a 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and <a href=%MACMINLPURL%/c-reload-q-25.dat>c-reload-q-25.dat</a> from MacMINLP"
  nuclear25b 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and<a href=%MACMINLPURL%/c-reload-q-25.dat>c-reload-q-25.dat</a> from MacMINLP"
  nuclear49 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and <a href=%MACMINLPURL%/c-reload-q-49.dat>c-reload-q-49.dat</a> from MacMINLP"
  nuclear49a 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and <a href=%MACMINLPURL%/c-reload-q-49.dat>c-reload-q-49.dat</a> from MacMINLP"
  nuclear49b 	  "AMPL model <a href=%MACMINLPURL%/c-reload-q.mod>c-reload-q.mod</a> and <a href=%MACMINLPURL%/c-reload-q-49.dat>c-reload-q-49.dat</a> from MacMINLP"
  nuclearva 	  "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14a.dat>c-reload-14a.dat</a> from MacMINLP"
  nuclearvb 	  "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14b.dat>c-reload-14b.dat</a> from MacMINLP"
  nuclearvc 	  "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14c.dat>c-reload-14c.dat</a> from MacMINLP"
  nuclearvd 	  "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14d.dat>c-reload-14d.dat</a> from MacMINLP"
  nuclearve 	  "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14e.dat>c-reload-14e.dat</a> from MacMINLP"
  nuclearvf 	  "AMPL model <a href=%MACMINLPURL%/c-reload.mod>c-reload.mod</a> and <a href=%MACMINLPURL%/c-reload-14f.dat>c-reload-14f.dat</a> from MacMINLP"
  nvs01
  nvs02
  nvs03
  nvs04
  nvs05
  nvs06
  nvs07
  nvs08
  nvs09
  nvs10
  nvs11
  nvs12
  nvs13
  nvs14
  nvs15
  nvs16
  nvs17
  nvs18
  nvs19
  nvs20
  nvs21
  nvs22
  nvs23
  nvs24
  o7_2
  o7 
  o7_ar25_1
  o7_ar2_1
  o7_ar3_1
  o7_ar4_1
  o7_ar5_1
  o8_ar4_1
  o9_ar4_1
  oaer  	  "MINOPT model <a href=%MINOPTURL%/oaer_test.dat>oaer_test.dat</a> from MINOPT Model Library"
  oil 
  oil2 
  ortez 
  parallel
  pb302035
  pb302055
  pb302075
  pb302095
  pb351535
  pb351555
  pb351575
  pb351595
  prob02
  prob03
  prob10
  procsel 	  "GAMS model <a href=%GAMSMODURL%/procsel.htm>procsel.gms</a> from Gams Model Library"
  product
  product2
  pump 	   	  "GAMS model <a href=%GAMSMODURL%/pump.htm>pump.gms<a/> from Gams Model Library"
  qap
  qapw 
  ravem
  ravempb
  risk2b
  risk2bpb
  saa_2
  sep1 		  "MINOPT model <a href=%MINOPTURL%/kocis87-2.dat>kocis87-2.dat</a> from MINOPT Model Library"
  space25 	  "AMPL model <a href=%MACMINLPURL%/space-25.mod>space-25.mod</a> and <a href=%MACMINLPURL%/space-25.dat>space-25.dat</a> from MacMINLP"
  space25a 	  "AMPL model <a href=%MACMINLPURL%/space-25-r.mod>space-25r.mod</a> and <a href=%MACMINLPURL%/space-25-r.dat>space-25-r.dat</a> from MacMINLP"
  space960 	  "AMPL model <a href=%MACMINLPURL%/space-960.mod>space-960.mod</a> and <a href=%MACMINLPURL%/space-960.dat>space-960.dat</a> from MacMINLP"
  spectra2
  spring 	  "GAMS model <a href=%GAMSMODURL%/spring.htm>spring.gms</a> from Gams Model Library"
  st_e13
  st_e14
  st_e15
  st_e27
  st_e29
  st_e31
  st_e32
  st_e35
  st_e36
  st_e38
  st_e40
  st_miqp1
  st_miqp2
  st_miqp3
  st_miqp4
  st_miqp5
  st_test1
  st_test2
  st_test3
  st_test4
  st_test5
  st_test6
  st_test8
  st_testgr1
  st_testgr3
  st_testph4
  stockcycle 	  "AMPL model <a href=%MACMINLPURL%/stockcycle.mod>stockcycle.mod</a> from MacMINLP"
  super1
  super2
  super3
  super3t
  synheat 	  "GAMS model <a href=%GAMSMODURL%/synheat.htm>synheat.gms</a> from Gams Model Library"
  synthes1 	  "AMPL model <a href=%MACMINLPURL%/synthes1.mod>synthes1.mod</a> from MacMINLP"
  synthes2 	  "AMPL model <a href=%MACMINLPURL%/synthes2.mod>synthes2.mod</a> from MacMINLP"
  synthes3 	  "AMPL model <a href=%MACMINLPURL%/synthes3.mod>synthes3.mod</a> from MacMINLP"
  tln12 	  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimlon12.dat>trimlon12.dat</a> from MacMINLP"
  tln2 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimlon2.dat>trimlon2.dat</a> from MacMINLP"
  tln4 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimlon4.dat>trimlon4.dat</a> from MacMINLP"
  tln5 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimlon5.dat>trimlon5.dat</a> from MacMINLP"
  tln6 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimlon6.dat>trimlon6.dat</a> from MacMINLP"
  tln7 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimlon7.dat>trimlon7.dat</a> from MacMINLP"
  tloss 	  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> from MacMINLP"
  tls12 	  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimloss12.dat>trimloss12.dat</a> from MacMINLP"
  tls2 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimloss2.dat>trimloss2.dat</a> from MacMINLP"
  tls4 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimloss4.dat>trimloss4.dat</a> from MacMINLP"
  tls5 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimloss5.dat>trimloss5.dat</a> from MacMINLP"
  tls6 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimloss6.dat>trimloss6.dat</a> from MacMINLP"
  tls7 		  "AMPL model <a href=%MACMINLPURL%/trimlon.mod>trimlon.mod</a> and <a href=%MACMINLPURL%/trimloss7.dat>trimloss7.dat</a> from MacMINLP"
  tltr 
  uselinear
  util
  var_con10 
  var_con5 
  waste 
  water3 	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from GAMS model Library"
  water4 	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from Gams Model Library"
  waterful2 	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from Gams Model Library"
  waters 	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from Gams Model Library"
  watersbp 	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from Gams Model Library"
  watersym1  	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from Gams Model Library" 
  watersym2 	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from Gams Model Library"
  waterx 	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from Gams Model Library"
  waterz 	  "GAMS model <a href=%GAMSMODURL%/waterx.htm>waterx.gms</a> from Gams Model Library"
  windfac 	  "AMPL model <a href=%MACMINLPURL%/wind-fac.mod>wind-fac.mod</a> from MacMINLP" 
/

Set d application structure /
  4stufen    "vier Membran-Rohrmodule in Feed-and-Bleed-Schaltung"
  alan       "Portfolio Analysis"
  alphaecp   "Example models from AlphaECP"
  apns       "Models from Tawarmalani and Sahinidis BARON Book"
  batchdes   "Optimal Design for Chemical Batch Processing" 
  blklayout  "Optimization of block layout design problems with unequal areas"
  bram       "Bram Schoonen Model collection"
  cecil_13   "Farming"
  contvar    "Batch processing"
  csched     "Cyclic Scheduling of Continuous Parallel Units"
  deb10      "Electricity generation"
  detf1      "Assest Management"
  dosemin2d  "Radiation therapy"
  oil        "Pipeline design"
  elf        "pseudo components properties"
  enpro48    "Batch processing"
  facility   "Multi-commodity capacity facility location-allocation"
  cfloudas   "Literature problems from Floudas"
  ex3        "Process selection"
  ex4        "Product positioning in a multiattribute space"
  feedtray   "feed plate location"
  fuel       "Fuel Scheduling and Unit Commitment Problem"
  faclay     "Facility Layout" 
  gear       "Gear Train Design"
  gastrans   "Gas Transmission Problem - Belgium"
  gasnet     "Optimal Design of a Gas Transmission Network"
  ghg_veh    "Optimal vehicle allocation for minimizing greenhouse gas emissions"
  gqap       "General Quadratic Assignment Problem"
  gamscom    "GAMS Development Client Models"
  hda        "Synthesis: Hydrodealkylation of Toluene"
  johnall    "Asset Management"
  lop97ic    "Rail Line Optimization"
  nvs        "Nick Sahinidis Models of Gupta and Ravindran"
  meanvarx   "Financial Optimization: Risk Management"
  minlphi    "Heat Integrated Distillation Sequences"
  hmittelman "Literature problem from Mittelman"
  nonsharp   "Synthesis of General Distillation Sequences"
  nuclear    "Nuclear Reactor Core Reload Pattern"
  parallel   "Cyclic multiproduct scheduling on parallel lines"
  procsel    "Structural Optimization of Process Flowsheets"
  pump       "Pump configuration problem"
  qap        "Quadratic Assignment Problem"
  space      "Synthesis of Space Truss"
  spectra2   "Parameter estimation in quantitative IR spectroscopy"
  spring     "Coil Compression String Design"
  stockcycle "Minimizing Total Average Cycle Stock"
  super      "power plant operation"
  synheat    "Simultaneous Optimization for HEN Synthesis"
  synthes1   "Synthesis of processing system"
  trimloss   "Trim loss minimization problem"
  unit       "Unit commitment problem"
  util       "Argentina utility plant"
  waste      "Wastewater Management"  
  waterx     "Design of a Water Distribution Network"
  windfac    "Winding Factor of Electrical Machines"
 /

set ms(m,s) model sequence mapping /
  4stufen   .    1, batch     .    2, batchdes  .    3
  beuster   .    4, cecil_13  .    5, csched1   .    6
  csched2   .    7, deb10     .    8, deb6      .    9
  deb7      .   10, deb8      .   11, deb9      .   12
  dosemin2d .   14, dosemin3d .   15
  oil       .   16, oil2      .   17, enpro48   .   18
  enpro56   .   19, ex1222    .   20, ex1223    .   21
  ex1223a   .   22, ex1224    .   23, ex1225    .   24
  ex1226    .   25, ex1233    .   26, ex1243    .   27
  ex1244    .   28, ex1252    .   29, ex1252a   .   30

  ex1263    .   31, ex1263a   .   32, ex1264    .   33
  ex1264a   .   34, ex1265    .   35, ex1265a   .   36
  ex1266    .   37, ex1266a   .   38, gear      .   39
  gear2     .   40, gear3     .   41, meanvarx  .   42
  meanvarxsc.   43, nuclear104.   44,
  nuclear25 .   46, nuclear49 .   47, ortez     .   48
  pump      .   49, ravem     .   50, saa_2     .   51
  synheat   .   52, synthes1  .   53, synthes2  .   54
  synthes3  .   55, tltr      .   56, tloss     .   57
  var_con10 .   58, var_con5  .   59, water3    .   60

  water4    .   61, waterful2 .   62, waters    .   63
  watersbp  .   64, watersym1 .   65, watersym2 .   66
  waterx    .   67, waterz    .   68, alan      .   69
  contvar   .   70, elf       .   71, ex3       .   72
  ex4       .   73, feedtray  .   74, fuel      .   75
  gastrans  .   76, gasnet    .   77, hda       .   78
  johnall   .   79, hmittelman.   80, parallel  .   81
  procsel   .   82, qap       .   83, space25   .   84
  spectra2  .   85, spring    .   86, stockcycle.   87
  util      .   88, waste     .   89, windfac   .   90

  ex1221    .   91, ex1223b   .   92, space25a  .   93
  nuclear10a.   94, nuclear25a.   96
  nuclear49a.   97, tln2      .   98, tln4      .   99,
  tln5      .  100, tln6      .  101, tln7      .  102,
  tln12     .  103, tls2      .  104, tls4      .  105,
  tls5      .  106, tls6      .  107, tls7      .  108,
  tls12     .  109, gbd       .  110, gkocis    .  111,
  sep1      .  112, oaer      .  113, fac1      .  114,
  fac2      .  115, fac3      .  116, nuclear10b.  117,
  nuclear25b.  119, nuclear49b.  120,

  qapw      .  121, nous1     .  122, nous2     .  123,
  feedtray2 .  124, gear4     .  125, space960  .  126,
  nuclear14 .  127, nuclear14a.  128, nuclear14b.  129,
  minlphix  .  130, nuclearva .  131, nuclearvb .  132,
  nuclearvc .  133, nuclearvd .  134, nuclearve .  135,
  nuclearvf .  136, lop97ic   .  137, lop97icx  .  138,
  eniplac   .  139, fuzzy     .  140, product   .  141,
  product2  .  142, risk2b    .  143, du-opt5   .  144,
  du-opt    .  145, eg_all_s  .  146, eg_disc_s .  147,
  eg_disc2_s.  148, eg_int_s  .  149, nvs01     .  150,

  nvs02     .  151, nvs03     .  152, nvs04     .  153,
  nvs05     .  154, nvs06     .  155, nvs07     .  156,
  nvs08     .  157, nvs09     .  158, nvs10     .  159,
  nvs11     .  160, nvs12     .  161, nvs13     .  162,
  nvs14     .  163, nvs15     .  164, nvs16     .  165,
  nvs17     .  166, nvs18     .  167, nvs19     .  168,
  nvs20     .  169, nvs21     .  170, nvs22     .  171,
  nvs23     .  172, nvs24     .  173, st_e13    .  174,
  st_e14    .  175, st_e15    .  176, st_e27    .  177,
  st_e29    .  178, st_e31    .  179, st_e32    .  180,

  st_e35    .  181, st_e36    .  182, st_e38    .  183,
  st_e40    .  184, st_miqp1  .  185, st_miqp2  .  186,
  st_miqp3  .  187, st_miqp4  .  188, st_miqp5  .  189,
  st_test1  .  190, st_test2  .  191, st_test3  .  192,
  st_test4  .  193, st_test5  .  194, st_test6  .  195,
  st_test8  .  196, st_testgr1.  197, st_testgr3.  198,
  st_testph4.  199, prob02    .  200, prob03    .  201,
  prob10    .  202, mbtd      .  203, fo7_2     .  204,
  fo7       .  205, fo8       .  206, fo9       .  207,
  m3        .  208, m6        .  209, m7        .  210,

  o7_2      .  211, o7        .  212, uselinear .  213,
  blendgap  .  214, super1    .  215, super2    .  216,
  super3    .  217, super3t   .  218, fo7_ar25_1.  219, 
  fo7_ar2_1 .  220, fo7_ar3_1 .  221, fo7_ar4_1 .  222,
  fo7_ar5_1 .  223, fo8_ar25_1.  224, fo8_ar2_1 .  225,
  fo8_ar3_1 .  226, fo8_ar4_1 .  227, fo8_ar5_1 .  228,
  fo9_ar25_1.  229, fo9_ar2_1 .  230, fo9_ar3_1 .  231,
  fo9_ar4_1 .  232, fo9_ar5_1 .  233, m7_ar25_1 .  234,
  m7_ar2_1  .  235, m7_ar3_1  .  236, m7_ar4_1  .  237,
  m7_ar5_1  .  238, no7_ar25_1.  239, no7_ar2_1 .  240,

  no7_ar3_1 .  241, no7_ar4_1 .  242, no7_ar5_1 .  243,
  o7_ar25_1 .  244, o7_ar2_1  .  245, o7_ar3_1  .  246,
  o7_ar4_1  .  247, o7_ar5_1  .  248, o8_ar4_1  .  249,
  o9_ar4_1  .  250, csched1a  .  251, csched2a  .  252,
  pb302035  .  253, pb302055  .  254, pb302075  .  255,
  pb302095  .  256, pb351535  .  257, pb351555  .  258,
  pb351575  .  259, pb351595  .  260, enpro48pb .  261,
  enpro56pb .  262, ex3pb     .  263, ravempb   .  264,
  risk2bpb  .  265, chp_partload.266, netmod_dol1. 267,
  netmod_dol2. 268, netmod_kar1. 269, netmod_kar2. 270,
  ghg_1veh  .  271, ghg_2veh  .  272, ghg_3veh  .  273
/

Set big(s) model that do not fit into the GAMS demo system /
    4,   5,   6,   7,   9,  10,  11,  12,  14
   15,  16,  17,  18,  19,  31,  33,  35,  37,  44
   45,  46,  47,  50,  51,  58,  59,  61,  62,  65
   66,  68,  70,  78,  79,  83,  84,  87,  89,  93
   94,  95,  96,  97, 105, 106, 107, 108, 109, 117
  118, 119, 120, 121, 126, 127, 128, 129, 131, 132
  133, 134, 135, 136, 137, 138, 140, 141, 142, 143
  203, 206, 207, 213, 214, 215, 216, 217, 218 *250
  252*262,264*273
/

Set ds(d,s) model application mapping /
  4stufen   . (1,4)
  alphaecp  . (199*202)
  alan      . (69)
  apns      . (174*199)
  batchdes  . (2,3)
  blklayout . (219*250)
  bram      . (144*149)
  cecil_13  . (5,48)
  contvar   . (70)
  csched    . (6,7,251,252)
  deb10     . (8*12,58,59)
  detf1     . (13,51) # saa_1 and saa_gams missing
  dosemin2d . (14,15)
  oil       . (16,17)
  elf       . (71)
  enpro48   . (18,19,50,261,262,264)
  ex3       . (72,263)
  ex4       . (73,141,142)
  facility  . (114*116)
  faclay    . (204*212)
  feedtray  . (74,124)
  cfloudas  . (20*25,91,92,110*113)
  fuel      . (75)
  gasnet    . (77)
  gastrans  . (76)
  gamscom   . (140,143,203,213,214,265,267*270)
  gqap      . (253*260)
  gear      . (39*41,125)
  ghg_veh   . (271*273)
  hda       . (78)
  johnall   . (79)
  lop97ic   . (137,138)
  meanvarx  . (42,43)
  minlphi   . (130)
  hmittelman. (80)
  nonsharp  . (122,123)
  nuclear   . (44*47,94*97,117*120,127*129,131*136)
  nvs       . (150*173)
  parallel  . (81)
  procsel   . (82)
  pump      . (29,30,49)
  qap       . (83,121)
  space     . (84,93,126)
  spectra2  . (85)
  spring    . (86)
  stockcycle. (87)
  super     . (215*218, 266)
  synheat   . (26*28,52)
  synthes1  . (53*55)
  trimloss  . (31*38,56,57,98*109)
  unit      . 139
  util      . (88)
  waste     . (89)
  waterx    . (60*68)
  windfac   . (90)
 /;

set m_miqcp(m) /
alan         ,du-opt5      ,du-opt       ,elf          ,ex1223a     
ex1263       ,ex1263a      ,ex1264       ,ex1264a      ,ex1265      
ex1265a      ,ex1266       ,ex1266a      ,ex4          ,fac3        
feedtray2    ,fuel         ,gbd          ,lop97ic      ,lop97icx    
meanvarx     ,meanvarxsc   ,nous1        ,nous2        ,nuclear104  
nuclear10a   ,nuclear10b   ,nuclear14    ,nuclear14a   ,nuclear14b  
nuclear25    ,nuclear25a  
nuclear25b   ,nuclear49    ,nuclear49a   ,nuclear49b   ,nuclearva   
nuclearvb    ,nuclearvc    ,nuclearvd    ,nuclearve    ,nuclearvf   
nvs03        ,nvs10        ,nvs11        ,nvs12        ,nvs13       
nvs14        ,nvs15        ,nvs17        ,nvs18        ,nvs19       
nvs23        ,nvs24        ,pb302035     ,pb302055     ,pb302075    
pb302095     ,pb351535     ,pb351555     ,pb351575     ,pb351595    
prob02       ,prob03       ,qap          ,qapw         ,sep1        
space25      ,space25a     ,space960     ,spectra2     ,st_e13      
st_e27       ,st_e31       ,st_miqp1     ,st_miqp2     ,st_miqp3    
st_miqp4     ,st_miqp5     ,st_test1     ,st_test2     ,st_test3    
st_test4     ,st_test5     ,st_test6     ,st_test8     ,st_testgr1  
st_testgr3   ,st_testph4   ,tln12        ,tln2         ,tln4        
tln5         ,tln6         ,tln7         ,tloss        ,tltr        
util         ,waste        ,product      ,product2     ,netmod_dol1
netmod_dol2  ,netmod_kar1  ,netmod_kar2 /;


$if not exist gams.bib $goto nobib
$echo r1   43  > m2g.txt
$echo r2   42 >> m2g.txt
$echo r3   41 >> m2g.txt
$echo r4  208 >> m2g.txt
$echo r5   40 >> m2g.txt
$echo r6   39 >> m2g.txt
$echo r7   38 >> m2g.txt
$echo r8   37 >> m2g.txt
$echo r9   36 >> m2g.txt
$echo r10  35 >> m2g.txt
$echo r11  34 >> m2g.txt
$echo r12  13 >> m2g.txt
$echo r13  33 >> m2g.txt
$echo r14  32 >> m2g.txt
$echo r15  31 >> m2g.txt
$echo r16  30 >> m2g.txt
$echo r17  29 >> m2g.txt
$echo r19  28 >> m2g.txt
$echo r20  27 >> m2g.txt
$echo r21  26 >> m2g.txt
$echo r22  24 >> m2g.txt
$echo r23  25 >> m2g.txt
$echo r24   7 >> m2g.txt
$echo r25  15 >> m2g.txt
$echo r26  23 >> m2g.txt
$echo r27  22 >> m2g.txt
$echo r28  21 >> m2g.txt
$echo r29  20 >> m2g.txt
$echo r30  19 >> m2g.txt
$echo r31  10 >> m2g.txt
$echo r32  18 >> m2g.txt
$echo r33  17 >> m2g.txt
$echo r34  16 >> m2g.txt
$echo r35  14 >> m2g.txt
$echo r36  12 >> m2g.txt
$echo r37  11 >> m2g.txt
$echo r38   9 >> m2g.txt
$echo r39 209 >> m2g.txt
$echo r40 210 >> m2g.txt
$echo r41   8 >> m2g.txt
$echo r42   6 >> m2g.txt
$echo r43   5 >> m2g.txt
$echo r44   4 >> m2g.txt
$echo r45   3 >> m2g.txt
$echo r46   2 >> m2g.txt
$echo r47   1 >> m2g.txt
$echo r48  44 >> m2g.txt
$echo r49  46 >> m2g.txt
$echo r50 399 >> m2g.txt
$echo r51 400 >> m2g.txt
$echo r52 401 >> m2g.txt
$echo r53 402 >> m2g.txt
$echo r54 407 >> m2g.txt
$echo r55 435 >> m2g.txt
$echo r56 416 >> m2g.txt
$echo r57 423 >> m2g.txt
$echo r58 424 >> m2g.txt  
$echo r59 425 >> m2g.txt  
$echo r60 426 >> m2g.txt  
$echo r61 428 >> m2g.txt  
$echo r62 429 >> m2g.txt  
$echo r63 431 >> m2g.txt  
$echo r64 462 >> m2g.txt  
$echo r65 463 >> m2g.txt  
$echo r66 464 >> m2g.txt  
$echo r67 506 >> m2g.txt
$echo r68 508 >> m2g.txt
$echo r69 509 >> m2g.txt
$echo r70 526 >> m2g.txt
$echo r71 553 >> m2g.txt
  

$set cat type
$if %system.filesys% == UNIX $set cat cat

$call "bib2gms gams.bib r=m2g.txt i=minlp doistyle=html"
$echo $onempty                                    > minlpref.inc
$echo set a authors /                            >> minlpref.inc
$call %cat% minlp.a                              >> minlpref.inc
$echo               /                            >> minlpref.inc
$echo set r references /                         >> minlpref.inc
$call %cat% minlp.r                              >> minlpref.inc
$echo                  /                         >> minlpref.inc
$echo set r2(r) second part of references /      >> minlpref.inc
$call %cat% minlp.ro                             >> minlpref.inc
$echo                  /                         >> minlpref.inc
$echo set cr(r,r) cross references /             >> minlpref.inc
$call %cat% minlp.crr                            >> minlpref.inc
$echo                              /             >> minlpref.inc
$echo set ca(a) credit authors /                 >> minlpref.inc
$call %cat% minlp.ca                             >> minlpref.inc
$echo                          /                 >> minlpref.inc
$echo set af(a,r) first author     /             >> minlpref.inc
$call %cat% minlp.far                            >> minlpref.inc
$echo                              /             >> minlpref.inc
$echo set ar(a,r) author reference mapping /     >> minlpref.inc
$call %cat% minlp.ar                             >> minlpref.inc
$echo                                      /     >> minlpref.inc

$label nobib

$include minlpref.inc

set nopubs(r) not real publications /
  r1,r2, r4*r11, r39, r40
/

set pubs(r) real publications;
pubs(r) = not nopubs(r);

set mr(m,r) model reference mapping /
  4stufen      . (r7)
  alan         . (r1,r13)
  batch        . (r5,r11,r16)
  batchdes     . (r1,r16)
  beuster      . (r7)
  blendgap     . (r8)
  cecil_13     . (r8)
  contvar      . (r9) 
  chp_partload . (r70)
  csched1      . (r1,r6,r28)
  csched1a     . (r1,r6,r28)
  csched2      . (r1,r5,r28)
  csched2a     . (r1,r5,r28)
  deb10        . (r7)
  deb6         . (r7)
  deb7         . (r7)
  deb8         . (r7)
  deb9         . (r7)
  dosemin2d    . (r8)
  dosemin3d    . (r8)
  elf          . (r9)
  eniplac      . (r8)
  enpro48      . (r9)
  enpro48pb    . (r9)
  enpro56      . (r9)
  enpro56pb    . (r9)
  du-opt5      . (r50)
  du-opt       . (r50)
  eg_all_s     . (r50)
  eg_disc_s    . (r50)
  eg_disc2_s   . (r50)
  eg_int_s     . (r50)
  ex1221       . (r3,r16)
  ex1222       . (r3,r26)
  ex1223       . (r3,r44)
  ex1223a      . (r4,r44)
  ex1223b      . (r4,r44)
  ex1224       . (r3,r46)
  ex1225       . (r3,r45)
  ex1226       . (r3,r45)
  ex1233       . (r3,r32)
  ex1243       . (r3,r43)
  ex1244       . (r3,r43)
  ex1252       . (r3,r33)
  ex1252a      . (r4,r33)
  ex1263       . (r3,r29)
  ex1263a      . (r4,r29)
  ex1264       . (r3,r29)
  ex1264a      . (r4,r29)
  ex1265       . (r3,r29)
  ex1265a      . (r4,r29)
  ex1266       . (r3,r29)
  ex1266a      . (r4,r29)
  ex3          . (r9,r10,r14)
  ex3pb        . (r9,r10,r14)
  ex4          . (r9,r10,r14)
  fac1         . (r10)
  fac2         . (r10)
  fac3         . (r10)
  feedtray     . (r1,r19)  
  feedtray2    . (r5,r19)  
  fo7_2        . (r64)
  fo7          . (r64)
  fo8          . (r64)
  fo9          . (r64)
  fo7_ar25_1   . (r68)
  fo7_ar2_1    . (r68)
  fo7_ar3_1    . (r68)
  fo7_ar4_1    . (r68)
  fo7_ar5_1    . (r68)
  fo8_ar25_1   . (r68)
  fo8_ar2_1    . (r68)
  fo8_ar3_1    . (r68)
  fo8_ar4_1    . (r68)
  fo8_ar5_1    . (r68)
  fo9_ar25_1   . (r68)
  fo9_ar2_1    . (r68)
  fo9_ar3_1    . (r68)
  fo9_ar4_1    . (r68)
  fo9_ar5_1    . (r68)
  fuel         . (r1,r34)
  fuzzy        . (r8)
  gasnet       . (r1,r35)
  gastrans     . (r1,r36)
  gbd          . (r10)
  gear         . (r1,r6,r37)
  gear2        . (r1,r6,r37)
  gear3        . (r1,r6,r37)
  gear4        . (r2,r6,r37)
  ghg_1veh     . (r71)
  ghg_2veh     . (r71)
  ghg_3veh     . (r71)
  hda          . (r1,r38)
  johnall      . (r7)
  gkocis       . (r10,r15)
  lop97ic      . (r48,r49)
  lop97icx     . (r48,r49)
  m3           . (r64)
  m6           . (r64)
  m7           . (r64)
  m7_ar25_1    . (r68)
  m7_ar2_1     . (r68)
  m7_ar3_1     . (r68)
  m7_ar4_1     . (r68)
  m7_ar5_1     . (r68)
  mbtd         . (r8)
  meanvarx     . (r1,r23)
  meanvarxsc   . (r2,r23)
  minlphix     . (r1,r47)
  hmittelman   . (r5,r39)
  netmod_dol1  . (r8)
  netmod_dol2  . (r8)
  netmod_kar1  . (r8)
  netmod_kar2  . (r8)
  no7_ar25_1   . (r68)
  no7_ar2_1    . (r68)
  no7_ar3_1    . (r68)
  no7_ar4_1    . (r68)
  no7_ar5_1    . (r68)
  nous1        . (r10,r21)
  nous2        . (r10,r1,r21)
  nuclear104   . (r5,r27)
  nuclear14    . (r5,r27)
  nuclear25    . (r5,r27)
  nuclear49    . (r5,r27)
  nuclear10a   . (r6,r27)
  nuclear14a   . (r6,r27)
  nuclear25a   . (r6,r27)
  nuclear49a   . (r6,r27)
  nuclear10b   . (r6,r27)
  nuclear14b   . (r6,r27)
  nuclear25b   . (r6,r27)
  nuclear49b   . (r6,r27)
  nuclearva    . (r5,r27)
  nuclearvb    . (r5,r27)
  nuclearvc    . (r5,r27)
  nuclearvd    . (r5,r27)
  nuclearve    . (r5,r27)
  nuclearvf    . (r5,r27)
  nvs01        . (r52,r53)
  nvs02        . (r52,r53)
  nvs03        . (r52,r53)
  nvs04        . (r52,r53)
  nvs05        . (r52,r53)
  nvs06        . (r52,r53)
  nvs07        . (r52,r53)
  nvs08        . (r52,r53)
  nvs09        . (r52,r53)
  nvs10        . (r52,r53)
  nvs11        . (r52,r53)
  nvs12        . (r52,r53)
  nvs13        . (r52,r53)
  nvs14        . (r52,r53)
  nvs15        . (r52,r53)
  nvs16        . (r52,r53)
  nvs17        . (r52,r53)
  nvs18        . (r52,r53)
  nvs19        . (r52,r53)
  nvs20        . (r52,r53)
  nvs21        . (r52,r53)
  nvs22        . (r52,r53)
  nvs23        . (r52,r53)
  nvs24        . (r52,r53)
  o7_2         . (r64)
  o7           . (r64)
  o7_ar25_1    . (r68)
  o7_ar2_1     . (r68)
  o7_ar3_1     . (r68)
  o7_ar4_1     . (r68)
  o7_ar5_1     . (r68)
  o8_ar4_1     . (r68)
  o9_ar4_1     . (r68)
  oaer         . (r10,r26)
  oil          . (r8)
  oil2         . (r8)
  ortez        . (r8)
  parallel     . (r9)
  pb302035     . (r69)
  pb302055     . (r69)
  pb302075     . (r69)
  pb302095     . (r69)
  pb351535     . (r69)
  pb351555     . (r69)
  pb351575     . (r69)
  pb351595     . (r69)
  prob02       . (r29,r64)
  prob03       . (r64,r65,r66)
  prob10       . (r64)
  procsel      . (r1,r15)
  product      . (r9)
  product2     . (r9)
  pump         . (r1,r33)
  qap          . (r8)
  qapw         . (r8)
  ravem        . (r9)
  ravempb      . (r9)
  risk2b       . (r8)
  risk2bpb     . (r8)
  saa_2        . (r7)
  sep1         . (r10,r17)
  space25      . (r5,r40)
  space25a     . (r6,r40)        
  space960     . (r5,r40)        
  spectra2     . (r9)
  spring       . (r2,r6,r20)
  st_e13       . (r16)
  st_e14       . (r56)
  st_e15       . (r16)
  st_e27       . (r57)
  st_e29       . (r58)
  st_e31       . (r59)
  st_e32       . (r60)
  st_e35       . (r61)
  st_e36       . (r62)
  st_e38       . (r20)
  st_e40       . (r63)
  st_miqp1     . (r54,r55)
  st_miqp2     . (r54,r55)
  st_miqp3     . (r54,r55)
  st_miqp4     . (r54,r55)
  st_miqp5     . (r54,r55)
  st_test1     . (r54,r55)
  st_test2     . (r54,r55)
  st_test3     . (r54,r55)
  st_test4     . (r54,r55)
  st_test5     . (r54,r55)
  st_test6     . (r54,r55)
  st_test8     . (r54,r55)
  st_testgr1   . (r54,r55)
  st_testgr3   . (r54,r55)
  st_testph4   . (r54,r55)
  stockcycle   . (r1,r5,r30)
  super1       . (r67)
  super2       . (r67)
  super3       . (r67)
  super3t      . (r67)
  synheat      . (r1,r32)
  synthes1     . (r5,r10,r14)
  synthes2     . (r5,r10,r14)
  synthes3     . (r5,r10,r14)
  tln2         . (r5,r29)
  tln4	       . (r5,r29)
  tln5	       . (r5,r29)
  tln6         . (r5,r29) 
  tln7	       . (r5,r29)
  tln12	       . (r5,r29)
  tls2         . (r5,r29)
  tls4	       . (r5,r29)
  tls5	       . (r5,r29)
  tls6         . (r5,r29) 
  tls7	       . (r5,r29)
  tls12	       . (r5,r29)
  tltr         . (r8)
  tloss        . (r1,r4,r29)
  uselinear    . (r8)
  util         . (r9)
  var_con10    . (r7)
  var_con5     . (r7)
  waste        . (r7)
  water3       . (r2,r42,r41)
  water4       . (r2,r42,r41)
  waterful2    . (r2,r42,r41)
  waters       . (r2,r42,r41)
  watersbp     . (r2,r42,r41)
  watersym1    . (r2,r42,r41)
  watersym2    . (r2,r42,r41)
  waterx       . (r1,r42,r41)
  waterz       . (r2,r42,r41)
  windfac      . (r5)
/

set p restart or solution points /p1*p10/;

set mp(m,p) available restart or solution points /
  4stufen        .p1
  alan           .p1
  batch          .p1
  batchdes       .p1
  beuster        .p1
  blendgap       .p1
  cecil_13       .(p1,p2)
  chp_partload   .(p1,p2)
  contvar        .p1
  csched1        .p1
  csched1a       .p1
  csched2        .p1
  csched2a       .(p1,p2)
  deb10          .p1
  deb6           .p1
  deb7           .p1
  deb8           .p1
  deb9           .p1
  dosemin2d      .p1
  dosemin3d      .(p1,p2)
  du-opt         .p1     
  du-opt5        .p1     
  eg_all_s       .(p1,p2,p3)
  eg_disc2_s     .p1     
  eg_disc_s      .p1     
  eg_int_s       .p1
  elf            .p1
  eniplac        .(p1,p2)
  enpro48        .p1
  enpro48pb      .p1
  enpro56        .p1
  enpro56pb      .p1
  ex1221         .p1
  ex1222         .p1
  ex1223         .p1
  ex1223a        .p1
  ex1223b        .p1
  ex1224         .p1
  ex1225         .p1
  ex1226         .p1
  ex1233         .p1
  ex1243         .p1
  ex1244         .p1
  ex1252         .p1
  ex1252a        .p1
  ex1263         .p1
  ex1263a        .p1
  ex1264         .p1
  ex1264a        .p1
  ex1265         .p1
  ex1265a        .p1
  ex1266         .p1
  ex1266a        .p1
  ex3            .p1
  ex3pb          .p1
  ex4            .p1
  fac1           .p1
  fac2           .p1
  fac3           .p1
  feedtray       .p1
  feedtray2      .p1
  fo7_2          .p1
  fo7            .p1
  fo8            .p1
  fo9            .p1
  fo7_ar25_1     .p1
  fo7_ar2_1      .p1
  fo7_ar3_1      .p1
  fo7_ar4_1      .p1
  fo7_ar5_1      .p1
  fo8_ar25_1     .p1
  fo8_ar2_1      .p1
  fo8_ar3_1      .p1
  fo8_ar4_1      .p1
  fo8_ar5_1      .p1
  fo9_ar25_1     .p1
  fo9_ar2_1      .p1
  fo9_ar3_1      .p1
  fo9_ar4_1      .p1
  fo9_ar5_1      .p1
  fuel           .p1
  fuzzy          .(p1,p2)
  gasnet         .p1
  gastrans       .p1
  gbd            .p1
  gear           .p1
  gear2          .p1
  gear3          .p1
  gear4          .p1
  ghg_1veh       .p1
  ghg_2veh       .p1
  ghg_3veh       .p1
  hda            .(p1,p2)
  johnall        .p1
  lop97ic        .(p1,p2)
  lop97icx       .(p1,p2)
  gkocis         .p1
  m3             .p1
  m6             .p1
  m7             .p1
  m7_ar25_1      .p1
  m7_ar2_1       .p1
  m7_ar3_1       .p1
  m7_ar4_1       .p1
  m7_ar5_1       .p1
  mbtd           .(p1,p2)
  meanvarx       .p1
  meanvarxsc     .p1
  minlphix       .p1
  hmittelman     .p1
  netmod_dol1    .p1
  netmod_dol2    .p1
  netmod_kar1    .p1
  netmod_kar2    .p1
  no7_ar25_1     .p1
  no7_ar2_1      .p1
  no7_ar3_1      .p1
  no7_ar4_1      .p1
  no7_ar5_1      .p1
  nous1          .p1
  nous2          .p1
  nuclear14      .p1
  nuclear14a     .p1
  nuclear14b     .(p1,p2,p3,p4)
  nuclear25      .p1
  nuclear25a     .p1
  nuclear25b     .(p1,p2,p3,p4)
  nuclear49      .p1
  nuclear49a     .p1
  nuclear49b     .(p1,p2)
  nuclearva      .(p1,p2)
  nuclearvb      .p1
  nuclearvc      .p1
  nuclearvd      .(p1,p2,p3)
  nuclearve      .p1
  nuclearvf      .(p1,p2)
  nvs01          .p1
  nvs02          .p1
  nvs03          .p1
  nvs04          .p1
  nvs05          .p1
  nvs06          .p1
  nvs07          .p1
  nvs08          .p1
  nvs09          .p1
  nvs10          .p1
  nvs11          .p1
  nvs12          .p1
  nvs13          .p1
  nvs14          .p1
  nvs15          .p1
  nvs16          .p1
  nvs17          .p1
  nvs18          .p1
  nvs19          .p1
  nvs20          .p1
  nvs21          .p1
  nvs22          .p1
  nvs23          .p1
  nvs24          .p1
  o7             .p1
  o7_2           .p1
  o7_ar25_1      .p1
  o7_ar2_1       .p1
  o7_ar3_1       .p1
  o7_ar4_1       .p1
  o7_ar5_1       .p1
  o8_ar4_1       .p1
  o9_ar4_1       .p1
  oaer           .p1
  oil            .p1
  oil2           .p1
  ortez          .p1
  parallel       .p1
  pb302035       .p1
  pb302055       .p1
  pb302075       .p1
  pb302095       .p1
  pb351535       .p1
  pb351555       .p1
  pb351575       .p1
  pb351595       .p1
  prob02         .p1
  prob03         .p1
  prob10         .p1
  product        .p1
  product2       .(p1,p2)
  procsel        .p1
  pump           .(p1,p2)
  qap            .p1
  qapw           .p1
  ravem          .p1
  ravempb        .p1
  risk2b         .p1
  risk2bpb       .p1
  saa_2          .(p1,p2,p3,p4)
  sep1           .p1
  space25        .p1
  space25a       .p1
  space960       .p1
  spectra2       .p1
  spring         .p1
  st_e13         .p1 
  st_e14         .p1
  st_e15         .p1
  st_e27         .p1
  st_e29         .p1
  st_e31         .p1
  st_e32         .p1
  st_e35         .p1
  st_e36         .p1
  st_e38         .p1
  st_e40         .p1
  st_miqp1       .p1
  st_miqp2       .p1
  st_miqp3       .p1
  st_miqp4       .p1
  st_miqp5       .p1
  st_test1       .p1
  st_test2       .p1
  st_test3       .p1
  st_test4       .p1
  st_test5       .p1
  st_test6       .p1
  st_test8       .p1
  st_testgr1     .p1
  st_testgr3     .p1
  st_testph4     .p1
  stockcycle     .(p1,p2)
  super1         .p1
  super2         .p1
  super3         .p1
  super3t        .(p1,p2)
  synheat        .p1
  synthes1       .p1
  synthes2       .p1
  synthes3       .p1
  tln2           .p1
  tln4           .p1
  tln5           .p1
  tln6           .(p1,p2)
  tln7           .(p1,p2)
  tln12          .(p1,p2,p3)
  tloss          .p1
  tls2           .p1
  tls4           .(p1,p2,p3)
  tls5           .(p1,p2,p3,p4)
  tls6           .(p1,p2,p3)
  tls7           .(p1,p2,p3)
  tls12          .p1
  tltr           .p1
  uselinear      .p1
  util           .p1
  var_con10      .p1
  var_con5       .p1
  waste          .(p1,p2)
  water3         .(p1,p2,p3,p4)
  water4         .(p1,p2,p3)
  waterful2      .(p1,p2,p3,p4)
  waters         .(p1,p2,p3,p4,p5)
  watersbp       .(p1,p2,p3,p4)
  watersym1      .(p1,p2,p3,p4)
  watersym2      .(p1,p2)
  waterx         .(p1,p2,p3)
  waterz         .(p1,p2,p3)
  windfac        .p1
/;

set bk(m,p) point with best known solution / 
  4stufen        .p1    ''
  alan           .p1    '(global optimum, BARON certificate)'
  batch          .p1    '(global optimum, BARON certificate)'
  batchdes       .p1    '(global optimum, BARON certificate)'
  beuster        .p1    ''
  blendgap       .p1    ''
  cecil_13       .p2    ''
  contvar        .p1    ''
  chp_partload   .p1    ''
  csched1        .p1    '(global optimum, BARON certificate)'
  csched1a       .p1    '(global optimum, BARON certificate)'
  csched2        .p1    ''
  csched2a       .p2    ''
  deb10          .p1    '(global optimum, LINDOGLOBAL certificate)'
  deb6           .p1    ''
  deb7           .p1    ''
  deb8           .p1    ''
  deb9           .p1    ''
  dosemin2d      .p1    ''
  dosemin3d      .p2    ''
  du-opt         .p1    '(global optimum, LINDOGLOBAL certificate)'
  du-opt5        .p1    '(global optimum, BARON certificate)'
  eg_all_s       .p3    '(global optimum?, SCIP certificate)'
  eg_disc2_s     .p1    ''
  eg_disc_s      .p1    ''
  eg_int_s       .p1    ''
  elf            .p1    '(global optimum, BARON certificate)'
  eniplac        .p2    ''
  enpro48        .p1    '(global optimum, BARON certificate)'
  enpro48pb      .p1    '(global optimum, BARON certificate)'
  enpro56        .p1    '(global optimum, BARON certificate)'
  enpro56pb      .p1    '(global optimum, BARON certificate)'
  ex1221         .p1    '(global optimum, BARON certificate)'
  ex1222         .p1    '(global optimum, BARON certificate)'
  ex1223         .p1    '(global optimum, BARON certificate)'
  ex1223a        .p1    '(global optimum, BARON certificate)'
  ex1223b        .p1    '(global optimum, BARON certificate)'
  ex1224         .p1    '(global optimum, BARON certificate)'
  ex1225         .p1    '(global optimum, BARON certificate)'
  ex1226         .p1    '(global optimum, BARON certificate)'
  ex1233         .p1    '(global optimum, LINDOGLOBAL certificate)'
  ex1243         .p1    '(global optimum, BARON certificate)'
  ex1244         .p1    '(global optimum, ???)'
  ex1252         .p1    '(global optimum, BARON certificate)'
  ex1252a        .p1    '(global optimum, BARON certificate)'
  ex1263         .p1    '(global optimum, BARON certificate)'
  ex1263a        .p1    '(global optimum, BARON certificate)'
  ex1264         .p1    '(global optimum, BARON certificate)'
  ex1264a        .p1    '(global optimum, BARON certificate)'
  ex1265         .p1    '(global optimum, BARON certificate)'
  ex1265a        .p1    '(global optimum, BARON certificate)'
  ex1266         .p1    '(global optimum, BARON certificate)'
  ex1266a        .p1    '(global optimum, BARON certificate)'
  ex3            .p1    '(global optimum, BARON certificate)'
  ex3pb          .p1    '(global optimum, BARON certificate)'
  ex4            .p1    '(global optimum, BARON certificate)'
  fac1           .p1    '(global optimum, BARON certificate)'
  fac2           .p1    '(global optimum, BARON certificate)'
  fac3           .p1    '(global optimum, BARON certificate)'
  feedtray       .p1    '(global optimum, BARON certificate)'
  feedtray2      .p1    '(global optimum, BARON certificate)'
  fo7_2          .p1    '(global optimum, ???)'
  fo7            .p1    '(global optimum, ???)'
  fo8            .p1    '(global optimum, ???)'
  fo9            .p1    '(global optimum, ???)'
  fo7_ar25_1     .p1    '(global optimum, ???)'
  fo7_ar2_1      .p1    '(global optimum, ???)'
  fo7_ar3_1      .p1    '(global optimum, ???)'
  fo7_ar4_1      .p1    '(global optimum, ???)'
  fo7_ar5_1      .p1    '(global optimum, ???)'
  fo8_ar25_1     .p1    '(global optimum, ???)'
  fo8_ar2_1      .p1    '(global optimum, ???)'
  fo8_ar3_1      .p1    '(global optimum, ???)'
  fo8_ar4_1      .p1    '(global optimum, ???)'
  fo8_ar5_1      .p1    '(global optimum, ???)'
  fo9_ar25_1     .p1    '(global optimum, ???)'
  fo9_ar2_1      .p1    '(global optimum, ???)'
  fo9_ar3_1      .p1    '(global optimum, ???)'
  fo9_ar4_1      .p1    '(global optimum, ???)'
  fo9_ar5_1      .p1    '(global optimum, ???)'
  fuel           .p1    '(global optimum, BARON certificate)'
  fuzzy          .p2    ''
  gasnet         .p1    ''
  gastrans       .p1    '(global optimum, BARON certificate)'
  gbd            .p1    '(global optimum, BARON certificate)'
  gear           .p1    '(global optimum, BARON certificate)'
  gear2          .p1    '(global optimum, BARON certificate)'
  gear3          .p1    '(global optimum, BARON certificate)'
  gear4          .p1    '(global optimum, BARON certificate)'
  ghg_1veh       .p1    '(global optimum, BARON and LINDOGLOBAL certificate)'
  ghg_2veh       .p1    ''
  ghg_3veh       .p1    ''
  hda            .p2    ''
  johnall        .p1    '(global optimum, BARON certificate)'
  gkocis         .p1    '(global optimum, BARON certificate)'
  lop97ic        .p2    ''
  lop97icx       .p2    '(global optimum, SCIP certificate)'
  m3             .p1    '(global optimum, BARON certificate)'
  m6             .p1    ''
  m7             .p1    ''
  m7_ar25_1      .p1    '(global optimum, ???)'
  m7_ar2_1       .p1    '(global optimum, ???)'
  m7_ar3_1       .p1    '(global optimum, ???)'
  m7_ar4_1       .p1    '(global optimum, ???)'
  m7_ar5_1       .p1    '(global optimum, ???)'
  meanvarx       .p1    '(global optimum, ???)'
  mbtd           .p2    ''
  meanvarxsc     .p1    '(global optimum, BARON certificate)'
  minlphix       .p1    '(global optimum, LINDOGLOBAL certificate)'
  hmittelman     .p1    '(global optimum, BARON certificate)'
  netmod_dol1    .p1
  netmod_dol2    .p1
  netmod_kar1    .p1
  netmod_kar2    .p1
  no7_ar25_1     .p1    '(global optimum, ???)'
  no7_ar2_1      .p1    '(global optimum, ???)'
  no7_ar3_1      .p1    '(global optimum, ???)'
  no7_ar4_1      .p1    '(global optimum, ???)'
  no7_ar5_1      .p1    '(global optimum, ???)'
  nous1          .p1    '(global optimum, LINDOGLOBAL certificate)'
  nous2          .p1    '(global optimum, BARON certificate)'
  nuclear14      .p1    ''
  nuclear14a     .p1    ''
  nuclear14b     .p4    ''
  nuclear25      .p1    ''
  nuclear25a     .p1    ''
  nuclear25b     .p4    ''
  nuclear49      .p1    ''
  nuclear49a     .p1    ''
  nuclear49b     .p2    ''
  nuclearva      .p2    '(global optimum, LINDOGLOBAL certificate)'
  nuclearvb      .p1	'(global optimum, LINDOGLOBAL certificate)'
  nuclearvc      .p1	'(global optimum, LINDOGLOBAL certificate)'
  nuclearvd      .p3	''
  nuclearve      .p1	'(global optimum, LINDOGLOBAL certificate)'
  nuclearvf      .p2	'(global optimum, LINDOGLOBAL certificate)'
  nvs01          .p1    '(global optimum, BARON certificate)'
  nvs02          .p1    '(global optimum, BARON certificate)'
  nvs03          .p1    '(global optimum, BARON certificate)'
  nvs04          .p1    '(global optimum, BARON certificate)'
  nvs05          .p1    '(global optimum, LINDOGLOBAL certificate)'
  nvs06          .p1    '(global optimum, BARON certificate)'
  nvs07          .p1    '(global optimum, BARON certificate)'
  nvs08          .p1    '(global optimum, BARON certificate)'
  nvs09          .p1    '(global optimum, LINDOGLOBAL certificate)'
  nvs10          .p1    '(global optimum, BARON certificate)'
  nvs11          .p1    '(global optimum, BARON certificate)'
  nvs12          .p1    '(global optimum, BARON certificate)'
  nvs13          .p1    '(global optimum, BARON certificate)'
  nvs14          .p1    '(global optimum, BARON certificate)'
  nvs15          .p1    '(global optimum, BARON certificate)'
  nvs16          .p1    '(global optimum, BARON certificate)'
  nvs17          .p1    '(global optimum, BARON certificate)'
  nvs18          .p1    '(global optimum, BARON certificate)'
  nvs19          .p1    '(global optimum, BARON certificate)'
  nvs20          .p1    '(global optimum, BARON certificate)'
  nvs21          .p1    '(global optimum, BARON certificate)'
  nvs22          .p1    '(global optimum, LINDOGLOBAL certificate)'
  nvs23          .p1    '(global optimum, BARON certificate)'
  nvs24          .p1    '(global optimum, ???)'
  o7             .p1    '(global optimum, ???)'
  o7_2           .p1    '(global optimum, ???)'
  o7_ar25_1      .p1    '(global optimum, ???)'
  o7_ar2_1       .p1    '(global optimum, ???)'
  o7_ar3_1       .p1    '(global optimum, ???)'
  o7_ar4_1       .p1    '(global optimum, ???)'
  o7_ar5_1       .p1    '(global optimum, ???)'
  o8_ar4_1       .p1    '(global optimum, ???)'
  o9_ar4_1       .p1    '(global optimum, ???)'
  oaer           .p1    '(global optimum, BARON certificate)'
  oil            .p1    '(global optimum, ???)'
  oil2           .p1    '(global optimum, ???)'
  ortez          .p1    '(global optimum, BARON certificate)'
  parallel       .p1    '(global optimum, BARON certificate)'
  pb302035       .p1    ''
  pb302055       .p1    ''
  pb302075       .p1    ''
  pb302095       .p1    ''
  pb351535       .p1    ''
  pb351555       .p1    ''
  pb351575       .p1    ''
  pb351595       .p1    ''
  prob02         .p1    '(global optimum, BARON certificate)'
  prob03         .p1    '(global optimum, BARON certificate)'
  prob10         .p1    '(global optimum, LINDOGLOBAL certificate)'
  product        .p1    ''
  product2       .p2    ''
  procsel        .p1    '(global optimum, BARON certificate)'
  pump           .p2    '(global optimum, BARON certificate)'
  qap            .p1    '(global optimum, ???)'
  qapw           .p1    '(global optimum, ???)'
  ravem          .p1    '(global optimum, BARON certificate)'
  ravempb        .p1    '(global optimum, BARON certificate)'
  risk2b         .p1    '(global optimum, BARON certificate)'
  risk2bpb       .p1    '(global optimum, BARON certificate)'
  saa_2          .p4    ''
  sep1           .p1    '(global optimum, BARON certificate)'
  space25        .p1    ''
  space25a       .p1    ''
  space960       .p1    ''
  spectra2       .p1    '(global optimum, BARON certificate)'
  spring         .p1    '(global optimum, BARON certificate)'
  st_e13         .p1    '(global optimum, BARON certificate)'
  st_e14         .p1    '(global optimum, BARON certificate)'
  st_e15         .p1    '(global optimum, BARON certificate)'
  st_e27         .p1    '(global optimum, BARON certificate)'
  st_e29         .p1    '(global optimum, BARON certificate)'
  st_e31         .p1    '(global optimum, BARON certificate)'
  st_e32         .p1    '(global optimum, BARON certificate)'
  st_e35         .p1    '(global optimum, BARON certificate)'
  st_e36         .p1    '(global optimum, BARON certificate)'
  st_e38         .p1    '(global optimum, BARON certificate)'
  st_e40         .p1    '(global optimum, BARON certificate)'
  st_miqp1       .p1    '(global optimum, BARON certificate)'
  st_miqp2       .p1    '(global optimum, BARON certificate)'
  st_miqp3       .p1    '(global optimum, BARON certificate)'
  st_miqp4       .p1    '(global optimum, BARON certificate)'
  st_miqp5       .p1    '(global optimum, BARON certificate)'
  st_test1       .p1    '(global optimum, BARON certificate)'
  st_test2       .p1    '(global optimum, BARON certificate)'
  st_test3       .p1    '(global optimum, BARON certificate)'
  st_test4       .p1    '(global optimum, BARON certificate)'
  st_test5       .p1    '(global optimum, BARON certificate)'
  st_test6       .p1    '(global optimum, BARON certificate)'
  st_test8       .p1    '(global optimum, BARON certificate)'
  st_testgr1     .p1    '(global optimum, BARON certificate)'
  st_testgr3     .p1    '(global optimum, BARON certificate)'
  st_testph4     .p1    '(global optimum, BARON certificate)'
  stockcycle     .p2    '(global optimum, LINDOGLOBAL certificate)'
  super1         .p1    ''
  super2         .p1    ''
  super3         .p1    ''
  super3t        .p2    ''
  synheat        .p1    '(global optimum, LINDOGLOBAL certificate)'
  synthes1       .p1    '(global optimum, BARON certificate)'
  synthes2       .p1    '(global optimum, BARON certificate)'
  synthes3       .p1    '(global optimum, BARON certificate)'
  tln2           .p1    '(global optimum, BARON certificate)'
  tln4           .p1    '(global optimum, BARON certificate)'
  tln5           .p1    '(global optimum, LINDOGLOBAL certificate)'
  tln6           .p2    '(global optimum, LINDOGLOBAL certificate)'
  tln7           .p2    ''
  tln12          .p3    '(global optimum, CBC certificate)'
  tloss          .p1    '(global optimum, BARON certificate)'
  tls2           .p1    '(global optimum, BARON certificate)'
  tls4           .p3    '(global optimum, reforumlation of tln4 which is solved to global optimality)'
  tls5           .p4    '(global optimum, reforumlation of tln5 which is solved to global optimality)'
  tls6           .p3    '(global optimum, reforumlation of tln6 which is solved to global optimality)'
  tls7           .p3    ''
  tls12          .p1    ''
  tltr           .p1    '(global optimum, BARON certificate)'
  uselinear      .p1    ''
  util           .p1    '(global optimum, BARON certificate)'
  var_con10      .p1    ''
  var_con5       .p1    ''
  waste          .p2    ''
  water3         .p4    ''
  water4         .p3    ''
  waterful2      .p4    ''
  waters         .p5    ''
  watersbp       .p4    ''
  watersym1      .p4    ''
  watersym2      .p2    '(global optimum?, SCIP certificate)'
  waterx         .p3    ''
  waterz         .p3    '(global optimum?, COUENNE certificate)'
  windfac        .p1    '(global optimum, LINDOGLOBAL certificate)'
/;

set xp(m) extra run parameter for scalar version /
        johnall     codex=1
        qap         codex=3
 /;


Set error01(s)   sequence numbers with no model
    error02(m)   models with no sequence number
    error03(s)   models with no application
    error04(d)   applications with no models
    error05(m,p) best known without a point reference
    error06(m)   models without a reference
    error07(r)   reference without an author
    error08(a)   authors without reference
    error09(m)   more than one best known solution
    error10(r)   references without a model
    error11(m)   point with max ordinal is not optimum point;

error01(s)   = sum(ms(m,s),1)=0;
error01('13') = no;
error01('45') = no;
error01('95') = no;
error01('118') = no;
error02(m)   = sum(ms(m,s),1)=0;
error03(s)   = sum(ds(d,s),1)=0;
error04(d)   = sum(ds(d,s),1)=0;
error05(m,p) = bk(m,p) and not mp(m,p);
error06(m)   = sum(mr(m,r),1)=0;
error07(r)   = sum(ar(a,r),1)=0;
error08(a)   = sum(ar(a,r),1)=0;
error09(m)   = sum(bk(m,p),1)>1;
error10(r)   = sum(mr(m,r),1)=0;
error11(m)   = smax(bk(m,p),ord(p)) <> smax(mp(m,p),ord(p));
error11('chp_partload') = no;

abort$card(error01) error01;
abort$card(error02) error02;
abort$card(error03) error03;
abort$card(error04) error04;
abort$card(error05) error05;
abort$card(error06) error06;
abort$card(error07) error07;
abort$card(error08) error08;
abort$card(error09) error09;
abort$card(error11) error11;
display error10;

parameter report;

report("#applications")      = card(d);
report("#models")            = card(s);
report("#points")            = sum(mp(m,p),1);
report("#models with IS")    = sum(bk(m,p),1);
report("#models with no IS") = sum(m$(sum(bk(m,p),1)=0),1);
report("#models with no RS") = sum(m$(sum(mp(m,p),1)=0),1);

set nointsol(m) model with no best known solution
    norelsol(m) model with no point at all;

nointsol(m) = sum(bk(m,p),1)=0;
norelsol(m) = sum(mp(m,p),1)=0;

option report:0:0:1, nointsol:0:0:1, norelsol:0:0:1;
display report, nointsol, norelsol;

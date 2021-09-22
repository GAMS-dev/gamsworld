# MPEC Library

MPECLib is a collection of Mathematical Programs with Equilibrium Constraints. The purpose of the collection is to provide algorithm developers with a large and varied set of both theoretical and practical test models.

#CONELib Organization

The models
==========

The original algebraic models have been translated into a scalar
format in which documentation and comments have been removed, sets and
set operators have been unrolled, and the original data and structure
of the model have disappeared.  Note that by structure, we mean
structure as seen by the human (e.g. a variable inflow(CITIES), an
equation flowbalance(NODES), or a parameter capacity(UNITS)).  The
structure of the model as seen by the solver is completely unchanged
by the translation into scalar form.  This property is crucial in
algorithm testing.

The controlling model mpeclib.gms
=================================

The library contains a special GAMS model mpeclib.gms that helps to
organize the models in MPECLib.  In it, all models are matched with
proper references to contributors, publications references, source,
etc.

The mpeclib.gms model also helps to create execution scripts useful in
manipulating the library.  For example, the following piece of GAMS
code creates a batch script that runs models that come from the book
"Handbook of Test Problems in Local and Global Optimization" by
Floudas e.a. with solver MPECDUMP:

file brs 'batch run script' / 'rs.bat' /;
loop {m$mr(m,"r21"),
  put brs "gams " m.tl:0 " mpec=mpecdump " /;
  put$xp(m) xp.te(m);
  put /;
};

#Scalar Models

The collection has initially been created by combining small-scale models from the literature with large industrial models. We invite everybody to make contributions to the collection.

To allow the inclusion of industrial models whose data or formulation are proprietary, the models have been translated into a scalar format in which documentation and comments have been removed, sets and set operators have been unrolled, and the original data and structure of the model have disappeared. 
Most industrial users will accept that translated confidential models can be made publicly available. The scalar models are not intended to serve as guidelines for good modeling practice.

#Translation Service

The scalar models are maintained in the GAMS language. In order to make the models widely available GAMS World offers an automatic translation service which converts any GAMS model into a scalar model of a particular language (including AMPL, GAMS, LINGO, MATLAB etc.)

The actual translation is done by a special 'solver' called convert that comes with every GAMS system, so users with a recent GAMS system can do the scalar model generation locally.


# MPECLib Model Statistics

Total number of models:  92

|Name               |Total #Eqns|Total #Vars |Total #NZ |isLinked|Equil #Eqns|Equil #NZ |
|-------------------|-----------|-----------:|---------:|-------:|----------:|---------:|
|aampec_1			|70	 		|72	 	 	 |430		|no	 	 |68	 	 |380    	|
|aampec_2			|70	 		|72	 	 	 |430		|no	 	 |68	 	 |380    	|
|aampec_3			|70	 		|72	 	 	 |430		|no	 	 |68	 	 |380    	|
|aampec_4			|70	 		|72	 	 	 |430		|no	 	 |68	 	 |380    	|
|aampec_5			|70	 		|72	 	 	 |430		|no	 	 |68	 	 |380    	|
|aampec_6			|70	 		|72	 	 	 |430		|no	 	 |68	 	 |380    	|
|bard1				|5	 		|6	 	 	 |14		|no	 	 |4	 		 |11	    |
|bard2				|10	 		|13	 	 	 |33		|no	 	 |8	 		 |24	    |
|bard3				|6	 		|7	 	 	 |19		|no	 	 |4	 		 |12	    |
|bartruss3_0		|29	 		|36	 	 	 |96		|no	 	 |26	 	 |82	    |
|bartruss3_1		|29	 		|36	 	 	 |96		|no	 	 |11	 	 |52	    |
|bartruss3_2		|29	 		|36	 	 	 |96		|yes 	 |6	 		 |30	    |
|bartruss3_3		|27	 		|34	 	 	 |90		|no	 	 |26	 	 |82	    |
|bartruss3_4		|27	 		|34	 	 	 |90		|no	 	 |11	 	 |52	    |
|bartruss3_5		|27	 		|34	 	 	 |90		|yes 	 |6	 		 |30	    |
|dempe				|4	 		|5	 	 	 |9			|no	 	 |3	 		 |6	    	|
|dempe2				|3	 		|4	 	 	 |7			|no	 	 |2	 		 |4	    	|
|desilva			|5	 		|7	 	 	 |13		|no	 	 |4	 		 |8	    	|
|ex9_1_1m			|8	 		|9	 	 	 |23		|no	 	 |7	 		 |19	    |
|ex9_1_2m			|6	 		|7	 	 	 |14		|no	 	 |5	 		 |11	    |
|ex9_1_3m			|7	 		|9	 	 	 |23		|no	 	 |6	 		 |20	    |
|ex9_1_4m			|5	 		|6	 	 	 |12		|no	 	 |4	 		 |9	    	|
|finda10t			|229 		|211 	 	 |877		|yes 	 |176 		 |694    	|
|finda10s			|229 		|211 	 	 |877		|yes 	 |176 		 |694    	|
|finda10l			|229 		|211 	 	 |877		|yes 	 |176 		 |746    	|
|finda15t			|229 		|211 	 	 |877		|yes 	 |176 		 |694    	|
|finda15s			|229 		|211 	 	 |877		|yes 	 |176 		 |694    	|
|finda15l			|229 		|211 	 	 |877		|yes 	 |176 		 |746    	|
|finda30t			|229 		|211 	 	 |877		|yes 	 |176 		 |694    	|
|finda30s			|229 		|211 	 	 |877		|yes 	 |176 		 |694    	|
|finda30l			|229 		|211 	 	 |877		|yes 	 |176 		 |746    	|
|finda35t			|229 		|211 	 	 |877		|yes 	 |176 		 |694    	|
|finda35s			|229 		|211 	 	 |877		|yes 	 |176 		 |694    	|
|finda35l			|229 		|211 	 	 |877		|yes 	 |176 		 |746    	|
|findb10t			|203 		|198 	 	 |812		|yes 	 |176 		 |694    	|
|findb10s			|203 		|198 	 	 |812		|yes 	 |176 		 |694    	|
|findb10l			|203 		|198 	 	 |812		|yes 	 |176 		 |746    	|
|findb15t			|203 		|198 	 	 |812		|yes 	 |176 		 |694    	|
|findb15s			|203 		|198 	 	 |812		|yes 	 |176 		 |694    	|
|findb15l			|203 		|198 	 	 |812		|yes 	 |176 		 |746    	|
|findb30t			|203 		|198 	 	 |812		|yes 	 |176 		 |694    	|
|findb30s			|203 		|198 	 	 |812		|yes 	 |176 		 |694    	|
|findb30l			|203 		|198 	 	 |812		|yes 	 |176 		 |746    	|
|findb35t			|203 		|198 	 	 |812		|yes 	 |176 		 |694    	|
|findb35s			|203 		|198 	 	 |812		|yes 	 |176 		 |694    	|
|findb35l			|203 		|198 	 	 |812		|yes 	 |176 		 |746    	|
|findc10t			|187 		|190 	 	 |772		|yes 	 |176 		 |694    	|
|findc10s			|187 		|190 	 	 |772		|yes 	 |176 		 |694    	|
|findc10l			|187 		|190 	 	 |772		|yes 	 |176 		 |746    	|
|findc15t			|187 		|190 	 	 |772		|yes 	 |176 		 |694    	|
|findc15s			|187 		|190 	 	 |772		|yes 	 |176 		 |694    	|
|findc15l			|187		|190 	 	 |772		|yes	 |176 		 |746    	|
|findc30t			|187		|190	 	 |772		|yes	 |176 		 |694    	|
|findc30s			|187		|190	 	 |772		|yes	 |176 		 |694    	|
|findc30l			|187		|190	 	 |772		|yes	 |176 		 |746    	|
|findc35t			|187		|190	 	 |772		|yes	 |176 		 |694    	|
|findc35s			|187		|190	 	 |772		|yes	 |176 		 |694    	|
|findc35l			|187		|190	 	 |772		|yes	 |176 		 |746    	|
|frictionalblock_1	|682		|682	 	 |2690		|no		 |681 		 |268    	|
|frictionalblock_2	|1154   	|1154	 	 |4618		|no		 |1153		 |4616   	|
|frictionalblock_3	|854		|854	 	 |3338		|no		 |853 		 |3336   	|
|frictionalblock_4	|979		|979	 	 |3776		|no		 |978 		 |3774   	|
|frictionalblock_5	|1025   	|1025	 	 |3924		|no		 |1024		 |3922   	|
|frictionalblock_6	|2855   	|2855	 	 |11364		|no		 |2854		 |11362  	|
|fjq1				|7	    	|8		 	 |21		|no		 |6	 		 |18	    |
|gauvin				|3	    	|4		 	 |8			|no		 |2	 		 |5	    	|
|hq1				|2	    	|3		 	 |5			|no		 |1	 		 |2	    	|
|kehoe1				|11	    	|11		 	 |49		|yes	 |5	 		 |27	    |
|kehoe2				|11	    	|11		 	 |49		|yes	 |5	 		 |27	    |
|kehoe3				|11	    	|11		 	 |49		|yes	 |5	 		 |27	    |
|kojshin3			|5	    	|5		 	 |18		|no		 |4	 		 |16	    |
|kojshin4			|5	    	|5		 	 |18		|no		 |4	 		 |16	    |
|nappi_a			|98	    	|116	 	 |330		|yes	 |41	 	 |187		| 
|nappi_b			|98	    	|116	 	 |330		|yes	 |41	 	 |187		| 
|nappi_c			|98	    	|116	 	 |330		|yes	 |41	 	 |187		| 
|nappi_d			|98	    	|116	 	 |330		|yes	 |41	 	 |187		| 
|mss				|5	    	|6		 	 |26		|no		 |4	 		 |20	    |
|outrata31			|5	    	|6		 	 |17		|no		 |4	 		 |14	    |
|outrata32			|5	    	|6		 	 |18		|no		 |4	 		 |14	    |
|outrata33			|5	    	|6		 	 |18		|no		 |4	 		 |14	    |
|outrata34			|5	    	|6		 	 |20		|no		 |4	 		 |14	    |
|oz3				|6	    	|7		 	 |19		|yes	 |4	 		 |10	    |
|qvi				|3	    	|5		 	 |9			|no		 |2	 		 |4	    	|
|three				|4	    	|3		 	 |8			|yes	 |1	 		 |2	    	|
|tinloi				|101		|105	 	 |10201		|no		 |100 		 |10100  	|
|tinque_dhs2		|4834   	|4805	 	 |65315		|yes	 |3552		 |18944  	|
|tinque_dns2		|4834   	|4805	 	 |65315		|yes	 |3552		 |18944  	|
|tinque_mis2		|4066   	|4037	 	 |48803		|yes	 |2976		 |15872  	|
|tinque_pss2		|4578   	|4549	 	 |59555		|yes	 |3360		 |17920  	|
|tinque_sws2		|4578   	|4549	 	 |59555		|yes	 |3360		 |17920  	|
|tinque_sws3		|5699   	|5671	 	 |67397		|yes	 |4480		 |25760  	|
|tollmpec			|2377   	|2380	 	 |10488		|no		 |2376		 |10481  	|
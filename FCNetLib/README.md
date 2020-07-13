# gamsworld

The project collects a selection of models formerly featured on http://www.gamsworld.org/. This part containts FCNetLib (Fixed Cost Network Flow Library) model statistics, FCNet GAMS models and helper GAMS programs.

FCNetLib is a collection of instances for the fixed cost network flow problem. The purpose of the collection is to provide a unified presentation of the data instances together with some GAMS models that implement a straight forward IP formulation and a more sophisticated version that utilizes the GAMS/BCH facility. A class of known cuts (dicuts) is implemented as well as the local branching heuristic within the BCH framework.

The original models were in XPRESS-Modeler format and collected by Laurence Wolsey and collagues at Universite Catholique de Louvain. They were translated by Alexey Koptsevich into GAMS.

**Reference**

Uncapacitated Fixed Charge Networks, by Laurence Wolsey (#TODO link: http://www.core.ucl.ac.be:16080/wolsey/ufcn.htm out of date)
F. Ortega and L.A. Wolsey. A branch-and-cut algorithm for the single-commodity, uncapacitated, fixed-charge network flow problem. Networks 41 (2003), no. 3, 143--158. (discussion paper with detailed results)

**Additional Information**

GAMS BCH Facility (https://www.gams.com/latest/docs/UG_SolverUsage.html#ADVANCED_USAGE_BCHFacility)
Global Optimization and the GAMS Branch-and-Cut Facility (talk at CORS/INFORMS Joint International Meeting May 2004, Banff, Canada) (#TODO https://www.gams.com/presentations/present_bch_global.pdf link out of date)
Benchmarking GAMS BCHF (detailed description of work done for the CORS talk by Alexey Koptsevich) (http://gamsworld.org/performance/fcnetlib/kopts/bench-bchf.htm)

**FCNetLib Model Statistics** (#TODO)

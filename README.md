# gamsworld

Collection of model libraries from www.gamsworld.org

# AMPLBookLib

The project collects the models formerly featured on http://www.gamsworld.org/performance/amplbook/. The project contains the scalar and indexed GAMS models.

The AMPL Book Library is a collection of math programming models from The AMPL Book. AMPL: [A Modeling Language for Mathematical Programming](http://www.ampl.com/BOOK/index.html) 
by Robert Fourer, David Gay, and Brian Kernighan. The GAMS models were translated by Andre Savistky as is from the original 
[AMPL source](https://ampl.com/resources/the-ampl-book/example-files/).

The raw GAMS models were converted into GAMS scalar format using the [CONVERT](https://www.gams.com/latest/docs/S_CONVERT.html) facility. For models with multiple solves, 
only the first solve instance is translated.

**Reference**

Fourer, R., Gay, D.M., and Kernighan, B.W. The AMPL Book. AMPL: A Modeling Language for Mathematical Programming, Duxbury Press, Brooks/Cole Publishing Company, 2002.

# CONE Library

CONELib is a collection of CONIC Programming (in particular second order cone programming - SOCP) models. 
The purpose of the collection is to provide algorithm developer of cone optimization codes with a large and varied set of both theoretical and practical test models.


# Fixed Cost Network Flow Library FCNetLib

The project collects a selection of models formerly featured on http://www.gamsworld.org/. This part containts FCNetLib model statistics, FCNet GAMS models and helper GAMS programs.

FCNetLib is a collection of instances for the fixed cost network flow problem. The purpose of the collection is to provide a unified presentation of the data instances together with some GAMS models that implement a straight forward IP formulation and a more sophisticated version that utilizes the GAMS/BCH facility. A class of known cuts (dicuts) is implemented as well as the local branching heuristic within the BCH framework.

The original models were in XPRESS-Modeler format and collected by Laurence Wolsey and collagues at Universite Catholique de Louvain. They were translated by Alexey Koptsevich into GAMS.

**Reference**

Uncapacitated Fixed Charge Networks, by Laurence Wolsey

F. Ortega and L.A. Wolsey. A branch-and-cut algorithm for the single-commodity, uncapacitated, fixed-charge network flow problem. Networks 41 (2003), no. 3, 143--158. (discussion paper with detailed results)

# GLOBALLib Model Statistics

GLOBALLib is a collection of Nonlinear Programming models. The purpose of the collection is to provide algorithm developer of global optimization codes with a large and varied set of both theoretical and practical test models.
GLOBALLib has been integrated into MINLPLib. This is an old version that is no-longer maintained.


# LINLib Model Statistics

The project collects the models formerly featured on http://www.gamsworld.org/performance/amplbook/. The project contains the scalar and indexed GAMS models.

The AMPL Book Library is a collection of math programming models from The AMPL Book. AMPL: [A Modeling Language for Mathematical Programming](http://www.ampl.com/BOOK/index.html) 
by Robert Fourer, David Gay, and Brian Kernighan. The GAMS models were translated by Andre Savistky as is from the original 
[AMPL source](https://ampl.com/resources/the-ampl-book/example-files/).

The raw GAMS models were converted into GAMS scalar format using the [CONVERT](https://www.gams.com/latest/docs/S_CONVERT.html) facility. For models with multiple solves, 
only the first solve instance is translated.

**Reference**

Fourer, R., Gay, D.M., and Kernighan, B.W. The AMPL Book. AMPL: A Modeling Language for Mathematical Programming, Duxbury Press, Brooks/Cole Publishing Company, 2002. 

# MacMOOP - A Collection of Multiobjective Optimization Testproblems

MacMOOP is a collection of multiobjective optimizatin testproblems from Sven Leyffer. The GAMS models were translated by Andre Savistky as is from the original AMPL source.(https://wiki.mcs.anl.gov/leyffer/index.php/MacMOOP)

The raw GAMS models were converted into GAMS scalar format using the CONVERT facility. For models with multiple solves, only the first solve instance is translated.

# MINLP Library

MINLPLib is a collection of Mixed Integer Nonlinear Programming models. 
The purpose of the collection is to provide algorithm developers with a large and varied set of both theoretical and practical test models.

# MIPLIB 2010

The MIPLIB is a famous library of mixed integer programming problem instances. 

This copy of the MIPLIB 2010 features the instances in a format conventient for GAMS users. 

The original MIPLIB 2010 with more statistical information, classifications, references and so on on the individual instances can be found at http://www.miplib.zib.de.

# MPEC Library

MPECLib is a collection of Mathematical Programs with Equilibrium Constraints. The purpose of the collection is to provide algorithm developers with a large and varied set of both theoretical and practical test models.

# MPL Model Library of Mathematical Programming Models

The MPL Library is a collection of math programming models from MPL Model Library. The GAMS models were translated by Andre Savistky as is from the original MPL source.(http://www.maximalsoftware.com/modellib/)

The raw GAMS models were converted into GAMS scalar format using the CONVERT facility. For models with multiple solves, only the first solve instance is translated. 

# Princeton Library of Nonlinear Programming Models

PrincetonLib is a collection of nonlinear programming (NLP) models. The purpose of the collection is to provide algorithm developers of nonlinear optimization codes with a large and varied set of both theoretical and practical test models. 
It also aids in the software quality assurance process by providing a set of tools to facilitate benchmarking and performance analysis.

The original models were in AMPL format and collected by Robert Vanderbei and colleagues at Princeton University. They were translated by Andre Savitsky into GAMS.

The raw GAMS models were converted into GAMS scalar format using the CONVERT facility. For models with multiple solves, only the first solve instance is translated.

**Reference** 

Nonlinear Optimization Models, collected by Robert Vanderbei and colleagues. (https://vanderbei.princeton.edu/ampl/nlmodels/)

# Selected Continuous Global Optimization Test Problems

The models shown are a collection of continuous global optimization test problems originally used in

A Numerical Evaluation of Several Stochastic Algorithms on Selected Continuous Global Optimization Test Problems, Ali, Khompatraporn and Zabinsky, Journal of Global Optimization (2005) 31:635-672. (https://link.springer.com/article/10.1007/s10898-004-9972-2)

The model were made available by the authors of the article in their original C format. The models were translated into GAMS by Andre Savitsky. 
In order to minimize the chance of translation errors we have been sampling random points and evaluating the objective of these points. 
The results have been exported and were compared in a C program (testme.c) that used the original C model. 
Minor adjustments to the C models have been done and users of the C files are advised to compare them with versions distributed by the authors of the paper. 
The raw GAMS models were converted into GAMS scalar format using the CONVERT facility. The global optimum reported in the paper has been added to the scalar model.

The GAMS model translations have an additional objective variable which models the objective function to optimize. This results in the models having variables and number of nonzeroes which are one greater than the C implementations. 
The model statistics listed are from the original C model representations as they are given in the reference above.

# XPRESS Model Library of Mathematical Programming Models

The XPRESS Library is a collection of math programming models (LP and MIP) from XPRESS Model Library (Examples at ttps://www.fico.com/en/products/fico-xpress-optimization).
The GAMS models were translated by Andre Savistky as is from the original XPRESS source.

The raw GAMS models were converted into GAMS scalar format using the CONVERT facility. For models with multiple solves, only the first solve instance is translated.

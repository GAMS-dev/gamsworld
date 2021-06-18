             PrincetonLib Library and Tool Set
             ---------------------------------

AP 2004/11/30


Note: this collection is still a work in progress.

PrincetonLib is a collection of over 1200 nonlinear programming 
(NLP) models. The purpose of the collection is to provide algorithm 
developers of nonlinear optimization codes with a large and varied 
set of both theoretical and practical test models. It also aids 
in the software quality assurance process by providing a set of 
tools to facilitate benchmarking and performance analysis.

The original models were in AMPL format and collected by Robert 
Vanderbei and colleagues at Princeton University. They were translated 
by Andre Savitsky into GAMS. The raw GAMS models were converted 
into GAMS scalar format using the CONVERT facility. For models 
with multiple solves, only the first solve instance is translated.

Reference:

Nonlinear Optimization Models, collected by Robert Vanderbei and 
colleagues, online at http://www.orfe.princeton.edu/~rvdb/ampl/nlmodels/


Objective:
----------
These instructions illustrate a set of tools in the form of GAMS 
models which facilitate benchmarking and performance analysis 
using the PrincetonLib Library of models.


Overview Instructions:
----------------------
Unzip the princeton.zip file in an arbitrary folder. This will
yield the following files and folders:

   readme.txt         - this document
   gams/              - scalar model collection sorted by group name
   gtools/            - a collection of benchmarking/performance 
                        analysis tools in the form of GAMS models

The gtools/ folder contains the following files

   gtools/groups.inc  - a list of the model groups
   gtools/models.inc  - a list of completed models within each group
   gtools/solveb.gms  - model to facilitate benchmarking using the
                        BENCH solver
   gtools/solvebx.gms - model to facilitate benchmarking using the
                        BENCH solver in conjunction with the 
                        EXAMINER utility for solution verification 

See the tools section for more details on how to use the latter
models.


Tools:
------

[Note]

Running any of these tools you may encounter messages
that the copy of a particular file failed. This is due to the fact
that not all models have been translated yet. But this does not 
impede the use of the tools for the current completed test set.
 

1) solveb.gms:

Go to the gtools/ directory and run

 > gams solveb.gms (to run all models) 

or
 
 > gams solveb.gms --group=cute (or other particular group)

This model makes use of the BENCH solver to facilitate benchmarking
of several solvers over a large test set. For details on BENCH, see
http://www.gams.com/dd/docs/solvers/bench.pdf.

The model generates a set of trace files, which can be used for submission
via the PAVER server. For more information on trace files, see
http://www.gamsworld.org/performance/trace.htm.

The trace files generated are called (solver).pvr and any pre-existing
files are appended to. For example, running with the solver CONOPT, 
generates a file called conopt.pvr.

The trace files can be submitted to the PAVER server at
http://www.gamsworld.org/performance/paver/ for online performance
analysis and visualization.

User Options:

The user can specify options (solvers or command-line options used)
in the model solveb.gms as needed. See the model for details,
specifically around line 30.


2) solvebx.gms

Go to the gtools/ directory and run

 > gams solvebx.gms (to run all models) 

or
 
 > gams solvebx.gms --group=cute (or other particular group)

Similar to solveb.gms, this model makes use of the BENCH solver, but
in conjunction with the EXAMINER utility for automatic solution
verification. Solution verfication includes primal and dual
feasibility and primal and dual complementary slackness 
checks. For more information on EXAMINER, see
http://www.gams.com/solvers/examiner.pdf.

PAVER trace files are created as with the solveb.gms model. In
addition, PAVER trace files for the EXAMINER run are generated 
as well. 

Solves that fail the EXAMINER receive a model status of 14 (no
solution returned) and a solve status of 4 (terminated by solver).
The trace files are named (solver)-ex.pvr and the solver within the
trace file is indicated by (solver)-ex.

Comparisons of outcomes of a single solver with and without EXAMINER
can be useful in uncovering anomalies in solution quality.


3) Solvers with option files

Both models solveb.gms and solvebx.gms allow solvers to be used
with solver option files. For example, suppose we wish to
compare a solver with different options to solver defaults. 

For example, suppose we wish to use CONOPT in default mode  
and with scaling switched off. We generated a conopt.opt
option file with the relevant entry

lsscal f

Within the solveb.gms model we would list the solvers as

$set solvers conopt conopt.1

The resulting model run generated the PAVER trace files
conopt.pvr and conopt-1.pvr. The first file is the trace
file for the default CONOPT run and the latter for the run
using the conopt.opt trace file. The solver within that file
will be called CONOPT-1.

Additional runs with multiple option files are possible. For
example, suppose we have option files conopt.opt and conopt.op2
and conopt.o99. Then we would specify the solvers as

$set solvers conopt conopt.2 conopt.99

with similar trace files generated.

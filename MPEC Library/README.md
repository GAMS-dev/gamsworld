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
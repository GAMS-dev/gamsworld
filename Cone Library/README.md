# CONE Library

CONELib is a collection of CONIC Programming (in particular second order cone programming - SOCP) models. 
The purpose of the collection is to provide algorithm developer of cone optimization codes with a large and varied set of both theoretical and practical test models.

#CONELib Organization

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
identified by their unique name (e.g. nb_l2_bessel.gms).

The points
==========

For a model in the CONELib we will collect points. A point represent
some solution to a problem. The header of the file containing a point
explains the details of the point. It might contain the contributor of
the point, the solution value, the algorithm which was used to produce
the point, and the CPU time for finding the point. The points are part
of the library. They are indentified by the model name plus the
extension .p1, .p2, .p3, ... (e.g. nb_l2_bessel.p1).

In order to start a model from a certain point you can run gams in the
following way:

	  gams nb_l2_bessel u1=nb_l2_bessek.p1

The controlling model conelib.gms
===================================

The library also contains the GAMS model conelib.gms that helps
organizing the models and points in the CONELib. All models are
matched with propper references to contributors, publications, and
application areas.

#Scalar Models

The collection has initially been created by combining small- to medium-scale models from the literature. We invite everybody to make contributions to the collection and are particularly interested in industrial models.

Since many industrial models are based on proprietary information, the models have been translated into a scalar format in which documentation and comments have been removed, sets and set operators have been unrolled, and the original data and structure of the model have disappeared. Most industrial users will accept that translated confidential models can be made publicly available. The scalar models are not intended to serve as guidelines for good modeling practice.

The collection has models from different stages of the modeling process. This means that not all models are nicely formulated and some can be extremely difficult to solve. Some models may also be infeasible. This variety should help provide models that can help test the reliability of a solver in an extreme but probably very practical environment.

#Translation Service

The scalar models are maintained in the GAMS language. In order to make the models widely available GAMS World offers an automatic translation service which converts any GAMS model into a scalar model of a particular language (including AMPL, BARON, GAMS, LINGO, MINOPT etc.)
The actual translation is done by a special 'solver' called convert that comes with every GAMS system. So users with a recent GAMS system can do the scalar model generation with their GAMS system.
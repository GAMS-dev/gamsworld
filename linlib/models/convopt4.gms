$ontext ===================================================================

FILENAME: convtopt4.gms

PURPOSE:  Converts traceopt=4 GAMS tracefile so that model formulation
          and solver are in the first field. Replaces any '.' by an '_' 
          and merges formulation and solver:

          >   formulation_solver

          Also creates indivual trace files for each reform/solver pair,
          which can be used with the Ptools routines. When using the 
          Ptools with these files users must use the --topt4=yes option.

REMARKS:  Makes use of the Posix Unix utilities available with GAMS 20.6 
          and later.

INPUT:    

--intrace:  input trace file name (traceopt4)
--outtrace: output trace filename with all reform/solver combinations

$offtext ==================================================================

$if not set intrace  $set intrace  all.trc
$if not set outtrace $set outtrace out.trc

*=== Create script files
$echo s/\./_/ > sedscript
$echo { print $1"_"$4","$2","$3","$4","$5","$6","$7","$8","$9} > awkscript

$call sed -f sedscript %intrace% > tr1.trc
$call cat tr1.trc | awk -F , -f awkscript > %outtrace%


*=== Get all formulation_solver combinations
$call cut -d, -f1 %outtrace% | sort | uniq > formsol

$onecho > crgettrace.gms
Set form_sol /
$onempty
$include formsol
$offempty
/;

file fout /gettrace.gms/; 
put fout;

loop(form_sol,
   put '$call grep ' form_sol.tl:0 ' %outtrace% > ' form_sol.tl:0 '.trc' /;
);
$offecho


$call gams crgettrace.gms
$call gams gettrace.gms

$call echo +++ > log
$call echo +++ There are >> log
$call wc formsol | cut -c1-12 >> log
$call echo +++ different reform/solver combinations. >> log
$call echo +++ >> log

*=== Delete script and tmeporary files 
$call rm tr1.trc sedscript awkscript formsol crgettrace.gms gettrace.gms

*=== Output results
execute 'head log';

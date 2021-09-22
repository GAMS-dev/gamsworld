$ontext ===============================================================

FILENAME: chkntrace.gms

PURPOSE:  
Checks to see if the data file has the generic format by checking if
non-comment lines have at least 8 fields.

If the data file is not a valid, then an error
status file 'err_[--ntrace1]' is created with an error message.

REQUIRED INPUTS:
--ntrace1: GAMS trace file to be checked

old if statement:
   if ($1 !~ /^*/ && $1 ~ /[a-z][A-Z][0-9]/){

$offtext ===============================================================


*=== Generic Data File Format ===============================

*=== CHECK 1: Check if ntrace file has enough columns
$onecho > %gams.scrdir%chkntrace.awk
{
   i = i+1;
   if ($1 !~ /^*/){
      if (NF < 8){
         print "ERROR: line " i " of your GENERIC data file appears to have " NF " column(s), i.e. too few!" > "err_%ntrace1%.txt"
      }
      if (NF > 8){
         print "ERROR: line " i " of your GENERIC data file appears to have " NF " column(s), i.e. too many!" > "err_%ntrace1%.txt"
      }
   }
}
$offecho 
$call awk -F, -f %gams.scrdir%chkntrace.awk %ntrace1% 




*=== CHECK 2: Check if ntrace file contains data outside of [E-20, E+20] range
$onecho > %gams.scrdir%chkrng.awk
{
   i = i+1;
   for(j=0; (j<NF); j=j+1){
      if($(j+1) > 10^20 && $(j+1) ~ /^[0-9]/ && (j+1)>5 ){
         print "ERROR: Overflow - line " i " column " j+1 " of your ntrace file appears to contain a value > 1.0E+20!" >> "err_%ntrace1%.txt"
      }
      if($(j+1) < -10^20 && $(j+1) ~ /^[0-9]/ && (j+1)>5 ){
         print "ERROR: Underflow - line " i " column " j+1 "of your ntrace file appears to contain a value < 1.0E-20!" >> "err_%ntrace1%.txt"
      }
   }
}
$offecho 
$call awk -F, -f %gams.scrdir%chkrng.awk %ntrace1% 



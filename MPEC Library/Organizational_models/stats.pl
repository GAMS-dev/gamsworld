#!/usr/bin/perl

$\ = "\n";
die "usage: $0 <basename>"  unless ($#ARGV >= 0);

$base = shift;

# print "input file was $base";

$phase = 0;
($Nequ, $Nvar, $Nnz) = (-1, -1, -1);
open (INPUT, "$base.log") || die "Could not open $base.log: $!";
while (<INPUT>) {
    chop;
#    print;
    if (0 == $phase) {
	if (m/--- Generating model/) {
	    $phase = 1;
	}
    }
    elsif (1 == $phase) {
	m/--- *(\d*) rows, (\d*) columns, and (\d*) non-zeroes/ &&
	    do {$Nequ = $1; $Nvar = $2; $Nnz = $3;};
	if ($_ eq "model successfully initialized.") {
	    $phase = 2;
	}
    }
    else {
      SWITCH: {
	  m/Nx = *(\d*)/ && do {$Nx = $1; last SWITCH;};
	  m/Ny = *(\d*)/ && do {$Ny = $1; last SWITCH;};
	  m/Nh = *(\d*)/ && do {$Nh = $1; last SWITCH;};
	  m/Ng = *(\d*)/ && do {$Ng = $1; last SWITCH;};
	  m/Nf = *(\d*)/ && do {$Nf = $1; last SWITCH;};
	  m/nnz_df = *(\d*)/ && do {$nnz_df = $1; last SWITCH;};
	  m/nnz_dh = *(\d*)/ && do {$nnz_dh = $1; last SWITCH;};
	  m/nnz_dg = *(\d*)/ &&
	      do {$nnz_dg = $1; $ue = $Nh+$Ng;
		  $uv = $Nx; $unz = $nnz_dh+$nnz_dg;
		  if ($Ng > 0) {
		      $lnk = 1;
		  }
		  else { $lnk = 0;}
		  if ($Nf == $Ny) {
		      $le = $Nf;
		  }
		  $lnz = $nnz_df;
#				    print "$base,$ue,$uv,$unz,$lnk,$le,$lnz#";
		  print "$base,$Nequ,$Nvar,$Nnz,$lnk,$le,$lnz#";
		  exit 0;}
      }				# end switch
    }
}				# end while <INPUT>
if (0 == $phase) {
    print "$base,-1,-1,-1,-1,-1,-1#";
}
else {
    print "$base,-9,-9,-9,-9,-9,-9#";
}

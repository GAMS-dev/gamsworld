#!/bin/bash

source `dirname $BASH_SOURCE`/common.sh
pushd ${SRCDIR}  > /dev/null || exit 1

/bin/rm -rf ${TMPLIB}
mkdir ${TMPLIB} || exit 2
FILES="truss.gms bartruss3_?.gms"
for i in ${FILES} ; do
    echo "Copying MacMPEC/$i to ${TMPLIB}"
    /bin/cp MacMPEC/$i ${TMPLIB} || { echo "could not cp MacMPEC/$i" ; exit 4; }
done

cd ${TMPLIB} || { echo "Could not cd to ${TMPLIB}" ; exit 6 ; }

echo terminate  > convert.opt
echo objvar    >> convert.opt
echo gmsinsert >> convert.opt

for d in 0 1 2 3 4 5 ; do
    gmsname="bartruss3_${d}.gms"
    gamscmd="gams ${gmsname} mpec=convert optfile=1"
    echo $gamscmd
    $gamscmd
    [ -r gams.gms ] || { echo "convert didn't make gams.gms" ; exit 6 ; }
    mv -f gams.gms $gmsname
    zip -m ../mpeclib.zip $gmsname
    rm *.lst $gmsname
done

mlist="dempe dempe2"
for d in 1 2 3 4 ; do mlist="$mlist outrata3$d" ; done

for m in $mlist ; do
    gmsname="$m.gms"
    gamscmd="gams ${gmsname} mpec=convert optfile=1"
    echo $gamscmd
    $gamscmd
    [ -r gams.gms ] || { echo "convert didn't make gams.gms" ; exit 6 ; }
    mv -f gams.gms $gmsname
    zip -m ../mpeclib.zip $gmsname
    rm *.lst $gmsname
done

popd > /dev/null

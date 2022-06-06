#!/bin/bash

source `dirname $BASH_SOURCE`/common.sh
pushd ${SRCDIR}  > /dev/null || exit 1

/bin/rm -rf ${TMPLIB}
mkdir ${TMPLIB} || exit 2

mlist="desilva"
for d in 1 2 3 ; do mlist="$mlist bard$d" ; done
mlist="$mlist fjq1 gauvin hq1 mss oz3 qvi three"
mlist="$mlist tinloi"
for m in $mlist ; do
    echo "Copying misc2/$m.gms to ${TMPLIB}"
    /bin/cp misc2/$m.gms ${TMPLIB} || { echo "could not cp misc2/$m.gms" ; exit 4; }
done

flist="tinloi.dat"
for f in $flist ; do
    echo "Copying misc2/$f to ${TMPLIB}"
    /bin/cp misc2/$f ${TMPLIB} || { echo "could not cp misc2/$f" ; exit 4; }
done

cd ${TMPLIB} || { echo "Could not cd to ${TMPLIB}" ; exit 6 ; }

echo terminate  > convert.opt
echo objvar    >> convert.opt
echo gmsinsert >> convert.opt

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

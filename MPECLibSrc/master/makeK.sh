#!/bin/bash

source `dirname $BASH_SOURCE`/common.sh
pushd ${SRCDIR}  > /dev/null || exit 1

/bin/rm -rf ${TMPLIB}
mkdir ${TMPLIB} || exit 2
FILES="kehoe?.gms kojshin?.gms"
for i in ${FILES} ; do
    echo "Copying misc/$i to ${TMPLIB}"
    /bin/cp misc/$i ${TMPLIB} || { echo "could not cp misc/$i" ; exit 4; }
done

cd ${TMPLIB} || { echo "Could not cd to ${TMPLIB}" ; exit 6 ; }

echo terminate  > convert.opt
echo objvar    >> convert.opt
echo gmsinsert >> convert.opt

for dset in kehoe1 kehoe2 kehoe3 kojshin3 kojshin4 ; do
    gmsname="${dset}.gms"
    gamscmd="gams ${gmsname} mpec=convert optfile=1"
    echo $gamscmd
    $gamscmd
    [ -r gams.gms ] || { echo "convert didn't make gams.gms" ; exit 6 ; }
    mv -f gams.gms $gmsname
    zip -m ../mpeclib.zip $gmsname
    rm *.lst $gmsname
done

popd > /dev/null

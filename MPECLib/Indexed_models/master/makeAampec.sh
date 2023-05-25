#!/bin/bash

source `dirname $BASH_SOURCE`/common.sh
pushd ${SRCDIR}  > /dev/null || exit 1

/bin/rm -rf ${TMPLIB}
mkdir ${TMPLIB} || exit 2
FILES="aampec.gms"
for i in ${FILES} ; do
    echo "Copying misc/$i to ${TMPLIB}"
    /bin/cp misc/$i ${TMPLIB} || { echo "could not cp misc/$i" ; exit 4; }
done

cd ${TMPLIB} || { echo "Could not cd to ${TMPLIB}" ; exit 6 ; }

echo terminate  > convert.opt
echo objvar    >> convert.opt
echo gmsinsert >> convert.opt
gamscmd="gams aampec.gms mpec=convert optfile=1"

for cas in 1 2 3 4 5 6 ; do
    userx="--household=$cas"
    gmsname="aampec_${cas}.gms"
    echo $gamscmd $userx
    $gamscmd $userx
    [ -r gams.gms ] || { echo "convert didn't make gams.gms" ; exit 6 ; }
    mv gams.gms $gmsname
    zip -m ../mpeclib.zip $gmsname
    rm *.lst $gmsname
#    rm *.lst
done

popd > /dev/null

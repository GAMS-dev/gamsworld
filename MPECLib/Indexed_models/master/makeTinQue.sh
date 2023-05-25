#!/bin/bash

source `dirname $BASH_SOURCE`/common.sh
pushd ${SRCDIR}  > /dev/null || exit 1

/bin/rm -rf ${TMPLIB}
mkdir ${TMPLIB} || exit 2
FILES="tinque2.gms tinque3.gms"
# FILES="$FILES "
for i in ${FILES} tinquedat_????.gms tinque???.dat ; do
    echo "Copying misc/$i to ${TMPLIB}"
    /bin/cp misc/$i ${TMPLIB} || { echo "could not cp misc/$i" ; exit 4; }
done

cd ${TMPLIB} || { echo "Could not cd to ${TMPLIB}" ; exit 6 ; }

echo terminate  > convert.opt
echo objvar    >> convert.opt
echo gmsinsert >> convert.opt

gamscmd="gams tinque2.gms mpec=convert optfile=1"
for dset in dhs2 dns2 mis2 pss2 sws2 ; do
    userx="--dataset=$dset"
    gmsname="tinque_${dset}.gms"
    echo $gamscmd $userx
    $gamscmd $userx
    [ -r gams.gms ] || { echo "convert didn't make gams.gms" ; exit 6 ; }
    mv gams.gms $gmsname
    zip -m ../mpeclib.zip $gmsname
    rm *.lst $gmsname
#    rm *.lst
done

gamscmd="gams tinque3.gms mpec=convert optfile=1"
for dset in sws3 ; do
    userx="--dataset=$dset"
    gmsname="tinque_${dset}.gms"
    echo $gamscmd $userx
    $gamscmd $userx
    [ -r gams.gms ] || { echo "convert didn't make gams.gms" ; exit 6 ; }
    mv gams.gms $gmsname
    zip -m ../mpeclib.zip $gmsname
    rm *.lst $gmsname
#    rm *.lst
done

popd > /dev/null

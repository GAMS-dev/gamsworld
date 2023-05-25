#!/bin/bash

source `dirname $BASH_SOURCE`/common.sh
pushd ${SRCDIR}  > /dev/null || exit 1

if [ ! -f mpeclib.zip ] ; then
    echo "file mpeclib.zip does not exist; exiting . . . "
    exit 1
fi
/bin/rm -rf ${TMPLIB}
mkdir ${TMPLIB} || exit 2

cd master || { echo "cannot cd to master directory; exiting . . " ; exit 2 ; }
MASTERFILES="changelog.txt mpecscript.gms mpeclib.gms"
MASTERFILES="$MASTERFILES mpecstat.gms mpechtm.gms stats.pl"
MASTERFILES="$MASTERFILES mpecdefs.htm"
for i in ${MASTERFILES} ; do
    cmd="zip -f ../mpeclib.zip $i"
    echo $cmd
    eval $cmd
    cmd="/bin/cp $i ../${TMPLIB}"
    echo $cmd
    eval $cmd || { echo "could not cp $i" ; exit 4; }
done
cd ..

echo "Hit enter"
read

for i in bibtex/gams.bib  ; do
    echo "Copying $i to ${TMPLIB}"
    /bin/cp $i ${TMPLIB} || { echo "could not cp $i" ; exit 5; }
done

cd ${TMPLIB} || { echo "Could not cd to ${TMPLIB}" ; exit 6 ; }
gams mpeclib || { echo "Could not run mpeclib" ; exit 8 ; }
zip -f ../mpeclib.zip mpecref.inc

popd > /dev/null
echo "Done freshening mpeclib.zip"

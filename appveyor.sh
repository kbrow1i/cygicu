#!/bin/sh

exit_status=0

cygport icu.cygport fetch prep compile || exit_status=1

if [ $exit_status -eq 0 ]
then
    cygport icu.cygport test
    cygport icu.cygport inst pkg || exit_status=1
fi

tar -cJf artifact.tar.xz icu-*/dist icu-*/log

exit $exit_status

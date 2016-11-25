#!/bin/sh
set -e

echo fetching...
cygport icu.cygport fetch

echo prepping...
cygport icu.cygport prep

echo compiling...
cygport icu.cygport compile

echo installing...
cygport icu.cygport inst

echo packaging...
cygport icu.cygport pkg

echo testing...
cygport icu.cygport test

tar -cJf artifact.tar.xz icu-*/dist icu-*/log

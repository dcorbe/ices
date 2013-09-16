#!/bin/sh


if [ "$1" = "clean" ]
then 
    if [ -f "Makefile" ]
    then
	make distclean
    fi

    echo "rm -rf *~ *.scan aclocal.m4 *.cache *.log config.h *.in configure"
          rm -rf *~ *.scan aclocal.m4 *.cache *.log config.h *.in configure
else
    aclocal
    autoconf
    autoheader
    automake
fi

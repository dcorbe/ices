#!/bin/sh


if [ "$1" = "clean" ]
then 
    if [ -f "Makefile" ]
    then
	make distclean
    fi

    echo "rm -rf *~ *.scan aclocal.m4 *.cache *.log config.h *.in configure ltmain.sh config.*"
          rm -rf *~ *.scan aclocal.m4 *.cache *.log config.h *.in configure ltmain.sh config.*
else
    autoreconf -fi
fi

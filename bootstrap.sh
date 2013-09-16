#!/bin/sh


if [ "$1" = "clean" ]
then 
    if [ -f "Makefile" ]
    then
	make distclean
    fi

    echo "rm -rf *~ *.scan aclocal.m4 *.cache *.log config.h *.in configure ltmain.sh config.* depcomp compile install-sh missing m4/libtool.m4 m4/ltoptions.m4 m4/ltsugar.m4 m4/ltversion.m4 m4/lt~obsolete.m4"
          rm -rf *~ *.scan aclocal.m4 *.cache *.log config.h *.in configure ltmain.sh config.* depcomp compile install-sh missing m4/libtool.m4 m4/ltoptions.m4 m4/ltsugar.m4 m4/ltversion.m4 m4/lt~obsolete.m4
else
    autoreconf -fi
fi

if test "${CMTROOT}" = ""; then
  CMTROOT=/grid/fermiapp/minerva/software_releases/lcgcmake/lcg_61/external/cmt/v1r20p20090520/x86_64-slc6-gcc44-opt/CMT/v1r20p20090520; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
tempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then tempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt cleanup -sh -pack=CCProtonPi0 -version=${MINERVA_RELEASE} -path=/minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana $* >${tempfile}; . ${tempfile}
/bin/rm -f ${tempfile}


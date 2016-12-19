# echo "Setting CCProtonPi0 ${MINERVA_RELEASE} in /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /grid/fermiapp/minerva/software_releases/lcgcmake/lcg_61/external/cmt/v1r20p20090520/x86_64-slc6-gcc44-opt/CMT/v1r20p20090520
endif
source ${CMTROOT}/mgr/setup.csh

set tempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set tempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=CCProtonPi0 -version=${MINERVA_RELEASE} -path=/minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana  -no_cleanup $* >${tempfile}; source ${tempfile}
/bin/rm -f ${tempfile}


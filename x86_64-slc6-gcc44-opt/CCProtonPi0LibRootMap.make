#-- start of make_header -----------------

#====================================
#  Document CCProtonPi0LibRootMap
#
#   Generated Sat Nov 12 11:08:00 2016  by rgalindo
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_CCProtonPi0LibRootMap_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0LibRootMap_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_CCProtonPi0LibRootMap

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0LibRootMap = $(CCProtonPi0_tag)_CCProtonPi0LibRootMap.make
cmt_local_tagfile_CCProtonPi0LibRootMap = $(bin)$(CCProtonPi0_tag)_CCProtonPi0LibRootMap.make

else

tags      = $(tag),$(CMTEXTRATAGS)

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0LibRootMap = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0LibRootMap = $(bin)$(CCProtonPi0_tag).make

endif

include $(cmt_local_tagfile_CCProtonPi0LibRootMap)
#-include $(cmt_local_tagfile_CCProtonPi0LibRootMap)

ifdef cmt_CCProtonPi0LibRootMap_has_target_tag

cmt_final_setup_CCProtonPi0LibRootMap = $(bin)setup_CCProtonPi0LibRootMap.make
#cmt_final_setup_CCProtonPi0LibRootMap = $(bin)CCProtonPi0_CCProtonPi0LibRootMapsetup.make
cmt_local_CCProtonPi0LibRootMap_makefile = $(bin)CCProtonPi0LibRootMap.make

else

cmt_final_setup_CCProtonPi0LibRootMap = $(bin)setup.make
#cmt_final_setup_CCProtonPi0LibRootMap = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0LibRootMap_makefile = $(bin)CCProtonPi0LibRootMap.make

endif

cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)CCProtonPi0setup.make

#CCProtonPi0LibRootMap :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'CCProtonPi0LibRootMap'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = CCProtonPi0LibRootMap/
#CCProtonPi0LibRootMap::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
##
rootmapfile = CCProtonPi0Lib.rootmap
ROOTMAP_DIR = ../$(tag)
fulllibname = libCCProtonPi0Lib.$(shlibsuffix)

CCProtonPi0LibRootMap :: ${ROOTMAP_DIR}/$(rootmapfile)
	@:

${ROOTMAP_DIR}/$(rootmapfile) :: $(bin)$(fulllibname)
	@echo 'Generating rootmap file for $(fulllibname)'
	cd ../$(tag);$(genmap_cmd) -i $(fulllibname) -o ${ROOTMAP_DIR}/$(rootmapfile) $(CCProtonPi0LibRootMap_genmapflags)

install :: CCProtonPi0LibRootMapinstall
CCProtonPi0LibRootMapinstall :: CCProtonPi0LibRootMap

uninstall :: CCProtonPi0LibRootMapuninstall
CCProtonPi0LibRootMapuninstall :: CCProtonPi0LibRootMapclean

CCProtonPi0LibRootMapclean ::
	@echo 'Deleting $(rootmapfile)'
	@rm -f ${ROOTMAP_DIR}/$(rootmapfile)

#-- start of cleanup_header --------------

clean :: CCProtonPi0LibRootMapclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(CCProtonPi0LibRootMap.make) $@: No rule for such target" >&2
#	@echo "#CMT> Warning: $@: No rule for such target" >&2; exit
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibRootMap.make): $@: File no longer generated" >&2; exit 0; fi
else
.DEFAULT::
	$(echo) "(CCProtonPi0LibRootMap.make) PEDANTIC: $@: No rule for such target" >&2
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibRootMap.make): $@: File no longer generated" >&2; exit 0;\
	 elif test $@ = "$(cmt_final_setup)" -o\
	 $@ = "$(cmt_final_setup_CCProtonPi0LibRootMap)" ; then\
	 found=n; for s in 1 2 3 4 5; do\
	 sleep $$s; test ! -f $@ || { found=y; break; }\
	 done; if test $$found = n; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibRootMap.make) PEDANTIC: $@: Seems to be missing. Ignore it for now" >&2; exit 0 ; fi;\
	 elif test `expr $@ : '.*/'` -ne 0 ; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibRootMap.make) PEDANTIC: $@: Seems to be a missing file. Please check" >&2; exit 2 ; \
	 else\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibRootMap.make) PEDANTIC: $@: Seems to be a fake target due to some pattern. Just ignore it" >&2 ; exit 0; fi
endif

CCProtonPi0LibRootMapclean ::
#-- end of cleanup_header ---------------

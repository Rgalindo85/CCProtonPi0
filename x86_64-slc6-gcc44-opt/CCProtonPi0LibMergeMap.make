#-- start of make_header -----------------

#====================================
#  Document CCProtonPi0LibMergeMap
#
#   Generated Sat Nov 12 11:08:02 2016  by rgalindo
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_CCProtonPi0LibMergeMap_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0LibMergeMap_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_CCProtonPi0LibMergeMap

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0LibMergeMap = $(CCProtonPi0_tag)_CCProtonPi0LibMergeMap.make
cmt_local_tagfile_CCProtonPi0LibMergeMap = $(bin)$(CCProtonPi0_tag)_CCProtonPi0LibMergeMap.make

else

tags      = $(tag),$(CMTEXTRATAGS)

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0LibMergeMap = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0LibMergeMap = $(bin)$(CCProtonPi0_tag).make

endif

include $(cmt_local_tagfile_CCProtonPi0LibMergeMap)
#-include $(cmt_local_tagfile_CCProtonPi0LibMergeMap)

ifdef cmt_CCProtonPi0LibMergeMap_has_target_tag

cmt_final_setup_CCProtonPi0LibMergeMap = $(bin)setup_CCProtonPi0LibMergeMap.make
#cmt_final_setup_CCProtonPi0LibMergeMap = $(bin)CCProtonPi0_CCProtonPi0LibMergeMapsetup.make
cmt_local_CCProtonPi0LibMergeMap_makefile = $(bin)CCProtonPi0LibMergeMap.make

else

cmt_final_setup_CCProtonPi0LibMergeMap = $(bin)setup.make
#cmt_final_setup_CCProtonPi0LibMergeMap = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0LibMergeMap_makefile = $(bin)CCProtonPi0LibMergeMap.make

endif

cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)CCProtonPi0setup.make

#CCProtonPi0LibMergeMap :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'CCProtonPi0LibMergeMap'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = CCProtonPi0LibMergeMap/
#CCProtonPi0LibMergeMap::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_rootmap_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>.rootmap file into a single
# <project>.rootmap file in the (lib) install area
# If no InstallArea is present the fragment is dummy


.PHONY: CCProtonPi0LibMergeMap CCProtonPi0LibMergeMapclean

# default is already '#'
#genmap_comment_char := "'#'"

rootMapRef    := ../$(tag)/CCProtonPi0Lib.rootmap

ifdef CMTINSTALLAREA
rootMapDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedRootMap := $(rootMapDir)/$(project).rootmap
stampRootMap  := $(rootMapRef).stamp
else
rootMapDir    := ../$(tag)
mergedRootMap := 
stampRootMap  :=
endif

CCProtonPi0LibMergeMap :: $(stampRootMap) $(mergedRootMap)
	@:

.NOTPARALLEL : $(stampRootMap) $(mergedRootMap)

$(stampRootMap) $(mergedRootMap) :: $(rootMapRef)
	@echo "Running merge_rootmap  CCProtonPi0LibMergeMap" 
	$(merge_rootmap_cmd) --do-merge \
         --input-file $(rootMapRef) --merged-file $(mergedRootMap)

CCProtonPi0LibMergeMapclean ::
	$(cleanup_silent) $(merge_rootmap_cmd) --un-merge \
         --input-file $(rootMapRef) --merged-file $(mergedRootMap) ;
	$(cleanup_silent) $(remove_command) $(stampRootMap)
libCCProtonPi0Lib_so_dependencies = ../x86_64-slc6-gcc44-opt/libCCProtonPi0Lib.so
#-- start of cleanup_header --------------

clean :: CCProtonPi0LibMergeMapclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(CCProtonPi0LibMergeMap.make) $@: No rule for such target" >&2
#	@echo "#CMT> Warning: $@: No rule for such target" >&2; exit
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibMergeMap.make): $@: File no longer generated" >&2; exit 0; fi
else
.DEFAULT::
	$(echo) "(CCProtonPi0LibMergeMap.make) PEDANTIC: $@: No rule for such target" >&2
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibMergeMap.make): $@: File no longer generated" >&2; exit 0;\
	 elif test $@ = "$(cmt_final_setup)" -o\
	 $@ = "$(cmt_final_setup_CCProtonPi0LibMergeMap)" ; then\
	 found=n; for s in 1 2 3 4 5; do\
	 sleep $$s; test ! -f $@ || { found=y; break; }\
	 done; if test $$found = n; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibMergeMap.make) PEDANTIC: $@: Seems to be missing. Ignore it for now" >&2; exit 0 ; fi;\
	 elif test `expr $@ : '.*/'` -ne 0 ; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibMergeMap.make) PEDANTIC: $@: Seems to be a missing file. Please check" >&2; exit 2 ; \
	 else\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibMergeMap.make) PEDANTIC: $@: Seems to be a fake target due to some pattern. Just ignore it" >&2 ; exit 0; fi
endif

CCProtonPi0LibMergeMapclean ::
#-- end of cleanup_header ---------------

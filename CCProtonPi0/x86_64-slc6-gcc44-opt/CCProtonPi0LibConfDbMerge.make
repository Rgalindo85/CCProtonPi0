#-- start of make_header -----------------

#====================================
#  Document CCProtonPi0LibConfDbMerge
#
#   Generated Fri Dec 16 10:22:31 2016  by rgalindo
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_CCProtonPi0LibConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0LibConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_CCProtonPi0LibConfDbMerge

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0LibConfDbMerge = $(CCProtonPi0_tag)_CCProtonPi0LibConfDbMerge.make
cmt_local_tagfile_CCProtonPi0LibConfDbMerge = $(bin)$(CCProtonPi0_tag)_CCProtonPi0LibConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0LibConfDbMerge = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0LibConfDbMerge = $(bin)$(CCProtonPi0_tag).make

endif

include $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge)
#-include $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge)

ifdef cmt_CCProtonPi0LibConfDbMerge_has_target_tag

cmt_final_setup_CCProtonPi0LibConfDbMerge = $(bin)setup_CCProtonPi0LibConfDbMerge.make
#cmt_final_setup_CCProtonPi0LibConfDbMerge = $(bin)CCProtonPi0_CCProtonPi0LibConfDbMergesetup.make
cmt_local_CCProtonPi0LibConfDbMerge_makefile = $(bin)CCProtonPi0LibConfDbMerge.make

else

cmt_final_setup_CCProtonPi0LibConfDbMerge = $(bin)setup.make
#cmt_final_setup_CCProtonPi0LibConfDbMerge = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0LibConfDbMerge_makefile = $(bin)CCProtonPi0LibConfDbMerge.make

endif

cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)CCProtonPi0setup.make

#CCProtonPi0LibConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'CCProtonPi0LibConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = CCProtonPi0LibConfDbMerge/
#CCProtonPi0LibConfDbMerge::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_genconfDb_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>_confDb.py file into a single
# <project>_merged_confDb.py file in the (python) install area
# Note that <project> is massaged to get a valid python module name
# (ie: remove dots and dashes)

.PHONY: CCProtonPi0LibConfDbMerge CCProtonPi0LibConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}$(shared_install_subdir)
confDbRef    := /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0/CCProtonPi0Lib_confDb.py
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/python/$(subst .,_,$(subst -,_,$(project)))_merged_confDb.py

CCProtonPi0LibConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  CCProtonPi0LibConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

CCProtonPi0LibConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libCCProtonPi0Lib_so_dependencies = ../x86_64-slc6-gcc44-opt/libCCProtonPi0Lib.so
#-- start of cleanup_header --------------

clean :: CCProtonPi0LibConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(CCProtonPi0LibConfDbMerge.make) $@: No rule for such target" >&2
#	@echo "#CMT> Warning: $@: No rule for such target" >&2; exit
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConfDbMerge.make): $@: File no longer generated" >&2; exit 0; fi
else
.DEFAULT::
	$(echo) "(CCProtonPi0LibConfDbMerge.make) PEDANTIC: $@: No rule for such target" >&2
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConfDbMerge.make): $@: File no longer generated" >&2; exit 0;\
	 elif test $@ = "$(cmt_final_setup)" -o\
	 $@ = "$(cmt_final_setup_CCProtonPi0LibConfDbMerge)" ; then\
	 found=n; for s in 1 2 3 4 5; do\
	 sleep $$s; test ! -f $@ || { found=y; break; }\
	 done; if test $$found = n; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConfDbMerge.make) PEDANTIC: $@: Seems to be missing. Ignore it for now" >&2; exit 0 ; fi;\
	 elif test `expr $@ : '.*/'` -ne 0 ; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConfDbMerge.make) PEDANTIC: $@: Seems to be a missing file. Please check" >&2; exit 2 ; \
	 else\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConfDbMerge.make) PEDANTIC: $@: Seems to be a fake target due to some pattern. Just ignore it" >&2 ; exit 0; fi
endif

CCProtonPi0LibConfDbMergeclean ::
#-- end of cleanup_header ---------------

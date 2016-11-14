#-- start of make_header -----------------

#====================================
#  Document CCProtonPi0LibConf
#
#   Generated Sat Nov 12 11:08:03 2016  by rgalindo
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_CCProtonPi0LibConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0LibConf_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_CCProtonPi0LibConf

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0LibConf = $(CCProtonPi0_tag)_CCProtonPi0LibConf.make
cmt_local_tagfile_CCProtonPi0LibConf = $(bin)$(CCProtonPi0_tag)_CCProtonPi0LibConf.make

else

tags      = $(tag),$(CMTEXTRATAGS)

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0LibConf = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0LibConf = $(bin)$(CCProtonPi0_tag).make

endif

include $(cmt_local_tagfile_CCProtonPi0LibConf)
#-include $(cmt_local_tagfile_CCProtonPi0LibConf)

ifdef cmt_CCProtonPi0LibConf_has_target_tag

cmt_final_setup_CCProtonPi0LibConf = $(bin)setup_CCProtonPi0LibConf.make
#cmt_final_setup_CCProtonPi0LibConf = $(bin)CCProtonPi0_CCProtonPi0LibConfsetup.make
cmt_local_CCProtonPi0LibConf_makefile = $(bin)CCProtonPi0LibConf.make

else

cmt_final_setup_CCProtonPi0LibConf = $(bin)setup.make
#cmt_final_setup_CCProtonPi0LibConf = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0LibConf_makefile = $(bin)CCProtonPi0LibConf.make

endif

cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)CCProtonPi0setup.make

#CCProtonPi0LibConf :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'CCProtonPi0LibConf'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = CCProtonPi0LibConf/
#CCProtonPi0LibConf::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/genconfig_header
# Author: Wim Lavrijsen (WLavrijsen@lbl.gov)

# Use genconf.exe to create configurables python modules, then have the
# normal python install procedure take over.

.PHONY: CCProtonPi0LibConf CCProtonPi0LibConfclean

confpy  := CCProtonPi0LibConf.py
conflib := $(bin)$(library_prefix)CCProtonPi0Lib.$(shlibsuffix)
dbpy    := CCProtonPi0Lib_confDb.py
instdir := $(CMTINSTALLAREA)$(shared_install_subdir)/python/$(package)
product := $(instdir)/$(confpy)
initpy  := $(instdir)/__init__.py

ifdef GENCONF_ECHO
genconf_silent =
else
genconf_silent = $(silent)
endif

CCProtonPi0LibConf :: CCProtonPi0LibConfinstall

install :: CCProtonPi0LibConfinstall

CCProtonPi0LibConfinstall : /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0/$(confpy)
	@echo "Installing /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0 in /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/InstallArea/x86_64-slc6-gcc44-opt/python" ; \
	 $(install_command) --exclude="*.py?" --exclude="__init__.py" /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0 /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/InstallArea/x86_64-slc6-gcc44-opt/python ; \

/minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0/$(confpy) : $(conflib) /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0
	$(genconf_silent) $(genconfig_cmd)  -o /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0 -p $(package) \
	  --configurable-module=GaudiKernel.Proxy \
	  --configurable-default-name=Configurable.DefaultName \
	  --configurable-algorithm=ConfigurableAlgorithm \
	  --configurable-algtool=ConfigurableAlgTool \
	  --configurable-auditor=ConfigurableAuditor \
          --configurable-service=ConfigurableService \
	  -i ../$(tag)/$(library_prefix)CCProtonPi0Lib.$(shlibsuffix)

/minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0:
	@ if [ ! -d /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0 ] ; then mkdir -p /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0 ; fi ;

CCProtonPi0LibConfclean :: CCProtonPi0LibConfuninstall
	$(cleanup_silent) $(remove_command) /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0/$(confpy) /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/Ana/CCProtonPi0/genConf/CCProtonPi0/$(dbpy)

uninstall :: CCProtonPi0LibConfuninstall

CCProtonPi0LibConfuninstall ::
	@$(uninstall_command) /minerva/app/users/rgalindo/cmtuser/Minerva_v10r8p7/InstallArea/x86_64-slc6-gcc44-opt/python
libCCProtonPi0Lib_so_dependencies = ../x86_64-slc6-gcc44-opt/libCCProtonPi0Lib.so
#-- start of cleanup_header --------------

clean :: CCProtonPi0LibConfclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(CCProtonPi0LibConf.make) $@: No rule for such target" >&2
#	@echo "#CMT> Warning: $@: No rule for such target" >&2; exit
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConf.make): $@: File no longer generated" >&2; exit 0; fi
else
.DEFAULT::
	$(echo) "(CCProtonPi0LibConf.make) PEDANTIC: $@: No rule for such target" >&2
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConf.make): $@: File no longer generated" >&2; exit 0;\
	 elif test $@ = "$(cmt_final_setup)" -o\
	 $@ = "$(cmt_final_setup_CCProtonPi0LibConf)" ; then\
	 found=n; for s in 1 2 3 4 5; do\
	 sleep $$s; test ! -f $@ || { found=y; break; }\
	 done; if test $$found = n; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConf.make) PEDANTIC: $@: Seems to be missing. Ignore it for now" >&2; exit 0 ; fi;\
	 elif test `expr $@ : '.*/'` -ne 0 ; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConf.make) PEDANTIC: $@: Seems to be a missing file. Please check" >&2; exit 2 ; \
	 else\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0LibConf.make) PEDANTIC: $@: Seems to be a fake target due to some pattern. Just ignore it" >&2 ; exit 0; fi
endif

CCProtonPi0LibConfclean ::
#-- end of cleanup_header ---------------


#-- start of constituents_header ------

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

tags      = $(tag),$(CMTEXTRATAGS)

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile = $(CCProtonPi0_tag).make
cmt_local_tagfile = $(bin)$(CCProtonPi0_tag).make

#-include $(cmt_local_tagfile)
include $(cmt_local_tagfile)

#cmt_local_setup = $(bin)setup$$$$.make
#cmt_local_setup = $(bin)$(package)setup$$$$.make
#cmt_final_setup = $(bin)CCProtonPi0setup.make
cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)$(package)setup.make

#--------------------------------------------------------

#cmt_lock_setup = /tmp/lock$(cmt_lock_pid).make
#cmt_temp_tag = /tmp/tag$(cmt_lock_pid).make

#first :: $(cmt_local_tagfile)
#	@echo $(cmt_local_tagfile) ok
#ifndef QUICK
#first :: $(cmt_final_setup) ;
#else
#first :: ;
#endif

##	@bin=`$(cmtexe) show macro_value bin`

#$(cmt_local_tagfile) : $(cmt_lock_setup)
#	@echo "#CMT> Error: $@: No such file" >&2; exit 1
#$(cmt_local_tagfile) :
#	@echo "#CMT> Warning: $@: No such file" >&2; exit
#	@echo "#CMT> Info: $@: No need to rebuild file" >&2; exit

#$(cmt_final_setup) : $(cmt_local_tagfile) 
#	$(echo) "(constituents.make) Rebuilding $@"
#	@if test ! -d $(@D); then $(mkdir) -p $(@D); fi; \
#	  if test -f $(cmt_local_setup); then /bin/rm -f $(cmt_local_setup); fi; \
#	  trap '/bin/rm -f $(cmt_local_setup)' 0 1 2 15; \
#	  $(cmtexe) -tag=$(tags) show setup >>$(cmt_local_setup); \
#	  if test ! -f $@; then \
#	    mv $(cmt_local_setup) $@; \
#	  else \
#	    if /usr/bin/diff $(cmt_local_setup) $@ >/dev/null ; then \
#	      : ; \
#	    else \
#	      mv $(cmt_local_setup) $@; \
#	    fi; \
#	  fi

#	@/bin/echo $@ ok   

#config :: checkuses
#	@exit 0
#checkuses : ;

env.make ::
	printenv >env.make.tmp; $(cmtexe) check files env.make.tmp env.make

ifndef QUICK
all :: build_library_links
	$(echo) "(constituents.make) all done"
endif

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

dirs :: requirements
	@if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi
#	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
#	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

requirements :
	@if test ! -r requirements ; then echo "No requirements file" ; fi

build_library_links : dirs
	$(echo) "(constituents.make) Rebuilding library links"; \
	 $(build_library_links)
#	if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi; \
#	$(build_library_links)

makefiles : ;

.DEFAULT ::
	$(echo) "(constituents.make) $@: No rule for such target" >&2
#	@echo "#CMT> Warning: $@: Using default commands" >&2; exit

#	@if test "$@" = "$(cmt_lock_setup)"; then \
	#  /bin/rm -f $(cmt_lock_setup); \
	 # touch $(cmt_lock_setup); \
	#fi

#-- end of constituents_header ------
#-- start of group ------

all_groups :: all

all :: $(all_dependencies)  $(all_pre_constituents) $(all_constituents)  $(all_post_constituents)
	$(echo) "all ok."

#	@/bin/echo " all ok."

clean :: allclean

allclean ::  $(all_constituentsclean)
	$(echo) $(all_constituentsclean)
	$(echo) "allclean ok."

#	@echo $(all_constituentsclean)
#	@/bin/echo " allclean ok."

allclean :: makefilesclean

#-- end of group ------
#-- start of group ------

all_groups :: cmt_actions

cmt_actions :: $(cmt_actions_dependencies)  $(cmt_actions_pre_constituents) $(cmt_actions_constituents)  $(cmt_actions_post_constituents)
	$(echo) "cmt_actions ok."

#	@/bin/echo " cmt_actions ok."

clean :: allclean

cmt_actionsclean ::  $(cmt_actions_constituentsclean)
	$(echo) $(cmt_actions_constituentsclean)
	$(echo) "cmt_actionsclean ok."

#	@echo $(cmt_actions_constituentsclean)
#	@/bin/echo " cmt_actionsclean ok."

cmt_actionsclean :: makefilesclean

#-- end of group ------
#-- start of constituent ------

cmt_CCProtonPi0Lib_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0Lib_has_target_tag

#cmt_local_tagfile_CCProtonPi0Lib = $(CCProtonPi0_tag)_CCProtonPi0Lib.make
cmt_local_tagfile_CCProtonPi0Lib = $(bin)$(CCProtonPi0_tag)_CCProtonPi0Lib.make
cmt_local_setup_CCProtonPi0Lib = $(bin)setup_CCProtonPi0Lib$$$$.make
cmt_final_setup_CCProtonPi0Lib = $(bin)setup_CCProtonPi0Lib.make
#cmt_final_setup_CCProtonPi0Lib = $(bin)CCProtonPi0_CCProtonPi0Libsetup.make
cmt_local_CCProtonPi0Lib_makefile = $(bin)CCProtonPi0Lib.make

CCProtonPi0Lib_extratags = -tag_add=target_CCProtonPi0Lib

#$(cmt_local_tagfile_CCProtonPi0Lib) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_CCProtonPi0Lib) ::
else
$(cmt_local_tagfile_CCProtonPi0Lib) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_CCProtonPi0Lib); then /bin/rm -f $(cmt_local_tagfile_CCProtonPi0Lib); fi ; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0Lib_extratags) build tag_makefile >>$(cmt_local_tagfile_CCProtonPi0Lib)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_CCProtonPi0Lib)"; \
	  test ! -f $(cmt_local_setup_CCProtonPi0Lib) || \rm -f $(cmt_local_setup_CCProtonPi0Lib); \
	  trap '\rm -f $(cmt_local_setup_CCProtonPi0Lib)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0Lib_extratags) show setup >$(cmt_local_setup_CCProtonPi0Lib) && \
	  if [ -f $(cmt_final_setup_CCProtonPi0Lib) ] && \
	    \cmp -s $(cmt_final_setup_CCProtonPi0Lib) $(cmt_local_setup_CCProtonPi0Lib); then \
	    \rm $(cmt_local_setup_CCProtonPi0Lib); else \
	    \mv -f $(cmt_local_setup_CCProtonPi0Lib) $(cmt_final_setup_CCProtonPi0Lib); fi

else

#cmt_local_tagfile_CCProtonPi0Lib = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0Lib = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_CCProtonPi0Lib = $(bin)setup.make
#cmt_final_setup_CCProtonPi0Lib = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0Lib_makefile = $(bin)CCProtonPi0Lib.make

endif

ifdef STRUCTURED_OUTPUT
CCProtonPi0Libdirs :
	@if test ! -d $(bin)CCProtonPi0Lib; then $(mkdir) -p $(bin)CCProtonPi0Lib; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0Lib
else
CCProtonPi0Libdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# CCProtonPi0Libdirs ::
#	@if test ! -d $(bin)CCProtonPi0Lib; then $(mkdir) -p $(bin)CCProtonPi0Lib; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0Lib
#
#$(cmt_local_CCProtonPi0Lib_makefile) :: $(CCProtonPi0Lib_dependencies) $(cmt_local_tagfile_CCProtonPi0Lib) build_library_links dirs CCProtonPi0Libdirs
#else
#$(cmt_local_CCProtonPi0Lib_makefile) :: $(CCProtonPi0Lib_dependencies) $(cmt_local_tagfile_CCProtonPi0Lib) build_library_links dirs
#endif
#else
#$(cmt_local_CCProtonPi0Lib_makefile) :: $(cmt_local_tagfile_CCProtonPi0Lib)
#endif

makefiles : $(cmt_local_CCProtonPi0Lib_makefile)

ifndef QUICK
$(cmt_local_CCProtonPi0Lib_makefile) : $(CCProtonPi0Lib_dependencies) $(cmt_local_tagfile_CCProtonPi0Lib) build_library_links
else
$(cmt_local_CCProtonPi0Lib_makefile) : $(cmt_local_tagfile_CCProtonPi0Lib)
endif
	$(echo) "(constituents.make) Building CCProtonPi0Lib.make"; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0Lib_extratags) build constituent_makefile -out=$(cmt_local_CCProtonPi0Lib_makefile) CCProtonPi0Lib

CCProtonPi0Lib :: $(CCProtonPi0Lib_dependencies) $(cmt_local_CCProtonPi0Lib_makefile) dirs CCProtonPi0Libdirs
	$(echo) "(constituents.make) Starting CCProtonPi0Lib"
	@$(MAKE) -f $(cmt_local_CCProtonPi0Lib_makefile) CCProtonPi0Lib
	$(echo) "(constituents.make) CCProtonPi0Lib done"

clean :: CCProtonPi0Libclean

CCProtonPi0Libclean :: $(CCProtonPi0Libclean_dependencies) ##$(cmt_local_CCProtonPi0Lib_makefile)
	$(echo) "(constituents.make) Starting CCProtonPi0Libclean"
	@-if test -f $(cmt_local_CCProtonPi0Lib_makefile); then \
	  $(MAKE) -f $(cmt_local_CCProtonPi0Lib_makefile) CCProtonPi0Libclean; \
	fi
	$(echo) "(constituents.make) CCProtonPi0Libclean done"
#	@-$(MAKE) -f $(cmt_local_CCProtonPi0Lib_makefile) CCProtonPi0Libclean

##	  /bin/rm -f $(cmt_local_CCProtonPi0Lib_makefile) $(bin)CCProtonPi0Lib_dependencies.make

install :: CCProtonPi0Libinstall

CCProtonPi0Libinstall :: $(CCProtonPi0Lib_dependencies) $(cmt_local_CCProtonPi0Lib_makefile)
	$(echo) "(constituents.make) Starting install CCProtonPi0Lib"
	@-$(MAKE) -f $(cmt_local_CCProtonPi0Lib_makefile) install
	$(echo) "(constituents.make) install CCProtonPi0Lib done"

uninstall :: CCProtonPi0Libuninstall

$(foreach d,$(CCProtonPi0Lib_dependencies),$(eval $(d)uninstall_dependencies += CCProtonPi0Libuninstall))

CCProtonPi0Libuninstall :: $(CCProtonPi0Libuninstall_dependencies) $(cmt_local_CCProtonPi0Lib_makefile)
	$(echo) "(constituents.make) Starting uninstall CCProtonPi0Lib"
	@$(MAKE) -f $(cmt_local_CCProtonPi0Lib_makefile) uninstall
	$(echo) "(constituents.make) uninstall CCProtonPi0Lib done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CCProtonPi0Lib"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CCProtonPi0Lib done"
endif

#-- end of constituent ------
#-- start of constituent_lock ------

cmt_CCProtonPi0LibRootMap_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0LibRootMap_has_target_tag

#cmt_local_tagfile_CCProtonPi0LibRootMap = $(CCProtonPi0_tag)_CCProtonPi0LibRootMap.make
cmt_local_tagfile_CCProtonPi0LibRootMap = $(bin)$(CCProtonPi0_tag)_CCProtonPi0LibRootMap.make
cmt_local_setup_CCProtonPi0LibRootMap = $(bin)setup_CCProtonPi0LibRootMap$$$$.make
cmt_final_setup_CCProtonPi0LibRootMap = $(bin)setup_CCProtonPi0LibRootMap.make
#cmt_final_setup_CCProtonPi0LibRootMap = $(bin)CCProtonPi0_CCProtonPi0LibRootMapsetup.make
cmt_local_CCProtonPi0LibRootMap_makefile = $(bin)CCProtonPi0LibRootMap.make

CCProtonPi0LibRootMap_extratags = -tag_add=target_CCProtonPi0LibRootMap

#$(cmt_local_tagfile_CCProtonPi0LibRootMap) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_CCProtonPi0LibRootMap) ::
else
$(cmt_local_tagfile_CCProtonPi0LibRootMap) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_CCProtonPi0LibRootMap); then /bin/rm -f $(cmt_local_tagfile_CCProtonPi0LibRootMap); fi ; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibRootMap_extratags) build tag_makefile >>$(cmt_local_tagfile_CCProtonPi0LibRootMap)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_CCProtonPi0LibRootMap)"; \
	  test ! -f $(cmt_local_setup_CCProtonPi0LibRootMap) || \rm -f $(cmt_local_setup_CCProtonPi0LibRootMap); \
	  trap '\rm -f $(cmt_local_setup_CCProtonPi0LibRootMap)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibRootMap_extratags) show setup >$(cmt_local_setup_CCProtonPi0LibRootMap) && \
	  if [ -f $(cmt_final_setup_CCProtonPi0LibRootMap) ] && \
	    \cmp -s $(cmt_final_setup_CCProtonPi0LibRootMap) $(cmt_local_setup_CCProtonPi0LibRootMap); then \
	    \rm $(cmt_local_setup_CCProtonPi0LibRootMap); else \
	    \mv -f $(cmt_local_setup_CCProtonPi0LibRootMap) $(cmt_final_setup_CCProtonPi0LibRootMap); fi

else

#cmt_local_tagfile_CCProtonPi0LibRootMap = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0LibRootMap = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_CCProtonPi0LibRootMap = $(bin)setup.make
#cmt_final_setup_CCProtonPi0LibRootMap = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0LibRootMap_makefile = $(bin)CCProtonPi0LibRootMap.make

endif

ifdef STRUCTURED_OUTPUT
CCProtonPi0LibRootMapdirs :
	@if test ! -d $(bin)CCProtonPi0LibRootMap; then $(mkdir) -p $(bin)CCProtonPi0LibRootMap; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0LibRootMap
else
CCProtonPi0LibRootMapdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# CCProtonPi0LibRootMapdirs ::
#	@if test ! -d $(bin)CCProtonPi0LibRootMap; then $(mkdir) -p $(bin)CCProtonPi0LibRootMap; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0LibRootMap
#
#$(cmt_local_CCProtonPi0LibRootMap_makefile) :: $(CCProtonPi0LibRootMap_dependencies) $(cmt_local_tagfile_CCProtonPi0LibRootMap) build_library_links dirs CCProtonPi0LibRootMapdirs
#else
#$(cmt_local_CCProtonPi0LibRootMap_makefile) :: $(CCProtonPi0LibRootMap_dependencies) $(cmt_local_tagfile_CCProtonPi0LibRootMap) build_library_links dirs
#endif
#else
#$(cmt_local_CCProtonPi0LibRootMap_makefile) :: $(cmt_local_tagfile_CCProtonPi0LibRootMap)
#endif

makefiles : $(cmt_local_CCProtonPi0LibRootMap_makefile)

ifndef QUICK
$(cmt_local_CCProtonPi0LibRootMap_makefile) : $(CCProtonPi0LibRootMap_dependencies) $(cmt_local_tagfile_CCProtonPi0LibRootMap) build_library_links
else
$(cmt_local_CCProtonPi0LibRootMap_makefile) : $(cmt_local_tagfile_CCProtonPi0LibRootMap)
endif
	$(echo) "(constituents.make) Building CCProtonPi0LibRootMap.make"; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibRootMap_extratags) build constituent_makefile -out=$(cmt_local_CCProtonPi0LibRootMap_makefile) CCProtonPi0LibRootMap

CCProtonPi0LibRootMap :: $(CCProtonPi0LibRootMap_dependencies) $(cmt_local_CCProtonPi0LibRootMap_makefile) dirs CCProtonPi0LibRootMapdirs
	$(echo) "(constituents.make) Creating CCProtonPi0LibRootMap${lock_suffix} and Starting CCProtonPi0LibRootMap"
	@${lock_command} CCProtonPi0LibRootMap${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} CCProtonPi0LibRootMap${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_CCProtonPi0LibRootMap_makefile) CCProtonPi0LibRootMap; \
	  retval=$$?; ${unlock_command} CCProtonPi0LibRootMap${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) CCProtonPi0LibRootMap done"

clean :: CCProtonPi0LibRootMapclean

CCProtonPi0LibRootMapclean :: $(CCProtonPi0LibRootMapclean_dependencies) ##$(cmt_local_CCProtonPi0LibRootMap_makefile)
	$(echo) "(constituents.make) Starting CCProtonPi0LibRootMapclean"
	@-if test -f $(cmt_local_CCProtonPi0LibRootMap_makefile); then \
	  $(MAKE) -f $(cmt_local_CCProtonPi0LibRootMap_makefile) CCProtonPi0LibRootMapclean; \
	fi
	$(echo) "(constituents.make) CCProtonPi0LibRootMapclean done"
#	@-$(MAKE) -f $(cmt_local_CCProtonPi0LibRootMap_makefile) CCProtonPi0LibRootMapclean

##	  /bin/rm -f $(cmt_local_CCProtonPi0LibRootMap_makefile) $(bin)CCProtonPi0LibRootMap_dependencies.make

install :: CCProtonPi0LibRootMapinstall

CCProtonPi0LibRootMapinstall :: $(CCProtonPi0LibRootMap_dependencies) $(cmt_local_CCProtonPi0LibRootMap_makefile)
	$(echo) "(constituents.make) Starting install CCProtonPi0LibRootMap"
	@-$(MAKE) -f $(cmt_local_CCProtonPi0LibRootMap_makefile) install
	$(echo) "(constituents.make) install CCProtonPi0LibRootMap done"

uninstall :: CCProtonPi0LibRootMapuninstall

$(foreach d,$(CCProtonPi0LibRootMap_dependencies),$(eval $(d)uninstall_dependencies += CCProtonPi0LibRootMapuninstall))

CCProtonPi0LibRootMapuninstall :: $(CCProtonPi0LibRootMapuninstall_dependencies) $(cmt_local_CCProtonPi0LibRootMap_makefile)
	$(echo) "(constituents.make) Starting uninstall CCProtonPi0LibRootMap"
	@$(MAKE) -f $(cmt_local_CCProtonPi0LibRootMap_makefile) uninstall
	$(echo) "(constituents.make) uninstall CCProtonPi0LibRootMap done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CCProtonPi0LibRootMap"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CCProtonPi0LibRootMap done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_CCProtonPi0LibMergeMap_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0LibMergeMap_has_target_tag

#cmt_local_tagfile_CCProtonPi0LibMergeMap = $(CCProtonPi0_tag)_CCProtonPi0LibMergeMap.make
cmt_local_tagfile_CCProtonPi0LibMergeMap = $(bin)$(CCProtonPi0_tag)_CCProtonPi0LibMergeMap.make
cmt_local_setup_CCProtonPi0LibMergeMap = $(bin)setup_CCProtonPi0LibMergeMap$$$$.make
cmt_final_setup_CCProtonPi0LibMergeMap = $(bin)setup_CCProtonPi0LibMergeMap.make
#cmt_final_setup_CCProtonPi0LibMergeMap = $(bin)CCProtonPi0_CCProtonPi0LibMergeMapsetup.make
cmt_local_CCProtonPi0LibMergeMap_makefile = $(bin)CCProtonPi0LibMergeMap.make

CCProtonPi0LibMergeMap_extratags = -tag_add=target_CCProtonPi0LibMergeMap

#$(cmt_local_tagfile_CCProtonPi0LibMergeMap) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_CCProtonPi0LibMergeMap) ::
else
$(cmt_local_tagfile_CCProtonPi0LibMergeMap) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_CCProtonPi0LibMergeMap); then /bin/rm -f $(cmt_local_tagfile_CCProtonPi0LibMergeMap); fi ; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibMergeMap_extratags) build tag_makefile >>$(cmt_local_tagfile_CCProtonPi0LibMergeMap)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_CCProtonPi0LibMergeMap)"; \
	  test ! -f $(cmt_local_setup_CCProtonPi0LibMergeMap) || \rm -f $(cmt_local_setup_CCProtonPi0LibMergeMap); \
	  trap '\rm -f $(cmt_local_setup_CCProtonPi0LibMergeMap)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibMergeMap_extratags) show setup >$(cmt_local_setup_CCProtonPi0LibMergeMap) && \
	  if [ -f $(cmt_final_setup_CCProtonPi0LibMergeMap) ] && \
	    \cmp -s $(cmt_final_setup_CCProtonPi0LibMergeMap) $(cmt_local_setup_CCProtonPi0LibMergeMap); then \
	    \rm $(cmt_local_setup_CCProtonPi0LibMergeMap); else \
	    \mv -f $(cmt_local_setup_CCProtonPi0LibMergeMap) $(cmt_final_setup_CCProtonPi0LibMergeMap); fi

else

#cmt_local_tagfile_CCProtonPi0LibMergeMap = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0LibMergeMap = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_CCProtonPi0LibMergeMap = $(bin)setup.make
#cmt_final_setup_CCProtonPi0LibMergeMap = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0LibMergeMap_makefile = $(bin)CCProtonPi0LibMergeMap.make

endif

ifdef STRUCTURED_OUTPUT
CCProtonPi0LibMergeMapdirs :
	@if test ! -d $(bin)CCProtonPi0LibMergeMap; then $(mkdir) -p $(bin)CCProtonPi0LibMergeMap; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0LibMergeMap
else
CCProtonPi0LibMergeMapdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# CCProtonPi0LibMergeMapdirs ::
#	@if test ! -d $(bin)CCProtonPi0LibMergeMap; then $(mkdir) -p $(bin)CCProtonPi0LibMergeMap; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0LibMergeMap
#
#$(cmt_local_CCProtonPi0LibMergeMap_makefile) :: $(CCProtonPi0LibMergeMap_dependencies) $(cmt_local_tagfile_CCProtonPi0LibMergeMap) build_library_links dirs CCProtonPi0LibMergeMapdirs
#else
#$(cmt_local_CCProtonPi0LibMergeMap_makefile) :: $(CCProtonPi0LibMergeMap_dependencies) $(cmt_local_tagfile_CCProtonPi0LibMergeMap) build_library_links dirs
#endif
#else
#$(cmt_local_CCProtonPi0LibMergeMap_makefile) :: $(cmt_local_tagfile_CCProtonPi0LibMergeMap)
#endif

makefiles : $(cmt_local_CCProtonPi0LibMergeMap_makefile)

ifndef QUICK
$(cmt_local_CCProtonPi0LibMergeMap_makefile) : $(CCProtonPi0LibMergeMap_dependencies) $(cmt_local_tagfile_CCProtonPi0LibMergeMap) build_library_links
else
$(cmt_local_CCProtonPi0LibMergeMap_makefile) : $(cmt_local_tagfile_CCProtonPi0LibMergeMap)
endif
	$(echo) "(constituents.make) Building CCProtonPi0LibMergeMap.make"; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibMergeMap_extratags) build constituent_makefile -out=$(cmt_local_CCProtonPi0LibMergeMap_makefile) CCProtonPi0LibMergeMap

CCProtonPi0LibMergeMap :: $(CCProtonPi0LibMergeMap_dependencies) $(cmt_local_CCProtonPi0LibMergeMap_makefile) dirs CCProtonPi0LibMergeMapdirs
	$(echo) "(constituents.make) Creating CCProtonPi0LibMergeMap${lock_suffix} and Starting CCProtonPi0LibMergeMap"
	@${lock_command} CCProtonPi0LibMergeMap${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} CCProtonPi0LibMergeMap${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_CCProtonPi0LibMergeMap_makefile) CCProtonPi0LibMergeMap; \
	  retval=$$?; ${unlock_command} CCProtonPi0LibMergeMap${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) CCProtonPi0LibMergeMap done"

clean :: CCProtonPi0LibMergeMapclean

CCProtonPi0LibMergeMapclean :: $(CCProtonPi0LibMergeMapclean_dependencies) ##$(cmt_local_CCProtonPi0LibMergeMap_makefile)
	$(echo) "(constituents.make) Starting CCProtonPi0LibMergeMapclean"
	@-if test -f $(cmt_local_CCProtonPi0LibMergeMap_makefile); then \
	  $(MAKE) -f $(cmt_local_CCProtonPi0LibMergeMap_makefile) CCProtonPi0LibMergeMapclean; \
	fi
	$(echo) "(constituents.make) CCProtonPi0LibMergeMapclean done"
#	@-$(MAKE) -f $(cmt_local_CCProtonPi0LibMergeMap_makefile) CCProtonPi0LibMergeMapclean

##	  /bin/rm -f $(cmt_local_CCProtonPi0LibMergeMap_makefile) $(bin)CCProtonPi0LibMergeMap_dependencies.make

install :: CCProtonPi0LibMergeMapinstall

CCProtonPi0LibMergeMapinstall :: $(CCProtonPi0LibMergeMap_dependencies) $(cmt_local_CCProtonPi0LibMergeMap_makefile)
	$(echo) "(constituents.make) Starting install CCProtonPi0LibMergeMap"
	@-$(MAKE) -f $(cmt_local_CCProtonPi0LibMergeMap_makefile) install
	$(echo) "(constituents.make) install CCProtonPi0LibMergeMap done"

uninstall :: CCProtonPi0LibMergeMapuninstall

$(foreach d,$(CCProtonPi0LibMergeMap_dependencies),$(eval $(d)uninstall_dependencies += CCProtonPi0LibMergeMapuninstall))

CCProtonPi0LibMergeMapuninstall :: $(CCProtonPi0LibMergeMapuninstall_dependencies) $(cmt_local_CCProtonPi0LibMergeMap_makefile)
	$(echo) "(constituents.make) Starting uninstall CCProtonPi0LibMergeMap"
	@$(MAKE) -f $(cmt_local_CCProtonPi0LibMergeMap_makefile) uninstall
	$(echo) "(constituents.make) uninstall CCProtonPi0LibMergeMap done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CCProtonPi0LibMergeMap"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CCProtonPi0LibMergeMap done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_CCProtonPi0LibConf_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0LibConf_has_target_tag

#cmt_local_tagfile_CCProtonPi0LibConf = $(CCProtonPi0_tag)_CCProtonPi0LibConf.make
cmt_local_tagfile_CCProtonPi0LibConf = $(bin)$(CCProtonPi0_tag)_CCProtonPi0LibConf.make
cmt_local_setup_CCProtonPi0LibConf = $(bin)setup_CCProtonPi0LibConf$$$$.make
cmt_final_setup_CCProtonPi0LibConf = $(bin)setup_CCProtonPi0LibConf.make
#cmt_final_setup_CCProtonPi0LibConf = $(bin)CCProtonPi0_CCProtonPi0LibConfsetup.make
cmt_local_CCProtonPi0LibConf_makefile = $(bin)CCProtonPi0LibConf.make

CCProtonPi0LibConf_extratags = -tag_add=target_CCProtonPi0LibConf

#$(cmt_local_tagfile_CCProtonPi0LibConf) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_CCProtonPi0LibConf) ::
else
$(cmt_local_tagfile_CCProtonPi0LibConf) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_CCProtonPi0LibConf); then /bin/rm -f $(cmt_local_tagfile_CCProtonPi0LibConf); fi ; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibConf_extratags) build tag_makefile >>$(cmt_local_tagfile_CCProtonPi0LibConf)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_CCProtonPi0LibConf)"; \
	  test ! -f $(cmt_local_setup_CCProtonPi0LibConf) || \rm -f $(cmt_local_setup_CCProtonPi0LibConf); \
	  trap '\rm -f $(cmt_local_setup_CCProtonPi0LibConf)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibConf_extratags) show setup >$(cmt_local_setup_CCProtonPi0LibConf) && \
	  if [ -f $(cmt_final_setup_CCProtonPi0LibConf) ] && \
	    \cmp -s $(cmt_final_setup_CCProtonPi0LibConf) $(cmt_local_setup_CCProtonPi0LibConf); then \
	    \rm $(cmt_local_setup_CCProtonPi0LibConf); else \
	    \mv -f $(cmt_local_setup_CCProtonPi0LibConf) $(cmt_final_setup_CCProtonPi0LibConf); fi

else

#cmt_local_tagfile_CCProtonPi0LibConf = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0LibConf = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_CCProtonPi0LibConf = $(bin)setup.make
#cmt_final_setup_CCProtonPi0LibConf = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0LibConf_makefile = $(bin)CCProtonPi0LibConf.make

endif

ifdef STRUCTURED_OUTPUT
CCProtonPi0LibConfdirs :
	@if test ! -d $(bin)CCProtonPi0LibConf; then $(mkdir) -p $(bin)CCProtonPi0LibConf; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0LibConf
else
CCProtonPi0LibConfdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# CCProtonPi0LibConfdirs ::
#	@if test ! -d $(bin)CCProtonPi0LibConf; then $(mkdir) -p $(bin)CCProtonPi0LibConf; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0LibConf
#
#$(cmt_local_CCProtonPi0LibConf_makefile) :: $(CCProtonPi0LibConf_dependencies) $(cmt_local_tagfile_CCProtonPi0LibConf) build_library_links dirs CCProtonPi0LibConfdirs
#else
#$(cmt_local_CCProtonPi0LibConf_makefile) :: $(CCProtonPi0LibConf_dependencies) $(cmt_local_tagfile_CCProtonPi0LibConf) build_library_links dirs
#endif
#else
#$(cmt_local_CCProtonPi0LibConf_makefile) :: $(cmt_local_tagfile_CCProtonPi0LibConf)
#endif

makefiles : $(cmt_local_CCProtonPi0LibConf_makefile)

ifndef QUICK
$(cmt_local_CCProtonPi0LibConf_makefile) : $(CCProtonPi0LibConf_dependencies) $(cmt_local_tagfile_CCProtonPi0LibConf) build_library_links
else
$(cmt_local_CCProtonPi0LibConf_makefile) : $(cmt_local_tagfile_CCProtonPi0LibConf)
endif
	$(echo) "(constituents.make) Building CCProtonPi0LibConf.make"; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibConf_extratags) build constituent_makefile -out=$(cmt_local_CCProtonPi0LibConf_makefile) CCProtonPi0LibConf

CCProtonPi0LibConf :: $(CCProtonPi0LibConf_dependencies) $(cmt_local_CCProtonPi0LibConf_makefile) dirs CCProtonPi0LibConfdirs
	$(echo) "(constituents.make) Creating CCProtonPi0LibConf${lock_suffix} and Starting CCProtonPi0LibConf"
	@${lock_command} CCProtonPi0LibConf${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} CCProtonPi0LibConf${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_CCProtonPi0LibConf_makefile) CCProtonPi0LibConf; \
	  retval=$$?; ${unlock_command} CCProtonPi0LibConf${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) CCProtonPi0LibConf done"

clean :: CCProtonPi0LibConfclean

CCProtonPi0LibConfclean :: $(CCProtonPi0LibConfclean_dependencies) ##$(cmt_local_CCProtonPi0LibConf_makefile)
	$(echo) "(constituents.make) Starting CCProtonPi0LibConfclean"
	@-if test -f $(cmt_local_CCProtonPi0LibConf_makefile); then \
	  $(MAKE) -f $(cmt_local_CCProtonPi0LibConf_makefile) CCProtonPi0LibConfclean; \
	fi
	$(echo) "(constituents.make) CCProtonPi0LibConfclean done"
#	@-$(MAKE) -f $(cmt_local_CCProtonPi0LibConf_makefile) CCProtonPi0LibConfclean

##	  /bin/rm -f $(cmt_local_CCProtonPi0LibConf_makefile) $(bin)CCProtonPi0LibConf_dependencies.make

install :: CCProtonPi0LibConfinstall

CCProtonPi0LibConfinstall :: $(CCProtonPi0LibConf_dependencies) $(cmt_local_CCProtonPi0LibConf_makefile)
	$(echo) "(constituents.make) Starting install CCProtonPi0LibConf"
	@-$(MAKE) -f $(cmt_local_CCProtonPi0LibConf_makefile) install
	$(echo) "(constituents.make) install CCProtonPi0LibConf done"

uninstall :: CCProtonPi0LibConfuninstall

$(foreach d,$(CCProtonPi0LibConf_dependencies),$(eval $(d)uninstall_dependencies += CCProtonPi0LibConfuninstall))

CCProtonPi0LibConfuninstall :: $(CCProtonPi0LibConfuninstall_dependencies) $(cmt_local_CCProtonPi0LibConf_makefile)
	$(echo) "(constituents.make) Starting uninstall CCProtonPi0LibConf"
	@$(MAKE) -f $(cmt_local_CCProtonPi0LibConf_makefile) uninstall
	$(echo) "(constituents.make) uninstall CCProtonPi0LibConf done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CCProtonPi0LibConf"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CCProtonPi0LibConf done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_CCProtonPi0_python_init_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0_python_init_has_target_tag

#cmt_local_tagfile_CCProtonPi0_python_init = $(CCProtonPi0_tag)_CCProtonPi0_python_init.make
cmt_local_tagfile_CCProtonPi0_python_init = $(bin)$(CCProtonPi0_tag)_CCProtonPi0_python_init.make
cmt_local_setup_CCProtonPi0_python_init = $(bin)setup_CCProtonPi0_python_init$$$$.make
cmt_final_setup_CCProtonPi0_python_init = $(bin)setup_CCProtonPi0_python_init.make
#cmt_final_setup_CCProtonPi0_python_init = $(bin)CCProtonPi0_CCProtonPi0_python_initsetup.make
cmt_local_CCProtonPi0_python_init_makefile = $(bin)CCProtonPi0_python_init.make

CCProtonPi0_python_init_extratags = -tag_add=target_CCProtonPi0_python_init

#$(cmt_local_tagfile_CCProtonPi0_python_init) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_CCProtonPi0_python_init) ::
else
$(cmt_local_tagfile_CCProtonPi0_python_init) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_CCProtonPi0_python_init); then /bin/rm -f $(cmt_local_tagfile_CCProtonPi0_python_init); fi ; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0_python_init_extratags) build tag_makefile >>$(cmt_local_tagfile_CCProtonPi0_python_init)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_CCProtonPi0_python_init)"; \
	  test ! -f $(cmt_local_setup_CCProtonPi0_python_init) || \rm -f $(cmt_local_setup_CCProtonPi0_python_init); \
	  trap '\rm -f $(cmt_local_setup_CCProtonPi0_python_init)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0_python_init_extratags) show setup >$(cmt_local_setup_CCProtonPi0_python_init) && \
	  if [ -f $(cmt_final_setup_CCProtonPi0_python_init) ] && \
	    \cmp -s $(cmt_final_setup_CCProtonPi0_python_init) $(cmt_local_setup_CCProtonPi0_python_init); then \
	    \rm $(cmt_local_setup_CCProtonPi0_python_init); else \
	    \mv -f $(cmt_local_setup_CCProtonPi0_python_init) $(cmt_final_setup_CCProtonPi0_python_init); fi

else

#cmt_local_tagfile_CCProtonPi0_python_init = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0_python_init = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_CCProtonPi0_python_init = $(bin)setup.make
#cmt_final_setup_CCProtonPi0_python_init = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0_python_init_makefile = $(bin)CCProtonPi0_python_init.make

endif

ifdef STRUCTURED_OUTPUT
CCProtonPi0_python_initdirs :
	@if test ! -d $(bin)CCProtonPi0_python_init; then $(mkdir) -p $(bin)CCProtonPi0_python_init; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0_python_init
else
CCProtonPi0_python_initdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# CCProtonPi0_python_initdirs ::
#	@if test ! -d $(bin)CCProtonPi0_python_init; then $(mkdir) -p $(bin)CCProtonPi0_python_init; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0_python_init
#
#$(cmt_local_CCProtonPi0_python_init_makefile) :: $(CCProtonPi0_python_init_dependencies) $(cmt_local_tagfile_CCProtonPi0_python_init) build_library_links dirs CCProtonPi0_python_initdirs
#else
#$(cmt_local_CCProtonPi0_python_init_makefile) :: $(CCProtonPi0_python_init_dependencies) $(cmt_local_tagfile_CCProtonPi0_python_init) build_library_links dirs
#endif
#else
#$(cmt_local_CCProtonPi0_python_init_makefile) :: $(cmt_local_tagfile_CCProtonPi0_python_init)
#endif

makefiles : $(cmt_local_CCProtonPi0_python_init_makefile)

ifndef QUICK
$(cmt_local_CCProtonPi0_python_init_makefile) : $(CCProtonPi0_python_init_dependencies) $(cmt_local_tagfile_CCProtonPi0_python_init) build_library_links
else
$(cmt_local_CCProtonPi0_python_init_makefile) : $(cmt_local_tagfile_CCProtonPi0_python_init)
endif
	$(echo) "(constituents.make) Building CCProtonPi0_python_init.make"; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0_python_init_extratags) build constituent_makefile -out=$(cmt_local_CCProtonPi0_python_init_makefile) CCProtonPi0_python_init

CCProtonPi0_python_init :: $(CCProtonPi0_python_init_dependencies) $(cmt_local_CCProtonPi0_python_init_makefile) dirs CCProtonPi0_python_initdirs
	$(echo) "(constituents.make) Creating CCProtonPi0_python_init${lock_suffix} and Starting CCProtonPi0_python_init"
	@${lock_command} CCProtonPi0_python_init${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} CCProtonPi0_python_init${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_CCProtonPi0_python_init_makefile) CCProtonPi0_python_init; \
	  retval=$$?; ${unlock_command} CCProtonPi0_python_init${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) CCProtonPi0_python_init done"

clean :: CCProtonPi0_python_initclean

CCProtonPi0_python_initclean :: $(CCProtonPi0_python_initclean_dependencies) ##$(cmt_local_CCProtonPi0_python_init_makefile)
	$(echo) "(constituents.make) Starting CCProtonPi0_python_initclean"
	@-if test -f $(cmt_local_CCProtonPi0_python_init_makefile); then \
	  $(MAKE) -f $(cmt_local_CCProtonPi0_python_init_makefile) CCProtonPi0_python_initclean; \
	fi
	$(echo) "(constituents.make) CCProtonPi0_python_initclean done"
#	@-$(MAKE) -f $(cmt_local_CCProtonPi0_python_init_makefile) CCProtonPi0_python_initclean

##	  /bin/rm -f $(cmt_local_CCProtonPi0_python_init_makefile) $(bin)CCProtonPi0_python_init_dependencies.make

install :: CCProtonPi0_python_initinstall

CCProtonPi0_python_initinstall :: $(CCProtonPi0_python_init_dependencies) $(cmt_local_CCProtonPi0_python_init_makefile)
	$(echo) "(constituents.make) Starting install CCProtonPi0_python_init"
	@-$(MAKE) -f $(cmt_local_CCProtonPi0_python_init_makefile) install
	$(echo) "(constituents.make) install CCProtonPi0_python_init done"

uninstall :: CCProtonPi0_python_inituninstall

$(foreach d,$(CCProtonPi0_python_init_dependencies),$(eval $(d)uninstall_dependencies += CCProtonPi0_python_inituninstall))

CCProtonPi0_python_inituninstall :: $(CCProtonPi0_python_inituninstall_dependencies) $(cmt_local_CCProtonPi0_python_init_makefile)
	$(echo) "(constituents.make) Starting uninstall CCProtonPi0_python_init"
	@$(MAKE) -f $(cmt_local_CCProtonPi0_python_init_makefile) uninstall
	$(echo) "(constituents.make) uninstall CCProtonPi0_python_init done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CCProtonPi0_python_init"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CCProtonPi0_python_init done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_zip_CCProtonPi0_python_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_zip_CCProtonPi0_python_modules_has_target_tag

#cmt_local_tagfile_zip_CCProtonPi0_python_modules = $(CCProtonPi0_tag)_zip_CCProtonPi0_python_modules.make
cmt_local_tagfile_zip_CCProtonPi0_python_modules = $(bin)$(CCProtonPi0_tag)_zip_CCProtonPi0_python_modules.make
cmt_local_setup_zip_CCProtonPi0_python_modules = $(bin)setup_zip_CCProtonPi0_python_modules$$$$.make
cmt_final_setup_zip_CCProtonPi0_python_modules = $(bin)setup_zip_CCProtonPi0_python_modules.make
#cmt_final_setup_zip_CCProtonPi0_python_modules = $(bin)CCProtonPi0_zip_CCProtonPi0_python_modulessetup.make
cmt_local_zip_CCProtonPi0_python_modules_makefile = $(bin)zip_CCProtonPi0_python_modules.make

zip_CCProtonPi0_python_modules_extratags = -tag_add=target_zip_CCProtonPi0_python_modules

#$(cmt_local_tagfile_zip_CCProtonPi0_python_modules) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_zip_CCProtonPi0_python_modules) ::
else
$(cmt_local_tagfile_zip_CCProtonPi0_python_modules) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_zip_CCProtonPi0_python_modules); then /bin/rm -f $(cmt_local_tagfile_zip_CCProtonPi0_python_modules); fi ; \
	  $(cmtexe) -tag=$(tags) $(zip_CCProtonPi0_python_modules_extratags) build tag_makefile >>$(cmt_local_tagfile_zip_CCProtonPi0_python_modules)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_zip_CCProtonPi0_python_modules)"; \
	  test ! -f $(cmt_local_setup_zip_CCProtonPi0_python_modules) || \rm -f $(cmt_local_setup_zip_CCProtonPi0_python_modules); \
	  trap '\rm -f $(cmt_local_setup_zip_CCProtonPi0_python_modules)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(zip_CCProtonPi0_python_modules_extratags) show setup >$(cmt_local_setup_zip_CCProtonPi0_python_modules) && \
	  if [ -f $(cmt_final_setup_zip_CCProtonPi0_python_modules) ] && \
	    \cmp -s $(cmt_final_setup_zip_CCProtonPi0_python_modules) $(cmt_local_setup_zip_CCProtonPi0_python_modules); then \
	    \rm $(cmt_local_setup_zip_CCProtonPi0_python_modules); else \
	    \mv -f $(cmt_local_setup_zip_CCProtonPi0_python_modules) $(cmt_final_setup_zip_CCProtonPi0_python_modules); fi

else

#cmt_local_tagfile_zip_CCProtonPi0_python_modules = $(CCProtonPi0_tag).make
cmt_local_tagfile_zip_CCProtonPi0_python_modules = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_zip_CCProtonPi0_python_modules = $(bin)setup.make
#cmt_final_setup_zip_CCProtonPi0_python_modules = $(bin)CCProtonPi0setup.make
cmt_local_zip_CCProtonPi0_python_modules_makefile = $(bin)zip_CCProtonPi0_python_modules.make

endif

ifdef STRUCTURED_OUTPUT
zip_CCProtonPi0_python_modulesdirs :
	@if test ! -d $(bin)zip_CCProtonPi0_python_modules; then $(mkdir) -p $(bin)zip_CCProtonPi0_python_modules; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)zip_CCProtonPi0_python_modules
else
zip_CCProtonPi0_python_modulesdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# zip_CCProtonPi0_python_modulesdirs ::
#	@if test ! -d $(bin)zip_CCProtonPi0_python_modules; then $(mkdir) -p $(bin)zip_CCProtonPi0_python_modules; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)zip_CCProtonPi0_python_modules
#
#$(cmt_local_zip_CCProtonPi0_python_modules_makefile) :: $(zip_CCProtonPi0_python_modules_dependencies) $(cmt_local_tagfile_zip_CCProtonPi0_python_modules) build_library_links dirs zip_CCProtonPi0_python_modulesdirs
#else
#$(cmt_local_zip_CCProtonPi0_python_modules_makefile) :: $(zip_CCProtonPi0_python_modules_dependencies) $(cmt_local_tagfile_zip_CCProtonPi0_python_modules) build_library_links dirs
#endif
#else
#$(cmt_local_zip_CCProtonPi0_python_modules_makefile) :: $(cmt_local_tagfile_zip_CCProtonPi0_python_modules)
#endif

makefiles : $(cmt_local_zip_CCProtonPi0_python_modules_makefile)

ifndef QUICK
$(cmt_local_zip_CCProtonPi0_python_modules_makefile) : $(zip_CCProtonPi0_python_modules_dependencies) $(cmt_local_tagfile_zip_CCProtonPi0_python_modules) build_library_links
else
$(cmt_local_zip_CCProtonPi0_python_modules_makefile) : $(cmt_local_tagfile_zip_CCProtonPi0_python_modules)
endif
	$(echo) "(constituents.make) Building zip_CCProtonPi0_python_modules.make"; \
	  $(cmtexe) -tag=$(tags) $(zip_CCProtonPi0_python_modules_extratags) build constituent_makefile -out=$(cmt_local_zip_CCProtonPi0_python_modules_makefile) zip_CCProtonPi0_python_modules

zip_CCProtonPi0_python_modules :: $(zip_CCProtonPi0_python_modules_dependencies) $(cmt_local_zip_CCProtonPi0_python_modules_makefile) dirs zip_CCProtonPi0_python_modulesdirs
	$(echo) "(constituents.make) Creating zip_CCProtonPi0_python_modules${lock_suffix} and Starting zip_CCProtonPi0_python_modules"
	@${lock_command} zip_CCProtonPi0_python_modules${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} zip_CCProtonPi0_python_modules${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_zip_CCProtonPi0_python_modules_makefile) zip_CCProtonPi0_python_modules; \
	  retval=$$?; ${unlock_command} zip_CCProtonPi0_python_modules${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) zip_CCProtonPi0_python_modules done"

clean :: zip_CCProtonPi0_python_modulesclean

zip_CCProtonPi0_python_modulesclean :: $(zip_CCProtonPi0_python_modulesclean_dependencies) ##$(cmt_local_zip_CCProtonPi0_python_modules_makefile)
	$(echo) "(constituents.make) Starting zip_CCProtonPi0_python_modulesclean"
	@-if test -f $(cmt_local_zip_CCProtonPi0_python_modules_makefile); then \
	  $(MAKE) -f $(cmt_local_zip_CCProtonPi0_python_modules_makefile) zip_CCProtonPi0_python_modulesclean; \
	fi
	$(echo) "(constituents.make) zip_CCProtonPi0_python_modulesclean done"
#	@-$(MAKE) -f $(cmt_local_zip_CCProtonPi0_python_modules_makefile) zip_CCProtonPi0_python_modulesclean

##	  /bin/rm -f $(cmt_local_zip_CCProtonPi0_python_modules_makefile) $(bin)zip_CCProtonPi0_python_modules_dependencies.make

install :: zip_CCProtonPi0_python_modulesinstall

zip_CCProtonPi0_python_modulesinstall :: $(zip_CCProtonPi0_python_modules_dependencies) $(cmt_local_zip_CCProtonPi0_python_modules_makefile)
	$(echo) "(constituents.make) Starting install zip_CCProtonPi0_python_modules"
	@-$(MAKE) -f $(cmt_local_zip_CCProtonPi0_python_modules_makefile) install
	$(echo) "(constituents.make) install zip_CCProtonPi0_python_modules done"

uninstall :: zip_CCProtonPi0_python_modulesuninstall

$(foreach d,$(zip_CCProtonPi0_python_modules_dependencies),$(eval $(d)uninstall_dependencies += zip_CCProtonPi0_python_modulesuninstall))

zip_CCProtonPi0_python_modulesuninstall :: $(zip_CCProtonPi0_python_modulesuninstall_dependencies) $(cmt_local_zip_CCProtonPi0_python_modules_makefile)
	$(echo) "(constituents.make) Starting uninstall zip_CCProtonPi0_python_modules"
	@$(MAKE) -f $(cmt_local_zip_CCProtonPi0_python_modules_makefile) uninstall
	$(echo) "(constituents.make) uninstall zip_CCProtonPi0_python_modules done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ zip_CCProtonPi0_python_modules"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ zip_CCProtonPi0_python_modules done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_CCProtonPi0LibConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0LibConfDbMerge_has_target_tag

#cmt_local_tagfile_CCProtonPi0LibConfDbMerge = $(CCProtonPi0_tag)_CCProtonPi0LibConfDbMerge.make
cmt_local_tagfile_CCProtonPi0LibConfDbMerge = $(bin)$(CCProtonPi0_tag)_CCProtonPi0LibConfDbMerge.make
cmt_local_setup_CCProtonPi0LibConfDbMerge = $(bin)setup_CCProtonPi0LibConfDbMerge$$$$.make
cmt_final_setup_CCProtonPi0LibConfDbMerge = $(bin)setup_CCProtonPi0LibConfDbMerge.make
#cmt_final_setup_CCProtonPi0LibConfDbMerge = $(bin)CCProtonPi0_CCProtonPi0LibConfDbMergesetup.make
cmt_local_CCProtonPi0LibConfDbMerge_makefile = $(bin)CCProtonPi0LibConfDbMerge.make

CCProtonPi0LibConfDbMerge_extratags = -tag_add=target_CCProtonPi0LibConfDbMerge

#$(cmt_local_tagfile_CCProtonPi0LibConfDbMerge) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_CCProtonPi0LibConfDbMerge) ::
else
$(cmt_local_tagfile_CCProtonPi0LibConfDbMerge) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge); then /bin/rm -f $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge); fi ; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibConfDbMerge_extratags) build tag_makefile >>$(cmt_local_tagfile_CCProtonPi0LibConfDbMerge)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_CCProtonPi0LibConfDbMerge)"; \
	  test ! -f $(cmt_local_setup_CCProtonPi0LibConfDbMerge) || \rm -f $(cmt_local_setup_CCProtonPi0LibConfDbMerge); \
	  trap '\rm -f $(cmt_local_setup_CCProtonPi0LibConfDbMerge)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibConfDbMerge_extratags) show setup >$(cmt_local_setup_CCProtonPi0LibConfDbMerge) && \
	  if [ -f $(cmt_final_setup_CCProtonPi0LibConfDbMerge) ] && \
	    \cmp -s $(cmt_final_setup_CCProtonPi0LibConfDbMerge) $(cmt_local_setup_CCProtonPi0LibConfDbMerge); then \
	    \rm $(cmt_local_setup_CCProtonPi0LibConfDbMerge); else \
	    \mv -f $(cmt_local_setup_CCProtonPi0LibConfDbMerge) $(cmt_final_setup_CCProtonPi0LibConfDbMerge); fi

else

#cmt_local_tagfile_CCProtonPi0LibConfDbMerge = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0LibConfDbMerge = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_CCProtonPi0LibConfDbMerge = $(bin)setup.make
#cmt_final_setup_CCProtonPi0LibConfDbMerge = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0LibConfDbMerge_makefile = $(bin)CCProtonPi0LibConfDbMerge.make

endif

ifdef STRUCTURED_OUTPUT
CCProtonPi0LibConfDbMergedirs :
	@if test ! -d $(bin)CCProtonPi0LibConfDbMerge; then $(mkdir) -p $(bin)CCProtonPi0LibConfDbMerge; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0LibConfDbMerge
else
CCProtonPi0LibConfDbMergedirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# CCProtonPi0LibConfDbMergedirs ::
#	@if test ! -d $(bin)CCProtonPi0LibConfDbMerge; then $(mkdir) -p $(bin)CCProtonPi0LibConfDbMerge; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)CCProtonPi0LibConfDbMerge
#
#$(cmt_local_CCProtonPi0LibConfDbMerge_makefile) :: $(CCProtonPi0LibConfDbMerge_dependencies) $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge) build_library_links dirs CCProtonPi0LibConfDbMergedirs
#else
#$(cmt_local_CCProtonPi0LibConfDbMerge_makefile) :: $(CCProtonPi0LibConfDbMerge_dependencies) $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge) build_library_links dirs
#endif
#else
#$(cmt_local_CCProtonPi0LibConfDbMerge_makefile) :: $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge)
#endif

makefiles : $(cmt_local_CCProtonPi0LibConfDbMerge_makefile)

ifndef QUICK
$(cmt_local_CCProtonPi0LibConfDbMerge_makefile) : $(CCProtonPi0LibConfDbMerge_dependencies) $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge) build_library_links
else
$(cmt_local_CCProtonPi0LibConfDbMerge_makefile) : $(cmt_local_tagfile_CCProtonPi0LibConfDbMerge)
endif
	$(echo) "(constituents.make) Building CCProtonPi0LibConfDbMerge.make"; \
	  $(cmtexe) -tag=$(tags) $(CCProtonPi0LibConfDbMerge_extratags) build constituent_makefile -out=$(cmt_local_CCProtonPi0LibConfDbMerge_makefile) CCProtonPi0LibConfDbMerge

CCProtonPi0LibConfDbMerge :: $(CCProtonPi0LibConfDbMerge_dependencies) $(cmt_local_CCProtonPi0LibConfDbMerge_makefile) dirs CCProtonPi0LibConfDbMergedirs
	$(echo) "(constituents.make) Creating CCProtonPi0LibConfDbMerge${lock_suffix} and Starting CCProtonPi0LibConfDbMerge"
	@${lock_command} CCProtonPi0LibConfDbMerge${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} CCProtonPi0LibConfDbMerge${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_CCProtonPi0LibConfDbMerge_makefile) CCProtonPi0LibConfDbMerge; \
	  retval=$$?; ${unlock_command} CCProtonPi0LibConfDbMerge${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) CCProtonPi0LibConfDbMerge done"

clean :: CCProtonPi0LibConfDbMergeclean

CCProtonPi0LibConfDbMergeclean :: $(CCProtonPi0LibConfDbMergeclean_dependencies) ##$(cmt_local_CCProtonPi0LibConfDbMerge_makefile)
	$(echo) "(constituents.make) Starting CCProtonPi0LibConfDbMergeclean"
	@-if test -f $(cmt_local_CCProtonPi0LibConfDbMerge_makefile); then \
	  $(MAKE) -f $(cmt_local_CCProtonPi0LibConfDbMerge_makefile) CCProtonPi0LibConfDbMergeclean; \
	fi
	$(echo) "(constituents.make) CCProtonPi0LibConfDbMergeclean done"
#	@-$(MAKE) -f $(cmt_local_CCProtonPi0LibConfDbMerge_makefile) CCProtonPi0LibConfDbMergeclean

##	  /bin/rm -f $(cmt_local_CCProtonPi0LibConfDbMerge_makefile) $(bin)CCProtonPi0LibConfDbMerge_dependencies.make

install :: CCProtonPi0LibConfDbMergeinstall

CCProtonPi0LibConfDbMergeinstall :: $(CCProtonPi0LibConfDbMerge_dependencies) $(cmt_local_CCProtonPi0LibConfDbMerge_makefile)
	$(echo) "(constituents.make) Starting install CCProtonPi0LibConfDbMerge"
	@-$(MAKE) -f $(cmt_local_CCProtonPi0LibConfDbMerge_makefile) install
	$(echo) "(constituents.make) install CCProtonPi0LibConfDbMerge done"

uninstall :: CCProtonPi0LibConfDbMergeuninstall

$(foreach d,$(CCProtonPi0LibConfDbMerge_dependencies),$(eval $(d)uninstall_dependencies += CCProtonPi0LibConfDbMergeuninstall))

CCProtonPi0LibConfDbMergeuninstall :: $(CCProtonPi0LibConfDbMergeuninstall_dependencies) $(cmt_local_CCProtonPi0LibConfDbMerge_makefile)
	$(echo) "(constituents.make) Starting uninstall CCProtonPi0LibConfDbMerge"
	@$(MAKE) -f $(cmt_local_CCProtonPi0LibConfDbMerge_makefile) uninstall
	$(echo) "(constituents.make) uninstall CCProtonPi0LibConfDbMerge done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CCProtonPi0LibConfDbMerge"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CCProtonPi0LibConfDbMerge done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_make_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_make_has_target_tag

#cmt_local_tagfile_make = $(CCProtonPi0_tag)_make.make
cmt_local_tagfile_make = $(bin)$(CCProtonPi0_tag)_make.make
cmt_local_setup_make = $(bin)setup_make$$$$.make
cmt_final_setup_make = $(bin)setup_make.make
#cmt_final_setup_make = $(bin)CCProtonPi0_makesetup.make
cmt_local_make_makefile = $(bin)make.make

make_extratags = -tag_add=target_make

#$(cmt_local_tagfile_make) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_make) ::
else
$(cmt_local_tagfile_make) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_make); then /bin/rm -f $(cmt_local_tagfile_make); fi ; \
	  $(cmtexe) -tag=$(tags) $(make_extratags) build tag_makefile >>$(cmt_local_tagfile_make)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_make)"; \
	  test ! -f $(cmt_local_setup_make) || \rm -f $(cmt_local_setup_make); \
	  trap '\rm -f $(cmt_local_setup_make)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(make_extratags) show setup >$(cmt_local_setup_make) && \
	  if [ -f $(cmt_final_setup_make) ] && \
	    \cmp -s $(cmt_final_setup_make) $(cmt_local_setup_make); then \
	    \rm $(cmt_local_setup_make); else \
	    \mv -f $(cmt_local_setup_make) $(cmt_final_setup_make); fi

else

#cmt_local_tagfile_make = $(CCProtonPi0_tag).make
cmt_local_tagfile_make = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_make = $(bin)setup.make
#cmt_final_setup_make = $(bin)CCProtonPi0setup.make
cmt_local_make_makefile = $(bin)make.make

endif

ifdef STRUCTURED_OUTPUT
makedirs :
	@if test ! -d $(bin)make; then $(mkdir) -p $(bin)make; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)make
else
makedirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# makedirs ::
#	@if test ! -d $(bin)make; then $(mkdir) -p $(bin)make; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)make
#
#$(cmt_local_make_makefile) :: $(make_dependencies) $(cmt_local_tagfile_make) build_library_links dirs makedirs
#else
#$(cmt_local_make_makefile) :: $(make_dependencies) $(cmt_local_tagfile_make) build_library_links dirs
#endif
#else
#$(cmt_local_make_makefile) :: $(cmt_local_tagfile_make)
#endif

makefiles : $(cmt_local_make_makefile)

ifndef QUICK
$(cmt_local_make_makefile) : $(make_dependencies) $(cmt_local_tagfile_make) build_library_links
else
$(cmt_local_make_makefile) : $(cmt_local_tagfile_make)
endif
	$(echo) "(constituents.make) Building make.make"; \
	  $(cmtexe) -tag=$(tags) $(make_extratags) build constituent_makefile -out=$(cmt_local_make_makefile) make

make :: $(make_dependencies) $(cmt_local_make_makefile) dirs makedirs
	$(echo) "(constituents.make) Creating make${lock_suffix} and Starting make"
	@${lock_command} make${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} make${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_make_makefile) make; \
	  retval=$$?; ${unlock_command} make${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) make done"

clean :: makeclean

makeclean :: $(makeclean_dependencies) ##$(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting makeclean"
	@-if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) makeclean; \
	fi
	$(echo) "(constituents.make) makeclean done"
#	@-$(MAKE) -f $(cmt_local_make_makefile) makeclean

##	  /bin/rm -f $(cmt_local_make_makefile) $(bin)make_dependencies.make

install :: makeinstall

makeinstall :: $(make_dependencies) $(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting install make"
	@-$(MAKE) -f $(cmt_local_make_makefile) install
	$(echo) "(constituents.make) install make done"

uninstall :: makeuninstall

$(foreach d,$(make_dependencies),$(eval $(d)uninstall_dependencies += makeuninstall))

makeuninstall :: $(makeuninstall_dependencies) $(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting uninstall make"
	@$(MAKE) -f $(cmt_local_make_makefile) uninstall
	$(echo) "(constituents.make) uninstall make done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ make"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ make done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_CompilePython_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CompilePython_has_target_tag

#cmt_local_tagfile_CompilePython = $(CCProtonPi0_tag)_CompilePython.make
cmt_local_tagfile_CompilePython = $(bin)$(CCProtonPi0_tag)_CompilePython.make
cmt_local_setup_CompilePython = $(bin)setup_CompilePython$$$$.make
cmt_final_setup_CompilePython = $(bin)setup_CompilePython.make
#cmt_final_setup_CompilePython = $(bin)CCProtonPi0_CompilePythonsetup.make
cmt_local_CompilePython_makefile = $(bin)CompilePython.make

CompilePython_extratags = -tag_add=target_CompilePython

#$(cmt_local_tagfile_CompilePython) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_CompilePython) ::
else
$(cmt_local_tagfile_CompilePython) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_CompilePython); then /bin/rm -f $(cmt_local_tagfile_CompilePython); fi ; \
	  $(cmtexe) -tag=$(tags) $(CompilePython_extratags) build tag_makefile >>$(cmt_local_tagfile_CompilePython)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_CompilePython)"; \
	  test ! -f $(cmt_local_setup_CompilePython) || \rm -f $(cmt_local_setup_CompilePython); \
	  trap '\rm -f $(cmt_local_setup_CompilePython)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(CompilePython_extratags) show setup >$(cmt_local_setup_CompilePython) && \
	  if [ -f $(cmt_final_setup_CompilePython) ] && \
	    \cmp -s $(cmt_final_setup_CompilePython) $(cmt_local_setup_CompilePython); then \
	    \rm $(cmt_local_setup_CompilePython); else \
	    \mv -f $(cmt_local_setup_CompilePython) $(cmt_final_setup_CompilePython); fi

else

#cmt_local_tagfile_CompilePython = $(CCProtonPi0_tag).make
cmt_local_tagfile_CompilePython = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_CompilePython = $(bin)setup.make
#cmt_final_setup_CompilePython = $(bin)CCProtonPi0setup.make
cmt_local_CompilePython_makefile = $(bin)CompilePython.make

endif

ifdef STRUCTURED_OUTPUT
CompilePythondirs :
	@if test ! -d $(bin)CompilePython; then $(mkdir) -p $(bin)CompilePython; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CompilePython
else
CompilePythondirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# CompilePythondirs ::
#	@if test ! -d $(bin)CompilePython; then $(mkdir) -p $(bin)CompilePython; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)CompilePython
#
#$(cmt_local_CompilePython_makefile) :: $(CompilePython_dependencies) $(cmt_local_tagfile_CompilePython) build_library_links dirs CompilePythondirs
#else
#$(cmt_local_CompilePython_makefile) :: $(CompilePython_dependencies) $(cmt_local_tagfile_CompilePython) build_library_links dirs
#endif
#else
#$(cmt_local_CompilePython_makefile) :: $(cmt_local_tagfile_CompilePython)
#endif

makefiles : $(cmt_local_CompilePython_makefile)

ifndef QUICK
$(cmt_local_CompilePython_makefile) : $(CompilePython_dependencies) $(cmt_local_tagfile_CompilePython) build_library_links
else
$(cmt_local_CompilePython_makefile) : $(cmt_local_tagfile_CompilePython)
endif
	$(echo) "(constituents.make) Building CompilePython.make"; \
	  $(cmtexe) -tag=$(tags) $(CompilePython_extratags) build constituent_makefile -out=$(cmt_local_CompilePython_makefile) CompilePython

CompilePython :: $(CompilePython_dependencies) $(cmt_local_CompilePython_makefile) dirs CompilePythondirs
	$(echo) "(constituents.make) Creating CompilePython${lock_suffix} and Starting CompilePython"
	@${lock_command} CompilePython${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} CompilePython${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_CompilePython_makefile) CompilePython; \
	  retval=$$?; ${unlock_command} CompilePython${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) CompilePython done"

clean :: CompilePythonclean

CompilePythonclean :: $(CompilePythonclean_dependencies) ##$(cmt_local_CompilePython_makefile)
	$(echo) "(constituents.make) Starting CompilePythonclean"
	@-if test -f $(cmt_local_CompilePython_makefile); then \
	  $(MAKE) -f $(cmt_local_CompilePython_makefile) CompilePythonclean; \
	fi
	$(echo) "(constituents.make) CompilePythonclean done"
#	@-$(MAKE) -f $(cmt_local_CompilePython_makefile) CompilePythonclean

##	  /bin/rm -f $(cmt_local_CompilePython_makefile) $(bin)CompilePython_dependencies.make

install :: CompilePythoninstall

CompilePythoninstall :: $(CompilePython_dependencies) $(cmt_local_CompilePython_makefile)
	$(echo) "(constituents.make) Starting install CompilePython"
	@-$(MAKE) -f $(cmt_local_CompilePython_makefile) install
	$(echo) "(constituents.make) install CompilePython done"

uninstall :: CompilePythonuninstall

$(foreach d,$(CompilePython_dependencies),$(eval $(d)uninstall_dependencies += CompilePythonuninstall))

CompilePythonuninstall :: $(CompilePythonuninstall_dependencies) $(cmt_local_CompilePython_makefile)
	$(echo) "(constituents.make) Starting uninstall CompilePython"
	@$(MAKE) -f $(cmt_local_CompilePython_makefile) uninstall
	$(echo) "(constituents.make) uninstall CompilePython done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CompilePython"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CompilePython done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_qmtest_run_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_qmtest_run_has_target_tag

#cmt_local_tagfile_qmtest_run = $(CCProtonPi0_tag)_qmtest_run.make
cmt_local_tagfile_qmtest_run = $(bin)$(CCProtonPi0_tag)_qmtest_run.make
cmt_local_setup_qmtest_run = $(bin)setup_qmtest_run$$$$.make
cmt_final_setup_qmtest_run = $(bin)setup_qmtest_run.make
#cmt_final_setup_qmtest_run = $(bin)CCProtonPi0_qmtest_runsetup.make
cmt_local_qmtest_run_makefile = $(bin)qmtest_run.make

qmtest_run_extratags = -tag_add=target_qmtest_run

#$(cmt_local_tagfile_qmtest_run) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_qmtest_run) ::
else
$(cmt_local_tagfile_qmtest_run) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_qmtest_run); then /bin/rm -f $(cmt_local_tagfile_qmtest_run); fi ; \
	  $(cmtexe) -tag=$(tags) $(qmtest_run_extratags) build tag_makefile >>$(cmt_local_tagfile_qmtest_run)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_qmtest_run)"; \
	  test ! -f $(cmt_local_setup_qmtest_run) || \rm -f $(cmt_local_setup_qmtest_run); \
	  trap '\rm -f $(cmt_local_setup_qmtest_run)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(qmtest_run_extratags) show setup >$(cmt_local_setup_qmtest_run) && \
	  if [ -f $(cmt_final_setup_qmtest_run) ] && \
	    \cmp -s $(cmt_final_setup_qmtest_run) $(cmt_local_setup_qmtest_run); then \
	    \rm $(cmt_local_setup_qmtest_run); else \
	    \mv -f $(cmt_local_setup_qmtest_run) $(cmt_final_setup_qmtest_run); fi

else

#cmt_local_tagfile_qmtest_run = $(CCProtonPi0_tag).make
cmt_local_tagfile_qmtest_run = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_qmtest_run = $(bin)setup.make
#cmt_final_setup_qmtest_run = $(bin)CCProtonPi0setup.make
cmt_local_qmtest_run_makefile = $(bin)qmtest_run.make

endif

ifdef STRUCTURED_OUTPUT
qmtest_rundirs :
	@if test ! -d $(bin)qmtest_run; then $(mkdir) -p $(bin)qmtest_run; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)qmtest_run
else
qmtest_rundirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# qmtest_rundirs ::
#	@if test ! -d $(bin)qmtest_run; then $(mkdir) -p $(bin)qmtest_run; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)qmtest_run
#
#$(cmt_local_qmtest_run_makefile) :: $(qmtest_run_dependencies) $(cmt_local_tagfile_qmtest_run) build_library_links dirs qmtest_rundirs
#else
#$(cmt_local_qmtest_run_makefile) :: $(qmtest_run_dependencies) $(cmt_local_tagfile_qmtest_run) build_library_links dirs
#endif
#else
#$(cmt_local_qmtest_run_makefile) :: $(cmt_local_tagfile_qmtest_run)
#endif

makefiles : $(cmt_local_qmtest_run_makefile)

ifndef QUICK
$(cmt_local_qmtest_run_makefile) : $(qmtest_run_dependencies) $(cmt_local_tagfile_qmtest_run) build_library_links
else
$(cmt_local_qmtest_run_makefile) : $(cmt_local_tagfile_qmtest_run)
endif
	$(echo) "(constituents.make) Building qmtest_run.make"; \
	  $(cmtexe) -tag=$(tags) $(qmtest_run_extratags) build constituent_makefile -out=$(cmt_local_qmtest_run_makefile) qmtest_run

qmtest_run :: $(qmtest_run_dependencies) $(cmt_local_qmtest_run_makefile) dirs qmtest_rundirs
	$(echo) "(constituents.make) Creating qmtest_run${lock_suffix} and Starting qmtest_run"
	@${lock_command} qmtest_run${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} qmtest_run${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_qmtest_run_makefile) qmtest_run; \
	  retval=$$?; ${unlock_command} qmtest_run${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) qmtest_run done"

clean :: qmtest_runclean

qmtest_runclean :: $(qmtest_runclean_dependencies) ##$(cmt_local_qmtest_run_makefile)
	$(echo) "(constituents.make) Starting qmtest_runclean"
	@-if test -f $(cmt_local_qmtest_run_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_run_makefile) qmtest_runclean; \
	fi
	$(echo) "(constituents.make) qmtest_runclean done"
#	@-$(MAKE) -f $(cmt_local_qmtest_run_makefile) qmtest_runclean

##	  /bin/rm -f $(cmt_local_qmtest_run_makefile) $(bin)qmtest_run_dependencies.make

install :: qmtest_runinstall

qmtest_runinstall :: $(qmtest_run_dependencies) $(cmt_local_qmtest_run_makefile)
	$(echo) "(constituents.make) Starting install qmtest_run"
	@-$(MAKE) -f $(cmt_local_qmtest_run_makefile) install
	$(echo) "(constituents.make) install qmtest_run done"

uninstall :: qmtest_rununinstall

$(foreach d,$(qmtest_run_dependencies),$(eval $(d)uninstall_dependencies += qmtest_rununinstall))

qmtest_rununinstall :: $(qmtest_rununinstall_dependencies) $(cmt_local_qmtest_run_makefile)
	$(echo) "(constituents.make) Starting uninstall qmtest_run"
	@$(MAKE) -f $(cmt_local_qmtest_run_makefile) uninstall
	$(echo) "(constituents.make) uninstall qmtest_run done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ qmtest_run"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ qmtest_run done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_qmtest_summarize_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_qmtest_summarize_has_target_tag

#cmt_local_tagfile_qmtest_summarize = $(CCProtonPi0_tag)_qmtest_summarize.make
cmt_local_tagfile_qmtest_summarize = $(bin)$(CCProtonPi0_tag)_qmtest_summarize.make
cmt_local_setup_qmtest_summarize = $(bin)setup_qmtest_summarize$$$$.make
cmt_final_setup_qmtest_summarize = $(bin)setup_qmtest_summarize.make
#cmt_final_setup_qmtest_summarize = $(bin)CCProtonPi0_qmtest_summarizesetup.make
cmt_local_qmtest_summarize_makefile = $(bin)qmtest_summarize.make

qmtest_summarize_extratags = -tag_add=target_qmtest_summarize

#$(cmt_local_tagfile_qmtest_summarize) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_qmtest_summarize) ::
else
$(cmt_local_tagfile_qmtest_summarize) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_qmtest_summarize); then /bin/rm -f $(cmt_local_tagfile_qmtest_summarize); fi ; \
	  $(cmtexe) -tag=$(tags) $(qmtest_summarize_extratags) build tag_makefile >>$(cmt_local_tagfile_qmtest_summarize)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_qmtest_summarize)"; \
	  test ! -f $(cmt_local_setup_qmtest_summarize) || \rm -f $(cmt_local_setup_qmtest_summarize); \
	  trap '\rm -f $(cmt_local_setup_qmtest_summarize)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(qmtest_summarize_extratags) show setup >$(cmt_local_setup_qmtest_summarize) && \
	  if [ -f $(cmt_final_setup_qmtest_summarize) ] && \
	    \cmp -s $(cmt_final_setup_qmtest_summarize) $(cmt_local_setup_qmtest_summarize); then \
	    \rm $(cmt_local_setup_qmtest_summarize); else \
	    \mv -f $(cmt_local_setup_qmtest_summarize) $(cmt_final_setup_qmtest_summarize); fi

else

#cmt_local_tagfile_qmtest_summarize = $(CCProtonPi0_tag).make
cmt_local_tagfile_qmtest_summarize = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_qmtest_summarize = $(bin)setup.make
#cmt_final_setup_qmtest_summarize = $(bin)CCProtonPi0setup.make
cmt_local_qmtest_summarize_makefile = $(bin)qmtest_summarize.make

endif

ifdef STRUCTURED_OUTPUT
qmtest_summarizedirs :
	@if test ! -d $(bin)qmtest_summarize; then $(mkdir) -p $(bin)qmtest_summarize; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)qmtest_summarize
else
qmtest_summarizedirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# qmtest_summarizedirs ::
#	@if test ! -d $(bin)qmtest_summarize; then $(mkdir) -p $(bin)qmtest_summarize; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)qmtest_summarize
#
#$(cmt_local_qmtest_summarize_makefile) :: $(qmtest_summarize_dependencies) $(cmt_local_tagfile_qmtest_summarize) build_library_links dirs qmtest_summarizedirs
#else
#$(cmt_local_qmtest_summarize_makefile) :: $(qmtest_summarize_dependencies) $(cmt_local_tagfile_qmtest_summarize) build_library_links dirs
#endif
#else
#$(cmt_local_qmtest_summarize_makefile) :: $(cmt_local_tagfile_qmtest_summarize)
#endif

makefiles : $(cmt_local_qmtest_summarize_makefile)

ifndef QUICK
$(cmt_local_qmtest_summarize_makefile) : $(qmtest_summarize_dependencies) $(cmt_local_tagfile_qmtest_summarize) build_library_links
else
$(cmt_local_qmtest_summarize_makefile) : $(cmt_local_tagfile_qmtest_summarize)
endif
	$(echo) "(constituents.make) Building qmtest_summarize.make"; \
	  $(cmtexe) -tag=$(tags) $(qmtest_summarize_extratags) build constituent_makefile -out=$(cmt_local_qmtest_summarize_makefile) qmtest_summarize

qmtest_summarize :: $(qmtest_summarize_dependencies) $(cmt_local_qmtest_summarize_makefile) dirs qmtest_summarizedirs
	$(echo) "(constituents.make) Creating qmtest_summarize${lock_suffix} and Starting qmtest_summarize"
	@${lock_command} qmtest_summarize${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} qmtest_summarize${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_qmtest_summarize_makefile) qmtest_summarize; \
	  retval=$$?; ${unlock_command} qmtest_summarize${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) qmtest_summarize done"

clean :: qmtest_summarizeclean

qmtest_summarizeclean :: $(qmtest_summarizeclean_dependencies) ##$(cmt_local_qmtest_summarize_makefile)
	$(echo) "(constituents.make) Starting qmtest_summarizeclean"
	@-if test -f $(cmt_local_qmtest_summarize_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_summarize_makefile) qmtest_summarizeclean; \
	fi
	$(echo) "(constituents.make) qmtest_summarizeclean done"
#	@-$(MAKE) -f $(cmt_local_qmtest_summarize_makefile) qmtest_summarizeclean

##	  /bin/rm -f $(cmt_local_qmtest_summarize_makefile) $(bin)qmtest_summarize_dependencies.make

install :: qmtest_summarizeinstall

qmtest_summarizeinstall :: $(qmtest_summarize_dependencies) $(cmt_local_qmtest_summarize_makefile)
	$(echo) "(constituents.make) Starting install qmtest_summarize"
	@-$(MAKE) -f $(cmt_local_qmtest_summarize_makefile) install
	$(echo) "(constituents.make) install qmtest_summarize done"

uninstall :: qmtest_summarizeuninstall

$(foreach d,$(qmtest_summarize_dependencies),$(eval $(d)uninstall_dependencies += qmtest_summarizeuninstall))

qmtest_summarizeuninstall :: $(qmtest_summarizeuninstall_dependencies) $(cmt_local_qmtest_summarize_makefile)
	$(echo) "(constituents.make) Starting uninstall qmtest_summarize"
	@$(MAKE) -f $(cmt_local_qmtest_summarize_makefile) uninstall
	$(echo) "(constituents.make) uninstall qmtest_summarize done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ qmtest_summarize"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ qmtest_summarize done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_TestPackage_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TestPackage_has_target_tag

#cmt_local_tagfile_TestPackage = $(CCProtonPi0_tag)_TestPackage.make
cmt_local_tagfile_TestPackage = $(bin)$(CCProtonPi0_tag)_TestPackage.make
cmt_local_setup_TestPackage = $(bin)setup_TestPackage$$$$.make
cmt_final_setup_TestPackage = $(bin)setup_TestPackage.make
#cmt_final_setup_TestPackage = $(bin)CCProtonPi0_TestPackagesetup.make
cmt_local_TestPackage_makefile = $(bin)TestPackage.make

TestPackage_extratags = -tag_add=target_TestPackage

#$(cmt_local_tagfile_TestPackage) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_TestPackage) ::
else
$(cmt_local_tagfile_TestPackage) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_TestPackage); then /bin/rm -f $(cmt_local_tagfile_TestPackage); fi ; \
	  $(cmtexe) -tag=$(tags) $(TestPackage_extratags) build tag_makefile >>$(cmt_local_tagfile_TestPackage)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_TestPackage)"; \
	  test ! -f $(cmt_local_setup_TestPackage) || \rm -f $(cmt_local_setup_TestPackage); \
	  trap '\rm -f $(cmt_local_setup_TestPackage)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(TestPackage_extratags) show setup >$(cmt_local_setup_TestPackage) && \
	  if [ -f $(cmt_final_setup_TestPackage) ] && \
	    \cmp -s $(cmt_final_setup_TestPackage) $(cmt_local_setup_TestPackage); then \
	    \rm $(cmt_local_setup_TestPackage); else \
	    \mv -f $(cmt_local_setup_TestPackage) $(cmt_final_setup_TestPackage); fi

else

#cmt_local_tagfile_TestPackage = $(CCProtonPi0_tag).make
cmt_local_tagfile_TestPackage = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_TestPackage = $(bin)setup.make
#cmt_final_setup_TestPackage = $(bin)CCProtonPi0setup.make
cmt_local_TestPackage_makefile = $(bin)TestPackage.make

endif

ifdef STRUCTURED_OUTPUT
TestPackagedirs :
	@if test ! -d $(bin)TestPackage; then $(mkdir) -p $(bin)TestPackage; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)TestPackage
else
TestPackagedirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# TestPackagedirs ::
#	@if test ! -d $(bin)TestPackage; then $(mkdir) -p $(bin)TestPackage; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)TestPackage
#
#$(cmt_local_TestPackage_makefile) :: $(TestPackage_dependencies) $(cmt_local_tagfile_TestPackage) build_library_links dirs TestPackagedirs
#else
#$(cmt_local_TestPackage_makefile) :: $(TestPackage_dependencies) $(cmt_local_tagfile_TestPackage) build_library_links dirs
#endif
#else
#$(cmt_local_TestPackage_makefile) :: $(cmt_local_tagfile_TestPackage)
#endif

makefiles : $(cmt_local_TestPackage_makefile)

ifndef QUICK
$(cmt_local_TestPackage_makefile) : $(TestPackage_dependencies) $(cmt_local_tagfile_TestPackage) build_library_links
else
$(cmt_local_TestPackage_makefile) : $(cmt_local_tagfile_TestPackage)
endif
	$(echo) "(constituents.make) Building TestPackage.make"; \
	  $(cmtexe) -tag=$(tags) $(TestPackage_extratags) build constituent_makefile -out=$(cmt_local_TestPackage_makefile) TestPackage

TestPackage :: $(TestPackage_dependencies) $(cmt_local_TestPackage_makefile) dirs TestPackagedirs
	$(echo) "(constituents.make) Creating TestPackage${lock_suffix} and Starting TestPackage"
	@${lock_command} TestPackage${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} TestPackage${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_TestPackage_makefile) TestPackage; \
	  retval=$$?; ${unlock_command} TestPackage${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) TestPackage done"

clean :: TestPackageclean

TestPackageclean :: $(TestPackageclean_dependencies) ##$(cmt_local_TestPackage_makefile)
	$(echo) "(constituents.make) Starting TestPackageclean"
	@-if test -f $(cmt_local_TestPackage_makefile); then \
	  $(MAKE) -f $(cmt_local_TestPackage_makefile) TestPackageclean; \
	fi
	$(echo) "(constituents.make) TestPackageclean done"
#	@-$(MAKE) -f $(cmt_local_TestPackage_makefile) TestPackageclean

##	  /bin/rm -f $(cmt_local_TestPackage_makefile) $(bin)TestPackage_dependencies.make

install :: TestPackageinstall

TestPackageinstall :: $(TestPackage_dependencies) $(cmt_local_TestPackage_makefile)
	$(echo) "(constituents.make) Starting install TestPackage"
	@-$(MAKE) -f $(cmt_local_TestPackage_makefile) install
	$(echo) "(constituents.make) install TestPackage done"

uninstall :: TestPackageuninstall

$(foreach d,$(TestPackage_dependencies),$(eval $(d)uninstall_dependencies += TestPackageuninstall))

TestPackageuninstall :: $(TestPackageuninstall_dependencies) $(cmt_local_TestPackage_makefile)
	$(echo) "(constituents.make) Starting uninstall TestPackage"
	@$(MAKE) -f $(cmt_local_TestPackage_makefile) uninstall
	$(echo) "(constituents.make) uninstall TestPackage done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ TestPackage"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ TestPackage done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_TestProject_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TestProject_has_target_tag

#cmt_local_tagfile_TestProject = $(CCProtonPi0_tag)_TestProject.make
cmt_local_tagfile_TestProject = $(bin)$(CCProtonPi0_tag)_TestProject.make
cmt_local_setup_TestProject = $(bin)setup_TestProject$$$$.make
cmt_final_setup_TestProject = $(bin)setup_TestProject.make
#cmt_final_setup_TestProject = $(bin)CCProtonPi0_TestProjectsetup.make
cmt_local_TestProject_makefile = $(bin)TestProject.make

TestProject_extratags = -tag_add=target_TestProject

#$(cmt_local_tagfile_TestProject) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_TestProject) ::
else
$(cmt_local_tagfile_TestProject) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_TestProject); then /bin/rm -f $(cmt_local_tagfile_TestProject); fi ; \
	  $(cmtexe) -tag=$(tags) $(TestProject_extratags) build tag_makefile >>$(cmt_local_tagfile_TestProject)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_TestProject)"; \
	  test ! -f $(cmt_local_setup_TestProject) || \rm -f $(cmt_local_setup_TestProject); \
	  trap '\rm -f $(cmt_local_setup_TestProject)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(TestProject_extratags) show setup >$(cmt_local_setup_TestProject) && \
	  if [ -f $(cmt_final_setup_TestProject) ] && \
	    \cmp -s $(cmt_final_setup_TestProject) $(cmt_local_setup_TestProject); then \
	    \rm $(cmt_local_setup_TestProject); else \
	    \mv -f $(cmt_local_setup_TestProject) $(cmt_final_setup_TestProject); fi

else

#cmt_local_tagfile_TestProject = $(CCProtonPi0_tag).make
cmt_local_tagfile_TestProject = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_TestProject = $(bin)setup.make
#cmt_final_setup_TestProject = $(bin)CCProtonPi0setup.make
cmt_local_TestProject_makefile = $(bin)TestProject.make

endif

ifdef STRUCTURED_OUTPUT
TestProjectdirs :
	@if test ! -d $(bin)TestProject; then $(mkdir) -p $(bin)TestProject; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)TestProject
else
TestProjectdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# TestProjectdirs ::
#	@if test ! -d $(bin)TestProject; then $(mkdir) -p $(bin)TestProject; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)TestProject
#
#$(cmt_local_TestProject_makefile) :: $(TestProject_dependencies) $(cmt_local_tagfile_TestProject) build_library_links dirs TestProjectdirs
#else
#$(cmt_local_TestProject_makefile) :: $(TestProject_dependencies) $(cmt_local_tagfile_TestProject) build_library_links dirs
#endif
#else
#$(cmt_local_TestProject_makefile) :: $(cmt_local_tagfile_TestProject)
#endif

makefiles : $(cmt_local_TestProject_makefile)

ifndef QUICK
$(cmt_local_TestProject_makefile) : $(TestProject_dependencies) $(cmt_local_tagfile_TestProject) build_library_links
else
$(cmt_local_TestProject_makefile) : $(cmt_local_tagfile_TestProject)
endif
	$(echo) "(constituents.make) Building TestProject.make"; \
	  $(cmtexe) -tag=$(tags) $(TestProject_extratags) build constituent_makefile -out=$(cmt_local_TestProject_makefile) TestProject

TestProject :: $(TestProject_dependencies) $(cmt_local_TestProject_makefile) dirs TestProjectdirs
	$(echo) "(constituents.make) Creating TestProject${lock_suffix} and Starting TestProject"
	@${lock_command} TestProject${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} TestProject${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_TestProject_makefile) TestProject; \
	  retval=$$?; ${unlock_command} TestProject${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) TestProject done"

clean :: TestProjectclean

TestProjectclean :: $(TestProjectclean_dependencies) ##$(cmt_local_TestProject_makefile)
	$(echo) "(constituents.make) Starting TestProjectclean"
	@-if test -f $(cmt_local_TestProject_makefile); then \
	  $(MAKE) -f $(cmt_local_TestProject_makefile) TestProjectclean; \
	fi
	$(echo) "(constituents.make) TestProjectclean done"
#	@-$(MAKE) -f $(cmt_local_TestProject_makefile) TestProjectclean

##	  /bin/rm -f $(cmt_local_TestProject_makefile) $(bin)TestProject_dependencies.make

install :: TestProjectinstall

TestProjectinstall :: $(TestProject_dependencies) $(cmt_local_TestProject_makefile)
	$(echo) "(constituents.make) Starting install TestProject"
	@-$(MAKE) -f $(cmt_local_TestProject_makefile) install
	$(echo) "(constituents.make) install TestProject done"

uninstall :: TestProjectuninstall

$(foreach d,$(TestProject_dependencies),$(eval $(d)uninstall_dependencies += TestProjectuninstall))

TestProjectuninstall :: $(TestProjectuninstall_dependencies) $(cmt_local_TestProject_makefile)
	$(echo) "(constituents.make) Starting uninstall TestProject"
	@$(MAKE) -f $(cmt_local_TestProject_makefile) uninstall
	$(echo) "(constituents.make) uninstall TestProject done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ TestProject"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ TestProject done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_new_rootsys_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_new_rootsys_has_target_tag

#cmt_local_tagfile_new_rootsys = $(CCProtonPi0_tag)_new_rootsys.make
cmt_local_tagfile_new_rootsys = $(bin)$(CCProtonPi0_tag)_new_rootsys.make
cmt_local_setup_new_rootsys = $(bin)setup_new_rootsys$$$$.make
cmt_final_setup_new_rootsys = $(bin)setup_new_rootsys.make
#cmt_final_setup_new_rootsys = $(bin)CCProtonPi0_new_rootsyssetup.make
cmt_local_new_rootsys_makefile = $(bin)new_rootsys.make

new_rootsys_extratags = -tag_add=target_new_rootsys

#$(cmt_local_tagfile_new_rootsys) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_new_rootsys) ::
else
$(cmt_local_tagfile_new_rootsys) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_new_rootsys); then /bin/rm -f $(cmt_local_tagfile_new_rootsys); fi ; \
	  $(cmtexe) -tag=$(tags) $(new_rootsys_extratags) build tag_makefile >>$(cmt_local_tagfile_new_rootsys)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_new_rootsys)"; \
	  test ! -f $(cmt_local_setup_new_rootsys) || \rm -f $(cmt_local_setup_new_rootsys); \
	  trap '\rm -f $(cmt_local_setup_new_rootsys)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(new_rootsys_extratags) show setup >$(cmt_local_setup_new_rootsys) && \
	  if [ -f $(cmt_final_setup_new_rootsys) ] && \
	    \cmp -s $(cmt_final_setup_new_rootsys) $(cmt_local_setup_new_rootsys); then \
	    \rm $(cmt_local_setup_new_rootsys); else \
	    \mv -f $(cmt_local_setup_new_rootsys) $(cmt_final_setup_new_rootsys); fi

else

#cmt_local_tagfile_new_rootsys = $(CCProtonPi0_tag).make
cmt_local_tagfile_new_rootsys = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_new_rootsys = $(bin)setup.make
#cmt_final_setup_new_rootsys = $(bin)CCProtonPi0setup.make
cmt_local_new_rootsys_makefile = $(bin)new_rootsys.make

endif

ifdef STRUCTURED_OUTPUT
new_rootsysdirs :
	@if test ! -d $(bin)new_rootsys; then $(mkdir) -p $(bin)new_rootsys; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)new_rootsys
else
new_rootsysdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# new_rootsysdirs ::
#	@if test ! -d $(bin)new_rootsys; then $(mkdir) -p $(bin)new_rootsys; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)new_rootsys
#
#$(cmt_local_new_rootsys_makefile) :: $(new_rootsys_dependencies) $(cmt_local_tagfile_new_rootsys) build_library_links dirs new_rootsysdirs
#else
#$(cmt_local_new_rootsys_makefile) :: $(new_rootsys_dependencies) $(cmt_local_tagfile_new_rootsys) build_library_links dirs
#endif
#else
#$(cmt_local_new_rootsys_makefile) :: $(cmt_local_tagfile_new_rootsys)
#endif

makefiles : $(cmt_local_new_rootsys_makefile)

ifndef QUICK
$(cmt_local_new_rootsys_makefile) : $(new_rootsys_dependencies) $(cmt_local_tagfile_new_rootsys) build_library_links
else
$(cmt_local_new_rootsys_makefile) : $(cmt_local_tagfile_new_rootsys)
endif
	$(echo) "(constituents.make) Building new_rootsys.make"; \
	  $(cmtexe) -tag=$(tags) $(new_rootsys_extratags) build constituent_makefile -out=$(cmt_local_new_rootsys_makefile) new_rootsys

new_rootsys :: $(new_rootsys_dependencies) $(cmt_local_new_rootsys_makefile) dirs new_rootsysdirs
	$(echo) "(constituents.make) Creating new_rootsys${lock_suffix} and Starting new_rootsys"
	@${lock_command} new_rootsys${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} new_rootsys${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_new_rootsys_makefile) new_rootsys; \
	  retval=$$?; ${unlock_command} new_rootsys${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) new_rootsys done"

clean :: new_rootsysclean

new_rootsysclean :: $(new_rootsysclean_dependencies) ##$(cmt_local_new_rootsys_makefile)
	$(echo) "(constituents.make) Starting new_rootsysclean"
	@-if test -f $(cmt_local_new_rootsys_makefile); then \
	  $(MAKE) -f $(cmt_local_new_rootsys_makefile) new_rootsysclean; \
	fi
	$(echo) "(constituents.make) new_rootsysclean done"
#	@-$(MAKE) -f $(cmt_local_new_rootsys_makefile) new_rootsysclean

##	  /bin/rm -f $(cmt_local_new_rootsys_makefile) $(bin)new_rootsys_dependencies.make

install :: new_rootsysinstall

new_rootsysinstall :: $(new_rootsys_dependencies) $(cmt_local_new_rootsys_makefile)
	$(echo) "(constituents.make) Starting install new_rootsys"
	@-$(MAKE) -f $(cmt_local_new_rootsys_makefile) install
	$(echo) "(constituents.make) install new_rootsys done"

uninstall :: new_rootsysuninstall

$(foreach d,$(new_rootsys_dependencies),$(eval $(d)uninstall_dependencies += new_rootsysuninstall))

new_rootsysuninstall :: $(new_rootsysuninstall_dependencies) $(cmt_local_new_rootsys_makefile)
	$(echo) "(constituents.make) Starting uninstall new_rootsys"
	@$(MAKE) -f $(cmt_local_new_rootsys_makefile) uninstall
	$(echo) "(constituents.make) uninstall new_rootsys done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ new_rootsys"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ new_rootsys done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_dowork_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_dowork_has_target_tag

#cmt_local_tagfile_dowork = $(CCProtonPi0_tag)_dowork.make
cmt_local_tagfile_dowork = $(bin)$(CCProtonPi0_tag)_dowork.make
cmt_local_setup_dowork = $(bin)setup_dowork$$$$.make
cmt_final_setup_dowork = $(bin)setup_dowork.make
#cmt_final_setup_dowork = $(bin)CCProtonPi0_doworksetup.make
cmt_local_dowork_makefile = $(bin)dowork.make

dowork_extratags = -tag_add=target_dowork

#$(cmt_local_tagfile_dowork) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_dowork) ::
else
$(cmt_local_tagfile_dowork) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_dowork); then /bin/rm -f $(cmt_local_tagfile_dowork); fi ; \
	  $(cmtexe) -tag=$(tags) $(dowork_extratags) build tag_makefile >>$(cmt_local_tagfile_dowork)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_dowork)"; \
	  test ! -f $(cmt_local_setup_dowork) || \rm -f $(cmt_local_setup_dowork); \
	  trap '\rm -f $(cmt_local_setup_dowork)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(dowork_extratags) show setup >$(cmt_local_setup_dowork) && \
	  if [ -f $(cmt_final_setup_dowork) ] && \
	    \cmp -s $(cmt_final_setup_dowork) $(cmt_local_setup_dowork); then \
	    \rm $(cmt_local_setup_dowork); else \
	    \mv -f $(cmt_local_setup_dowork) $(cmt_final_setup_dowork); fi

else

#cmt_local_tagfile_dowork = $(CCProtonPi0_tag).make
cmt_local_tagfile_dowork = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_dowork = $(bin)setup.make
#cmt_final_setup_dowork = $(bin)CCProtonPi0setup.make
cmt_local_dowork_makefile = $(bin)dowork.make

endif

ifdef STRUCTURED_OUTPUT
doworkdirs :
	@if test ! -d $(bin)dowork; then $(mkdir) -p $(bin)dowork; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)dowork
else
doworkdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# doworkdirs ::
#	@if test ! -d $(bin)dowork; then $(mkdir) -p $(bin)dowork; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)dowork
#
#$(cmt_local_dowork_makefile) :: $(dowork_dependencies) $(cmt_local_tagfile_dowork) build_library_links dirs doworkdirs
#else
#$(cmt_local_dowork_makefile) :: $(dowork_dependencies) $(cmt_local_tagfile_dowork) build_library_links dirs
#endif
#else
#$(cmt_local_dowork_makefile) :: $(cmt_local_tagfile_dowork)
#endif

makefiles : $(cmt_local_dowork_makefile)

ifndef QUICK
$(cmt_local_dowork_makefile) : $(dowork_dependencies) $(cmt_local_tagfile_dowork) build_library_links
else
$(cmt_local_dowork_makefile) : $(cmt_local_tagfile_dowork)
endif
	$(echo) "(constituents.make) Building dowork.make"; \
	  $(cmtexe) -tag=$(tags) $(dowork_extratags) build constituent_makefile -out=$(cmt_local_dowork_makefile) dowork

dowork :: $(dowork_dependencies) $(cmt_local_dowork_makefile) dirs doworkdirs
	$(echo) "(constituents.make) Creating dowork${lock_suffix} and Starting dowork"
	@${lock_command} dowork${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} dowork${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_dowork_makefile) dowork; \
	  retval=$$?; ${unlock_command} dowork${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) dowork done"

clean :: doworkclean

doworkclean :: $(doworkclean_dependencies) ##$(cmt_local_dowork_makefile)
	$(echo) "(constituents.make) Starting doworkclean"
	@-if test -f $(cmt_local_dowork_makefile); then \
	  $(MAKE) -f $(cmt_local_dowork_makefile) doworkclean; \
	fi
	$(echo) "(constituents.make) doworkclean done"
#	@-$(MAKE) -f $(cmt_local_dowork_makefile) doworkclean

##	  /bin/rm -f $(cmt_local_dowork_makefile) $(bin)dowork_dependencies.make

install :: doworkinstall

doworkinstall :: $(dowork_dependencies) $(cmt_local_dowork_makefile)
	$(echo) "(constituents.make) Starting install dowork"
	@-$(MAKE) -f $(cmt_local_dowork_makefile) install
	$(echo) "(constituents.make) install dowork done"

uninstall :: doworkuninstall

$(foreach d,$(dowork_dependencies),$(eval $(d)uninstall_dependencies += doworkuninstall))

doworkuninstall :: $(doworkuninstall_dependencies) $(cmt_local_dowork_makefile)
	$(echo) "(constituents.make) Starting uninstall dowork"
	@$(MAKE) -f $(cmt_local_dowork_makefile) uninstall
	$(echo) "(constituents.make) uninstall dowork done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ dowork"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ dowork done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_symlinks_has_target_tag = 1

#--------------------------------------------------------

ifdef cmt_symlinks_has_target_tag

#cmt_local_tagfile_symlinks = $(CCProtonPi0_tag)_symlinks.make
cmt_local_tagfile_symlinks = $(bin)$(CCProtonPi0_tag)_symlinks.make
cmt_local_setup_symlinks = $(bin)setup_symlinks$$$$.make
cmt_final_setup_symlinks = $(bin)setup_symlinks.make
#cmt_final_setup_symlinks = $(bin)CCProtonPi0_symlinkssetup.make
cmt_local_symlinks_makefile = $(bin)symlinks.make

symlinks_extratags = -tag_add=target_symlinks

#$(cmt_local_tagfile_symlinks) : $(cmt_lock_setup)
ifndef QUICK
$(cmt_local_tagfile_symlinks) ::
else
$(cmt_local_tagfile_symlinks) :
endif
	$(echo) "(constituents.make) Rebuilding $@"; \
	  if test -f $(cmt_local_tagfile_symlinks); then /bin/rm -f $(cmt_local_tagfile_symlinks); fi ; \
	  $(cmtexe) -tag=$(tags) $(symlinks_extratags) build tag_makefile >>$(cmt_local_tagfile_symlinks)
	$(echo) "(constituents.make) Rebuilding $(cmt_final_setup_symlinks)"; \
	  test ! -f $(cmt_local_setup_symlinks) || \rm -f $(cmt_local_setup_symlinks); \
	  trap '\rm -f $(cmt_local_setup_symlinks)' 0 1 2 15; \
	  $(cmtexe) -tag=$(tags) $(symlinks_extratags) show setup >$(cmt_local_setup_symlinks) && \
	  if [ -f $(cmt_final_setup_symlinks) ] && \
	    \cmp -s $(cmt_final_setup_symlinks) $(cmt_local_setup_symlinks); then \
	    \rm $(cmt_local_setup_symlinks); else \
	    \mv -f $(cmt_local_setup_symlinks) $(cmt_final_setup_symlinks); fi

else

#cmt_local_tagfile_symlinks = $(CCProtonPi0_tag).make
cmt_local_tagfile_symlinks = $(bin)$(CCProtonPi0_tag).make
cmt_final_setup_symlinks = $(bin)setup.make
#cmt_final_setup_symlinks = $(bin)CCProtonPi0setup.make
cmt_local_symlinks_makefile = $(bin)symlinks.make

endif

ifdef STRUCTURED_OUTPUT
symlinksdirs :
	@if test ! -d $(bin)symlinks; then $(mkdir) -p $(bin)symlinks; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)symlinks
else
symlinksdirs : ;
endif

#ifndef QUICK
#ifdef STRUCTURED_OUTPUT
# symlinksdirs ::
#	@if test ! -d $(bin)symlinks; then $(mkdir) -p $(bin)symlinks; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)symlinks
#
#$(cmt_local_symlinks_makefile) :: $(symlinks_dependencies) $(cmt_local_tagfile_symlinks) build_library_links dirs symlinksdirs
#else
#$(cmt_local_symlinks_makefile) :: $(symlinks_dependencies) $(cmt_local_tagfile_symlinks) build_library_links dirs
#endif
#else
#$(cmt_local_symlinks_makefile) :: $(cmt_local_tagfile_symlinks)
#endif

makefiles : $(cmt_local_symlinks_makefile)

ifndef QUICK
$(cmt_local_symlinks_makefile) : $(symlinks_dependencies) $(cmt_local_tagfile_symlinks) build_library_links
else
$(cmt_local_symlinks_makefile) : $(cmt_local_tagfile_symlinks)
endif
	$(echo) "(constituents.make) Building symlinks.make"; \
	  $(cmtexe) -tag=$(tags) $(symlinks_extratags) build constituent_makefile -out=$(cmt_local_symlinks_makefile) symlinks

symlinks :: $(symlinks_dependencies) $(cmt_local_symlinks_makefile) dirs symlinksdirs
	$(echo) "(constituents.make) Creating symlinks${lock_suffix} and Starting symlinks"
	@${lock_command} symlinks${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} symlinks${lock_suffix}; exit $${retval}' 1 2 15; \
	  $(MAKE) -f $(cmt_local_symlinks_makefile) symlinks; \
	  retval=$$?; ${unlock_command} symlinks${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) symlinks done"

clean :: symlinksclean

symlinksclean :: $(symlinksclean_dependencies) ##$(cmt_local_symlinks_makefile)
	$(echo) "(constituents.make) Starting symlinksclean"
	@-if test -f $(cmt_local_symlinks_makefile); then \
	  $(MAKE) -f $(cmt_local_symlinks_makefile) symlinksclean; \
	fi
	$(echo) "(constituents.make) symlinksclean done"
#	@-$(MAKE) -f $(cmt_local_symlinks_makefile) symlinksclean

##	  /bin/rm -f $(cmt_local_symlinks_makefile) $(bin)symlinks_dependencies.make

install :: symlinksinstall

symlinksinstall :: $(symlinks_dependencies) $(cmt_local_symlinks_makefile)
	$(echo) "(constituents.make) Starting install symlinks"
	@-$(MAKE) -f $(cmt_local_symlinks_makefile) install
	$(echo) "(constituents.make) install symlinks done"

uninstall :: symlinksuninstall

$(foreach d,$(symlinks_dependencies),$(eval $(d)uninstall_dependencies += symlinksuninstall))

symlinksuninstall :: $(symlinksuninstall_dependencies) $(cmt_local_symlinks_makefile)
	$(echo) "(constituents.make) Starting uninstall symlinks"
	@$(MAKE) -f $(cmt_local_symlinks_makefile) uninstall
	$(echo) "(constituents.make) uninstall symlinks done"

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ symlinks"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ symlinks done"
endif

#-- end of constituent_lock ------
#-- start of constituents_trailer ------

clean :: remove_library_links

remove_library_links ::
	$(echo) "(constituents.make) Removing library links"; \
	  $(remove_library_links)

makefilesclean ::

###	@/bin/rm -f checkuses

###	/bin/rm -f *.make*

clean :: makefilesclean

binclean :: clean
	$(echo) "(constituents.make) Removing binary directory $(bin)"
	@if test ! "$(bin)" = "./"; then \
	  /bin/rm -rf $(bin); \
	fi

#-- end of constituents_trailer ------
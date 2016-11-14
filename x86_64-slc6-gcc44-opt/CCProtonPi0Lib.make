#-- start of make_header -----------------

#====================================
#  Library CCProtonPi0Lib
#
#   Generated Sat Nov 12 11:06:03 2016  by rgalindo
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_CCProtonPi0Lib_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CCProtonPi0Lib_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_CCProtonPi0Lib

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0Lib = $(CCProtonPi0_tag)_CCProtonPi0Lib.make
cmt_local_tagfile_CCProtonPi0Lib = $(bin)$(CCProtonPi0_tag)_CCProtonPi0Lib.make

else

tags      = $(tag),$(CMTEXTRATAGS)

CCProtonPi0_tag = $(tag)

#cmt_local_tagfile_CCProtonPi0Lib = $(CCProtonPi0_tag).make
cmt_local_tagfile_CCProtonPi0Lib = $(bin)$(CCProtonPi0_tag).make

endif

include $(cmt_local_tagfile_CCProtonPi0Lib)
#-include $(cmt_local_tagfile_CCProtonPi0Lib)

ifdef cmt_CCProtonPi0Lib_has_target_tag

cmt_final_setup_CCProtonPi0Lib = $(bin)setup_CCProtonPi0Lib.make
#cmt_final_setup_CCProtonPi0Lib = $(bin)CCProtonPi0_CCProtonPi0Libsetup.make
cmt_local_CCProtonPi0Lib_makefile = $(bin)CCProtonPi0Lib.make

else

cmt_final_setup_CCProtonPi0Lib = $(bin)setup.make
#cmt_final_setup_CCProtonPi0Lib = $(bin)CCProtonPi0setup.make
cmt_local_CCProtonPi0Lib_makefile = $(bin)CCProtonPi0Lib.make

endif

cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)CCProtonPi0setup.make

#CCProtonPi0Lib :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'CCProtonPi0Lib'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = CCProtonPi0Lib/
#CCProtonPi0Lib::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

CCProtonPi0Liblibname   = $(bin)$(library_prefix)CCProtonPi0Lib$(library_suffix)
CCProtonPi0Liblib       = $(CCProtonPi0Liblibname).a
CCProtonPi0Libstamp     = $(bin)CCProtonPi0Lib.stamp
CCProtonPi0Libshstamp   = $(bin)CCProtonPi0Lib.shstamp

CCProtonPi0Lib :: dirs  CCProtonPi0LibLIB
	$(echo) "CCProtonPi0Lib ok"

#-- end of libary_header ----------------
#-- start of libary ----------------------

CCProtonPi0LibLIB :: $(CCProtonPi0Liblib) $(CCProtonPi0Libshstamp)
	$(echo) "CCProtonPi0Lib : library ok"

$(CCProtonPi0Liblib) :: $(bin)CCProtonPi0.o $(bin)CCProtonPi0_Truth.o $(bin)AngleScan.o $(bin)AngleScan_U.o $(bin)AngleScan_V.o $(bin)ClusterVectorInfo.o $(bin)HTBlob.o $(bin)HTtool.o $(bin)Pi0BlobTool.o $(bin)DigitVectorTruthInfo.o $(bin)HitVectorTruthInfo.o $(bin)TrackTruthInfo.o $(bin)TraverseHistory.o $(bin)CCProtonPi0_Study_ShowerEnergy.o
	$(lib_echo) "static library $@"
	$(lib_silent) [ ! -f $@ ] || \rm -f $@
	$(lib_silent) $(ar) $(CCProtonPi0Liblib) $(bin)CCProtonPi0.o $(bin)CCProtonPi0_Truth.o $(bin)AngleScan.o $(bin)AngleScan_U.o $(bin)AngleScan_V.o $(bin)ClusterVectorInfo.o $(bin)HTBlob.o $(bin)HTtool.o $(bin)Pi0BlobTool.o $(bin)DigitVectorTruthInfo.o $(bin)HitVectorTruthInfo.o $(bin)TrackTruthInfo.o $(bin)TraverseHistory.o $(bin)CCProtonPi0_Study_ShowerEnergy.o
	$(lib_silent) $(ranlib) $(CCProtonPi0Liblib)
	$(lib_silent) cat /dev/null >$(CCProtonPi0Libstamp)

#------------------------------------------------------------------
#  Future improvement? to empty the object files after
#  storing in the library
#
##	  for f in $?; do \
##	    rm $${f}; touch $${f}; \
##	  done
#------------------------------------------------------------------

#
# We add one level of dependency upon the true shared library 
# (rather than simply upon the stamp file)
# this is for cases where the shared library has not been built
# while the stamp was created (error??) 
#

$(CCProtonPi0Liblibname).$(shlibsuffix) :: $(CCProtonPi0Liblib) requirements $(use_requirements) $(CCProtonPi0Libstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) if test "$(makecmd)"; then QUIET=; else QUIET=1; fi; QUIET=$${QUIET} bin=$(bin) $(make_shlib) "$(tags)" CCProtonPi0Lib $(CCProtonPi0Lib_shlibflags)

$(CCProtonPi0Libshstamp) :: $(CCProtonPi0Liblibname).$(shlibsuffix)
	$(lib_silent) if test -f $(CCProtonPi0Liblibname).$(shlibsuffix) ; then cat /dev/null >$(CCProtonPi0Libshstamp) ; fi

CCProtonPi0Libclean ::
	$(cleanup_echo) objects CCProtonPi0Lib
	$(cleanup_silent) /bin/rm -f $(bin)CCProtonPi0.o $(bin)CCProtonPi0_Truth.o $(bin)AngleScan.o $(bin)AngleScan_U.o $(bin)AngleScan_V.o $(bin)ClusterVectorInfo.o $(bin)HTBlob.o $(bin)HTtool.o $(bin)Pi0BlobTool.o $(bin)DigitVectorTruthInfo.o $(bin)HitVectorTruthInfo.o $(bin)TrackTruthInfo.o $(bin)TraverseHistory.o $(bin)CCProtonPi0_Study_ShowerEnergy.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)CCProtonPi0.o $(bin)CCProtonPi0_Truth.o $(bin)AngleScan.o $(bin)AngleScan_U.o $(bin)AngleScan_V.o $(bin)ClusterVectorInfo.o $(bin)HTBlob.o $(bin)HTtool.o $(bin)Pi0BlobTool.o $(bin)DigitVectorTruthInfo.o $(bin)HitVectorTruthInfo.o $(bin)TrackTruthInfo.o $(bin)TraverseHistory.o $(bin)CCProtonPi0_Study_ShowerEnergy.o) $(patsubst %.o,%.dep,$(bin)CCProtonPi0.o $(bin)CCProtonPi0_Truth.o $(bin)AngleScan.o $(bin)AngleScan_U.o $(bin)AngleScan_V.o $(bin)ClusterVectorInfo.o $(bin)HTBlob.o $(bin)HTtool.o $(bin)Pi0BlobTool.o $(bin)DigitVectorTruthInfo.o $(bin)HitVectorTruthInfo.o $(bin)TrackTruthInfo.o $(bin)TraverseHistory.o $(bin)CCProtonPi0_Study_ShowerEnergy.o) $(patsubst %.o,%.d.stamp,$(bin)CCProtonPi0.o $(bin)CCProtonPi0_Truth.o $(bin)AngleScan.o $(bin)AngleScan_U.o $(bin)AngleScan_V.o $(bin)ClusterVectorInfo.o $(bin)HTBlob.o $(bin)HTtool.o $(bin)Pi0BlobTool.o $(bin)DigitVectorTruthInfo.o $(bin)HitVectorTruthInfo.o $(bin)TrackTruthInfo.o $(bin)TraverseHistory.o $(bin)CCProtonPi0_Study_ShowerEnergy.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf CCProtonPi0Lib_deps CCProtonPi0Lib_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
CCProtonPi0Libinstallname = $(library_prefix)CCProtonPi0Lib$(library_suffix).$(shlibsuffix)

CCProtonPi0Lib :: CCProtonPi0Libinstall

install :: CCProtonPi0Libinstall

CCProtonPi0Libinstall :: $(install_dir)/$(CCProtonPi0Libinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(CCProtonPi0Libinstallname) :: $(bin)$(CCProtonPi0Libinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(CCProtonPi0Libinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##CCProtonPi0Libclean :: CCProtonPi0Libuninstall

uninstall :: CCProtonPi0Libuninstall

CCProtonPi0Libuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(CCProtonPi0Libinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of libary -----------------------
#-- start of dependency ------------------
ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)

#$(bin)CCProtonPi0Lib_dependencies.make :: dirs

ifndef QUICK
$(bin)CCProtonPi0Lib_dependencies.make : $(src)CCProtonPi0.cpp $(src)CCProtonPi0_Truth.cpp $(src)Pi0Reco/AngleScan.cpp $(src)Pi0Reco/AngleScan_U.cpp $(src)Pi0Reco/AngleScan_V.cpp $(src)Pi0Reco/ClusterVectorInfo.cpp $(src)Pi0Reco/HTBlob.cpp $(src)Pi0Reco/HTtool.cpp $(src)Pi0Reco/Pi0BlobTool.cpp $(src)TruthMatch/DigitVectorTruthInfo.cpp $(src)TruthMatch/HitVectorTruthInfo.cpp $(src)TruthMatch/TrackTruthInfo.cpp $(src)TruthMatch/TraverseHistory.cpp $(src)Studies/CCProtonPi0_Study_ShowerEnergy.cpp $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(echo) "(CCProtonPi0Lib.make) Rebuilding $@"; \
	  $(build_dependencies) CCProtonPi0Lib -all_sources -out=$@ $(src)CCProtonPi0.cpp $(src)CCProtonPi0_Truth.cpp $(src)Pi0Reco/AngleScan.cpp $(src)Pi0Reco/AngleScan_U.cpp $(src)Pi0Reco/AngleScan_V.cpp $(src)Pi0Reco/ClusterVectorInfo.cpp $(src)Pi0Reco/HTBlob.cpp $(src)Pi0Reco/HTtool.cpp $(src)Pi0Reco/Pi0BlobTool.cpp $(src)TruthMatch/DigitVectorTruthInfo.cpp $(src)TruthMatch/HitVectorTruthInfo.cpp $(src)TruthMatch/TrackTruthInfo.cpp $(src)TruthMatch/TraverseHistory.cpp $(src)Studies/CCProtonPi0_Study_ShowerEnergy.cpp
endif

#$(CCProtonPi0Lib_dependencies)

-include $(bin)CCProtonPi0Lib_dependencies.make

endif
endif
#-- end of dependency -------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)CCProtonPi0.d
endif
endif


$(bin)$(binobj)CCProtonPi0.o $(bin)$(binobj)CCProtonPi0.d : $(src)CCProtonPi0.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)CCProtonPi0.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(CCProtonPi0_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(CCProtonPi0_cppflags) $(CCProtonPi0_cpp_cppflags)  -MP -MMD -MT $(bin)$(binobj)CCProtonPi0.o -MT $(bin)$(binobj)CCProtonPi0.d -MF $(bin)$(binobj)CCProtonPi0.d -o $(bin)$(binobj)CCProtonPi0.o $(src)CCProtonPi0.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)CCProtonPi0_Truth.d
endif
endif


$(bin)$(binobj)CCProtonPi0_Truth.o $(bin)$(binobj)CCProtonPi0_Truth.d : $(src)CCProtonPi0_Truth.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)CCProtonPi0_Truth.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(CCProtonPi0_Truth_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(CCProtonPi0_Truth_cppflags) $(CCProtonPi0_Truth_cpp_cppflags)  -MP -MMD -MT $(bin)$(binobj)CCProtonPi0_Truth.o -MT $(bin)$(binobj)CCProtonPi0_Truth.d -MF $(bin)$(binobj)CCProtonPi0_Truth.d -o $(bin)$(binobj)CCProtonPi0_Truth.o $(src)CCProtonPi0_Truth.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)AngleScan.d
endif
endif


$(bin)$(binobj)AngleScan.o $(bin)$(binobj)AngleScan.d : $(src)Pi0Reco/AngleScan.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)Pi0Reco/AngleScan.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(AngleScan_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(AngleScan_cppflags) $(AngleScan_cpp_cppflags) -I../src/Pi0Reco -MP -MMD -MT $(bin)$(binobj)AngleScan.o -MT $(bin)$(binobj)AngleScan.d -MF $(bin)$(binobj)AngleScan.d -o $(bin)$(binobj)AngleScan.o $(src)Pi0Reco/AngleScan.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)AngleScan_U.d
endif
endif


$(bin)$(binobj)AngleScan_U.o $(bin)$(binobj)AngleScan_U.d : $(src)Pi0Reco/AngleScan_U.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)Pi0Reco/AngleScan_U.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(AngleScan_U_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(AngleScan_U_cppflags) $(AngleScan_U_cpp_cppflags) -I../src/Pi0Reco -MP -MMD -MT $(bin)$(binobj)AngleScan_U.o -MT $(bin)$(binobj)AngleScan_U.d -MF $(bin)$(binobj)AngleScan_U.d -o $(bin)$(binobj)AngleScan_U.o $(src)Pi0Reco/AngleScan_U.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)AngleScan_V.d
endif
endif


$(bin)$(binobj)AngleScan_V.o $(bin)$(binobj)AngleScan_V.d : $(src)Pi0Reco/AngleScan_V.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)Pi0Reco/AngleScan_V.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(AngleScan_V_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(AngleScan_V_cppflags) $(AngleScan_V_cpp_cppflags) -I../src/Pi0Reco -MP -MMD -MT $(bin)$(binobj)AngleScan_V.o -MT $(bin)$(binobj)AngleScan_V.d -MF $(bin)$(binobj)AngleScan_V.d -o $(bin)$(binobj)AngleScan_V.o $(src)Pi0Reco/AngleScan_V.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ClusterVectorInfo.d
endif
endif


$(bin)$(binobj)ClusterVectorInfo.o $(bin)$(binobj)ClusterVectorInfo.d : $(src)Pi0Reco/ClusterVectorInfo.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)Pi0Reco/ClusterVectorInfo.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(ClusterVectorInfo_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(ClusterVectorInfo_cppflags) $(ClusterVectorInfo_cpp_cppflags) -I../src/Pi0Reco -MP -MMD -MT $(bin)$(binobj)ClusterVectorInfo.o -MT $(bin)$(binobj)ClusterVectorInfo.d -MF $(bin)$(binobj)ClusterVectorInfo.d -o $(bin)$(binobj)ClusterVectorInfo.o $(src)Pi0Reco/ClusterVectorInfo.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HTBlob.d
endif
endif


$(bin)$(binobj)HTBlob.o $(bin)$(binobj)HTBlob.d : $(src)Pi0Reco/HTBlob.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)Pi0Reco/HTBlob.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(HTBlob_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(HTBlob_cppflags) $(HTBlob_cpp_cppflags) -I../src/Pi0Reco -MP -MMD -MT $(bin)$(binobj)HTBlob.o -MT $(bin)$(binobj)HTBlob.d -MF $(bin)$(binobj)HTBlob.d -o $(bin)$(binobj)HTBlob.o $(src)Pi0Reco/HTBlob.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HTtool.d
endif
endif


$(bin)$(binobj)HTtool.o $(bin)$(binobj)HTtool.d : $(src)Pi0Reco/HTtool.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)Pi0Reco/HTtool.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(HTtool_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(HTtool_cppflags) $(HTtool_cpp_cppflags) -I../src/Pi0Reco -MP -MMD -MT $(bin)$(binobj)HTtool.o -MT $(bin)$(binobj)HTtool.d -MF $(bin)$(binobj)HTtool.d -o $(bin)$(binobj)HTtool.o $(src)Pi0Reco/HTtool.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)Pi0BlobTool.d
endif
endif


$(bin)$(binobj)Pi0BlobTool.o $(bin)$(binobj)Pi0BlobTool.d : $(src)Pi0Reco/Pi0BlobTool.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)Pi0Reco/Pi0BlobTool.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(Pi0BlobTool_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(Pi0BlobTool_cppflags) $(Pi0BlobTool_cpp_cppflags) -I../src/Pi0Reco -MP -MMD -MT $(bin)$(binobj)Pi0BlobTool.o -MT $(bin)$(binobj)Pi0BlobTool.d -MF $(bin)$(binobj)Pi0BlobTool.d -o $(bin)$(binobj)Pi0BlobTool.o $(src)Pi0Reco/Pi0BlobTool.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)DigitVectorTruthInfo.d
endif
endif


$(bin)$(binobj)DigitVectorTruthInfo.o $(bin)$(binobj)DigitVectorTruthInfo.d : $(src)TruthMatch/DigitVectorTruthInfo.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)TruthMatch/DigitVectorTruthInfo.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(DigitVectorTruthInfo_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(DigitVectorTruthInfo_cppflags) $(DigitVectorTruthInfo_cpp_cppflags) -I../src/TruthMatch -MP -MMD -MT $(bin)$(binobj)DigitVectorTruthInfo.o -MT $(bin)$(binobj)DigitVectorTruthInfo.d -MF $(bin)$(binobj)DigitVectorTruthInfo.d -o $(bin)$(binobj)DigitVectorTruthInfo.o $(src)TruthMatch/DigitVectorTruthInfo.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)HitVectorTruthInfo.d
endif
endif


$(bin)$(binobj)HitVectorTruthInfo.o $(bin)$(binobj)HitVectorTruthInfo.d : $(src)TruthMatch/HitVectorTruthInfo.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)TruthMatch/HitVectorTruthInfo.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(HitVectorTruthInfo_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(HitVectorTruthInfo_cppflags) $(HitVectorTruthInfo_cpp_cppflags) -I../src/TruthMatch -MP -MMD -MT $(bin)$(binobj)HitVectorTruthInfo.o -MT $(bin)$(binobj)HitVectorTruthInfo.d -MF $(bin)$(binobj)HitVectorTruthInfo.d -o $(bin)$(binobj)HitVectorTruthInfo.o $(src)TruthMatch/HitVectorTruthInfo.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrackTruthInfo.d
endif
endif


$(bin)$(binobj)TrackTruthInfo.o $(bin)$(binobj)TrackTruthInfo.d : $(src)TruthMatch/TrackTruthInfo.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)TruthMatch/TrackTruthInfo.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(TrackTruthInfo_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(TrackTruthInfo_cppflags) $(TrackTruthInfo_cpp_cppflags) -I../src/TruthMatch -MP -MMD -MT $(bin)$(binobj)TrackTruthInfo.o -MT $(bin)$(binobj)TrackTruthInfo.d -MF $(bin)$(binobj)TrackTruthInfo.d -o $(bin)$(binobj)TrackTruthInfo.o $(src)TruthMatch/TrackTruthInfo.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TraverseHistory.d
endif
endif


$(bin)$(binobj)TraverseHistory.o $(bin)$(binobj)TraverseHistory.d : $(src)TruthMatch/TraverseHistory.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)TruthMatch/TraverseHistory.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(TraverseHistory_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(TraverseHistory_cppflags) $(TraverseHistory_cpp_cppflags) -I../src/TruthMatch -MP -MMD -MT $(bin)$(binobj)TraverseHistory.o -MT $(bin)$(binobj)TraverseHistory.d -MF $(bin)$(binobj)TraverseHistory.d -o $(bin)$(binobj)TraverseHistory.o $(src)TruthMatch/TraverseHistory.cpp


#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq ($(MAKECMDGOALS),CCProtonPi0Libclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)CCProtonPi0_Study_ShowerEnergy.d
endif
endif


$(bin)$(binobj)CCProtonPi0_Study_ShowerEnergy.o $(bin)$(binobj)CCProtonPi0_Study_ShowerEnergy.d : $(src)Studies/CCProtonPi0_Study_ShowerEnergy.cpp  $(use_requirements) $(cmt_final_setup_CCProtonPi0Lib)
	$(cpp_echo) $(src)Studies/CCProtonPi0_Study_ShowerEnergy.cpp
	@mkdir -p $(@D)
	$(cpp_silent) $(cppcomp) $(use_pp_cppflags) $(CCProtonPi0Lib_pp_cppflags) $(app_CCProtonPi0Lib_pp_cppflags) $(CCProtonPi0_Study_ShowerEnergy_pp_cppflags) $(use_cppflags) $(CCProtonPi0Lib_cppflags) $(lib_CCProtonPi0Lib_cppflags) $(app_CCProtonPi0Lib_cppflags) $(CCProtonPi0_Study_ShowerEnergy_cppflags) $(CCProtonPi0_Study_ShowerEnergy_cpp_cppflags) -I../src/Studies -MP -MMD -MT $(bin)$(binobj)CCProtonPi0_Study_ShowerEnergy.o -MT $(bin)$(binobj)CCProtonPi0_Study_ShowerEnergy.d -MF $(bin)$(binobj)CCProtonPi0_Study_ShowerEnergy.d -o $(bin)$(binobj)CCProtonPi0_Study_ShowerEnergy.o $(src)Studies/CCProtonPi0_Study_ShowerEnergy.cpp


#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: CCProtonPi0Libclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(CCProtonPi0Lib.make) $@: No rule for such target" >&2
#	@echo "#CMT> Warning: $@: No rule for such target" >&2; exit
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0Lib.make): $@: File no longer generated" >&2; exit 0; fi
else
.DEFAULT::
	$(echo) "(CCProtonPi0Lib.make) PEDANTIC: $@: No rule for such target" >&2
	if echo $@ | grep '$(package)setup\.make$$' >/dev/null; then\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0Lib.make): $@: File no longer generated" >&2; exit 0;\
	 elif test $@ = "$(cmt_final_setup)" -o\
	 $@ = "$(cmt_final_setup_CCProtonPi0Lib)" ; then\
	 found=n; for s in 1 2 3 4 5; do\
	 sleep $$s; test ! -f $@ || { found=y; break; }\
	 done; if test $$found = n; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0Lib.make) PEDANTIC: $@: Seems to be missing. Ignore it for now" >&2; exit 0 ; fi;\
	 elif test `expr $@ : '.*/'` -ne 0 ; then\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0Lib.make) PEDANTIC: $@: Seems to be a missing file. Please check" >&2; exit 2 ; \
	 else\
	 test -z "$(cmtmsg)" ||\
	 echo "$(CMTMSGPREFIX)" "(CCProtonPi0Lib.make) PEDANTIC: $@: Seems to be a fake target due to some pattern. Just ignore it" >&2 ; exit 0; fi
endif

CCProtonPi0Libclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library CCProtonPi0Lib
	-$(cleanup_silent) cd $(bin); /bin/rm -f $(library_prefix)CCProtonPi0Lib$(library_suffix).a $(library_prefix)CCProtonPi0Lib$(library_suffix).s? CCProtonPi0Lib.stamp CCProtonPi0Lib.shstamp
#-- end of cleanup_library ---------------

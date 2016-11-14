#Sat Nov 12 11:08:04 2016"""Automatically generated. DO NOT EDIT please"""
from GaudiKernel.Proxy.Configurable import *

class HTtool( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'ErrorsPrint' : True, # bool
    'PropertiesPrint' : False, # bool
    'StatPrint' : True, # bool
    'TypePrint' : True, # bool
    'Context' : '', # str
    'RootInTES' : '', # str
    'RootOnTES' : '', # str
    'GlobalTimeOffset' : 0.00000000, # float
    'StatTableHeader' : ' |    Counter                                      |     #     |    sum     | mean/eff^* | rms/err^*  |     min     |     max     |', # str
    'RegularRowFormat' : ' | %|-48.48s|%|50t||%|10d| |%|11.7g| |%|#11.5g| |%|#11.5g| |%|#12.5g| |%|#12.5g| |', # str
    'EfficiencyRowFormat' : ' |*%|-48.48s|%|50t||%|10d| |%|11.5g| |(%|#9.6g| +- %|-#9.6g|)%%|   -------   |   -------   |', # str
    'UseEfficiencyRowFormat' : True, # bool
    'CounterList' : [ '.*' ], # list
    'StatEntityList' : [  ], # list
    'ContextService' : 'AlgContextSvc', # str
    'HistoProduce' : True, # bool
    'HistoPrint' : False, # bool
    'HistoCheckForNaN' : True, # bool
    'HistoSplitDir' : False, # bool
    'HistoOffSet' : 0, # int
    'HistoTopDir' : '', # str
    'HistoDir' : 'AlgTool', # str
    'FullDetail' : False, # bool
    'MonitorHistograms' : True, # bool
    'FormatFor1DHistoTable' : '| %2$-45.45s | %3$=7d |%8$11.5g | %10$-11.5g|%12$11.5g |%14$11.5g |', # str
    'ShortFormatFor1DHistoTable' : ' | %1$-25.25s %2%', # str
    'HeaderFor1DHistoTable' : '|   Title                                       |    #    |     Mean   |    RMS     |  Skewness  |  Kurtosis  |', # str
    'UseSequencialNumericAutoIDs' : False, # bool
    'AutoStringIDPurgeMap' : { '/' : '=SLASH=' }, # list
    'HistogramCreationLevel' : 3, # int
    'ProngLocation' : 'Rec/Prongs', # str
    'MinervaTrackLocation' : 'Rec/Tracks', # str
    'MinosTrackLocation' : 'Rec/Minos/Tracks', # str
    'MinosHitLocation' : 'Rec/Minos/Hits', # str
    'VetoDigitLocation' : 'Cal/Veto/Digits', # str
    'TimeSliceLocation' : 'Mgr/TimeSlices', # str
    'TimeSliverLocation' : 'Mgr/TimeSlivers', # str
    'PhysicsEventLocation' : 'Mgr/PhysicsEvents', # str
    'PMTEffectsTableLocation' : 'Gate/PMTEffectsTables', # str
    'DataQualityLocation' : 'Gate/DataQuality', # str
    'GenMinInteractionLocation' : 'Gen/Interactions', # str
    'GenMinEventRecordLocation' : 'Gen/EventRecords', # str
    'PMTEffectsTableMethodSignature' : 'XTalkScoreGrader', # str
  }
  _propertyDocDct = { 
    'StatTableHeader' : """ The header row for the output Stat-table """,
    'ErrorsPrint' : """ Print the statistics of errors/warnings/exceptions """,
    'HeaderFor1DHistoTable' : """ The table header for printout of 1D histograms  """,
    'StatPrint' : """ Print the table of counters """,
    'HistoDir' : """ Histogram Directory """,
    'TypePrint' : """ Add the actal C++ component type into the messages """,
    'HistoTopDir' : """ Top level histogram directory (take care that it ends with '/') """,
    'AutoStringIDPurgeMap' : """ Map of strings to search and replace when using the title as the basis of automatically generated literal IDs """,
    'CounterList' : """ RegEx list, of simple integer counters for CounterSummary. """,
    'ShortFormatFor1DHistoTable' : """ Format string for printout of 1D histograms """,
    'EfficiencyRowFormat' : """ The format for the regular row in the output Stat-table """,
    'PropertiesPrint' : """ Print the properties of the component  """,
    'HistoSplitDir' : """ Split long directory names into short pieces (suitable for HBOOK) """,
    'ContextService' : """ The name of Algorithm Context Service """,
    'HistoProduce' : """ Swith on/off the production of histograms  """,
    'UseEfficiencyRowFormat' : """ Use the special format for printout of efficiency counters """,
    'HistoPrint' : """ Switch on/off the printout of histograms at finalization """,
    'RegularRowFormat' : """ The format for the regular row in the output Stat-table """,
    'FormatFor1DHistoTable' : """ Format string for printout of 1D histograms """,
    'HistoOffSet' : """ OffSet for automatically assigned histogram numerical identifiers  """,
    'UseSequencialNumericAutoIDs' : """ Flag to allow users to switch back to the old style of creating numerical automatic IDs """,
    'StatEntityList' : """ RegEx list, of StatEntity counters for CounterSummary. """,
    'HistoCheckForNaN' : """ Swicth on/off the checks for NaN and Infinity for histogram fill """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(HTtool, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'CCProtonPi0Lib'
  def getType( self ):
      return 'HTtool'
  pass # class HTtool

class HTBlob( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'ErrorsPrint' : True, # bool
    'PropertiesPrint' : False, # bool
    'StatPrint' : True, # bool
    'TypePrint' : True, # bool
    'Context' : '', # str
    'RootInTES' : '', # str
    'RootOnTES' : '', # str
    'GlobalTimeOffset' : 0.00000000, # float
    'StatTableHeader' : ' |    Counter                                      |     #     |    sum     | mean/eff^* | rms/err^*  |     min     |     max     |', # str
    'RegularRowFormat' : ' | %|-48.48s|%|50t||%|10d| |%|11.7g| |%|#11.5g| |%|#11.5g| |%|#12.5g| |%|#12.5g| |', # str
    'EfficiencyRowFormat' : ' |*%|-48.48s|%|50t||%|10d| |%|11.5g| |(%|#9.6g| +- %|-#9.6g|)%%|   -------   |   -------   |', # str
    'UseEfficiencyRowFormat' : True, # bool
    'CounterList' : [ '.*' ], # list
    'StatEntityList' : [  ], # list
    'ContextService' : 'AlgContextSvc', # str
    'HistoProduce' : True, # bool
    'HistoPrint' : False, # bool
    'HistoCheckForNaN' : True, # bool
    'HistoSplitDir' : False, # bool
    'HistoOffSet' : 0, # int
    'HistoTopDir' : '', # str
    'HistoDir' : 'AlgTool', # str
    'FullDetail' : False, # bool
    'MonitorHistograms' : True, # bool
    'FormatFor1DHistoTable' : '| %2$-45.45s | %3$=7d |%8$11.5g | %10$-11.5g|%12$11.5g |%14$11.5g |', # str
    'ShortFormatFor1DHistoTable' : ' | %1$-25.25s %2%', # str
    'HeaderFor1DHistoTable' : '|   Title                                       |    #    |     Mean   |    RMS     |  Skewness  |  Kurtosis  |', # str
    'UseSequencialNumericAutoIDs' : False, # bool
    'AutoStringIDPurgeMap' : { '/' : '=SLASH=' }, # list
    'HistogramCreationLevel' : 3, # int
    'ProngLocation' : 'Rec/Prongs', # str
    'MinervaTrackLocation' : 'Rec/Tracks', # str
    'MinosTrackLocation' : 'Rec/Minos/Tracks', # str
    'MinosHitLocation' : 'Rec/Minos/Hits', # str
    'VetoDigitLocation' : 'Cal/Veto/Digits', # str
    'TimeSliceLocation' : 'Mgr/TimeSlices', # str
    'TimeSliverLocation' : 'Mgr/TimeSlivers', # str
    'PhysicsEventLocation' : 'Mgr/PhysicsEvents', # str
    'PMTEffectsTableLocation' : 'Gate/PMTEffectsTables', # str
    'DataQualityLocation' : 'Gate/DataQuality', # str
    'GenMinInteractionLocation' : 'Gen/Interactions', # str
    'GenMinEventRecordLocation' : 'Gen/EventRecords', # str
    'PMTEffectsTableMethodSignature' : 'XTalkScoreGrader', # str
    'NumberPlanesdEdX' : 4, # int
    'MinDistanceStripPhoton' : 75.00000000, # float
    'MaxDisntaceModulePhoton' : 50.00000000, # float
  }
  _propertyDocDct = { 
    'StatTableHeader' : """ The header row for the output Stat-table """,
    'ErrorsPrint' : """ Print the statistics of errors/warnings/exceptions """,
    'HeaderFor1DHistoTable' : """ The table header for printout of 1D histograms  """,
    'StatPrint' : """ Print the table of counters """,
    'HistoDir' : """ Histogram Directory """,
    'TypePrint' : """ Add the actal C++ component type into the messages """,
    'HistoTopDir' : """ Top level histogram directory (take care that it ends with '/') """,
    'AutoStringIDPurgeMap' : """ Map of strings to search and replace when using the title as the basis of automatically generated literal IDs """,
    'CounterList' : """ RegEx list, of simple integer counters for CounterSummary. """,
    'ShortFormatFor1DHistoTable' : """ Format string for printout of 1D histograms """,
    'EfficiencyRowFormat' : """ The format for the regular row in the output Stat-table """,
    'PropertiesPrint' : """ Print the properties of the component  """,
    'HistoSplitDir' : """ Split long directory names into short pieces (suitable for HBOOK) """,
    'ContextService' : """ The name of Algorithm Context Service """,
    'HistoProduce' : """ Swith on/off the production of histograms  """,
    'UseEfficiencyRowFormat' : """ Use the special format for printout of efficiency counters """,
    'HistoPrint' : """ Switch on/off the printout of histograms at finalization """,
    'RegularRowFormat' : """ The format for the regular row in the output Stat-table """,
    'FormatFor1DHistoTable' : """ Format string for printout of 1D histograms """,
    'HistoOffSet' : """ OffSet for automatically assigned histogram numerical identifiers  """,
    'UseSequencialNumericAutoIDs' : """ Flag to allow users to switch back to the old style of creating numerical automatic IDs """,
    'StatEntityList' : """ RegEx list, of StatEntity counters for CounterSummary. """,
    'HistoCheckForNaN' : """ Swicth on/off the checks for NaN and Infinity for histogram fill """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(HTBlob, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'CCProtonPi0Lib'
  def getType( self ):
      return 'HTBlob'
  pass # class HTBlob

class CCProtonPi0( ConfigurableAlgTool ) :
  __slots__ = { 
    'MonitorService' : 'MonitorSvc', # str
    'OutputLevel' : 7, # int
    'AuditTools' : False, # bool
    'AuditInitialize' : False, # bool
    'AuditStart' : False, # bool
    'AuditStop' : False, # bool
    'AuditFinalize' : False, # bool
    'ErrorsPrint' : True, # bool
    'PropertiesPrint' : False, # bool
    'StatPrint' : True, # bool
    'TypePrint' : True, # bool
    'Context' : '', # str
    'RootInTES' : '', # str
    'RootOnTES' : '', # str
    'GlobalTimeOffset' : 0.00000000, # float
    'StatTableHeader' : ' |    Counter                                      |     #     |    sum     | mean/eff^* | rms/err^*  |     min     |     max     |', # str
    'RegularRowFormat' : ' | %|-48.48s|%|50t||%|10d| |%|11.7g| |%|#11.5g| |%|#11.5g| |%|#12.5g| |%|#12.5g| |', # str
    'EfficiencyRowFormat' : ' |*%|-48.48s|%|50t||%|10d| |%|11.5g| |(%|#9.6g| +- %|-#9.6g|)%%|   -------   |   -------   |', # str
    'UseEfficiencyRowFormat' : True, # bool
    'CounterList' : [ '.*' ], # list
    'StatEntityList' : [  ], # list
    'ContextService' : 'AlgContextSvc', # str
    'HistoProduce' : True, # bool
    'HistoPrint' : False, # bool
    'HistoCheckForNaN' : True, # bool
    'HistoSplitDir' : False, # bool
    'HistoOffSet' : 0, # int
    'HistoTopDir' : '', # str
    'HistoDir' : 'AlgTool', # str
    'FullDetail' : False, # bool
    'MonitorHistograms' : True, # bool
    'FormatFor1DHistoTable' : '| %2$-45.45s | %3$=7d |%8$11.5g | %10$-11.5g|%12$11.5g |%14$11.5g |', # str
    'ShortFormatFor1DHistoTable' : ' | %1$-25.25s %2%', # str
    'HeaderFor1DHistoTable' : '|   Title                                       |    #    |     Mean   |    RMS     |  Skewness  |  Kurtosis  |', # str
    'UseSequencialNumericAutoIDs' : False, # bool
    'AutoStringIDPurgeMap' : { '/' : '=SLASH=' }, # list
    'HistogramCreationLevel' : 3, # int
    'ProngLocation' : 'Rec/Prongs', # str
    'MinervaTrackLocation' : 'Rec/Tracks', # str
    'MinosTrackLocation' : 'Rec/Minos/Tracks', # str
    'MinosHitLocation' : 'Rec/Minos/Hits', # str
    'VetoDigitLocation' : 'Cal/Veto/Digits', # str
    'TimeSliceLocation' : 'Mgr/TimeSlices', # str
    'TimeSliverLocation' : 'Mgr/TimeSlivers', # str
    'PhysicsEventLocation' : 'Mgr/PhysicsEvents', # str
    'PMTEffectsTableLocation' : 'Gate/PMTEffectsTables', # str
    'DataQualityLocation' : 'Gate/DataQuality', # str
    'GenMinInteractionLocation' : 'Gen/Interactions', # str
    'GenMinEventRecordLocation' : 'Gen/EventRecords', # str
    'PMTEffectsTableMethodSignature' : 'XTalkScoreGrader', # str
    'DispersedCalEnergyVariable' : 'nu_energy_dispersed_cal', # str
    'SignalApothem' : 850.00000000, # float
    'SignalUpstreamZ' : 5990.00000000, # float
    'SignalDownstreamZ' : 8340.00000000, # float
    'AnalyzeApothem' : 900.00000000, # float
    'AnalyzeUpstreamZ' : 4000.00000000, # float
    'AnalyzeDownstreamZ' : 9990.00000000, # float
    'BrokenTrackAngle' : 2.96705973, # float
    'CollinearTrackAngle' : 0.08726646, # float
    'MidpointDifferenceCut' : 40.00000000, # float
    'ProngMinMCFraction' : 0.50000000, # float
    'WriteFSParticleTable' : True, # bool
    'KeepAfter_VertexCuts' : True, # bool
    'KeepAfter_MuonCuts' : True, # bool
    'KeepAfter_MichelCuts' : True, # bool
    'KeepAfter_ProtonCuts' : True, # bool
    'KeepAfter_PionCuts' : True, # bool
    'KeepAfter_Pi0Cuts' : True, # bool
    'RemoveEvents_WithMichel' : True, # bool
    'DoPlausibilityCuts' : True, # bool
    'DoTruthMatch' : True, # bool
    'BeamAngleBias' : 0.00600000, # float
    'Signal_Max_MuonAngle' : 25.00000000, # float
    'StudyMichelElectron' : True, # bool
    'StudyShowerEnergy' : False, # bool
    'StudyShowerRecovery' : False, # bool
    'StudyUnusedEnergy' : False, # bool
    'ParticleToolName' : 'dEdXTool', # str
    'ParticleToolAlias' : 'dEdXTool', # str
    'MuonProngColor' : 2263842, # int
    'ProtonProngColor' : 255, # int
    'TrackEndProngColor' : 16753920, # int
    'UnattachedProngColor' : 16776960, # int
    'BlobRejectedColor' : 16711680, # int
    'ClusterUnusedColor' : 16711935, # int
    'ClusterUsedColor' : 32896, # int
    'Gamma1ProngColor' : 65280, # int
    'Gamma2ProngColor' : 49151, # int
    'GammaOtherProngColor' : 16753920, # int
    'PrimaryVertexProngColor' : 0, # int
    'SecondaryVertexProngColor' : 0, # int
    'VertexSphereColor' : 16416882, # int
    'SkipLowEnergyClusterVtxEnergy' : True, # bool
    'ThresholdVertexEnergy' : True, # bool
    'VertexBlobRadius' : 90.00000000, # float
    'RejectedClustersTime' : 25.00000000, # float
    'ApplyAttenuationCorrection' : True, # bool
    'UVMatchTolerance' : 10.00000000, # float
    'UVMatchMoreTolerance' : 100.00000000, # float
    'AllowUVMatchWithMoreTolerance' : True, # bool
    'TrytoRecover_1Shower' : True, # bool
    'TrytoRecover_3Shower' : True, # bool
    'TrytoRecover_4Shower' : True, # bool
    'RecoverShower_InvMass' : False, # bool
    'RecoverShower_Direction' : True, # bool
    'RecoverSingleShower_SmallAngle' : True, # bool
    'RecoverSingleShower_SearchView' : True, # bool
    'HypothesisMethods' : [ 'CCProtonPi0' ], # list
  }
  _propertyDocDct = { 
    'StatTableHeader' : """ The header row for the output Stat-table """,
    'ErrorsPrint' : """ Print the statistics of errors/warnings/exceptions """,
    'HeaderFor1DHistoTable' : """ The table header for printout of 1D histograms  """,
    'StatPrint' : """ Print the table of counters """,
    'HistoDir' : """ Histogram Directory """,
    'TypePrint' : """ Add the actal C++ component type into the messages """,
    'HistoTopDir' : """ Top level histogram directory (take care that it ends with '/') """,
    'AutoStringIDPurgeMap' : """ Map of strings to search and replace when using the title as the basis of automatically generated literal IDs """,
    'CounterList' : """ RegEx list, of simple integer counters for CounterSummary. """,
    'ShortFormatFor1DHistoTable' : """ Format string for printout of 1D histograms """,
    'EfficiencyRowFormat' : """ The format for the regular row in the output Stat-table """,
    'PropertiesPrint' : """ Print the properties of the component  """,
    'HistoSplitDir' : """ Split long directory names into short pieces (suitable for HBOOK) """,
    'ContextService' : """ The name of Algorithm Context Service """,
    'HistoProduce' : """ Swith on/off the production of histograms  """,
    'UseEfficiencyRowFormat' : """ Use the special format for printout of efficiency counters """,
    'HistoPrint' : """ Switch on/off the printout of histograms at finalization """,
    'RegularRowFormat' : """ The format for the regular row in the output Stat-table """,
    'FormatFor1DHistoTable' : """ Format string for printout of 1D histograms """,
    'HistoOffSet' : """ OffSet for automatically assigned histogram numerical identifiers  """,
    'UseSequencialNumericAutoIDs' : """ Flag to allow users to switch back to the old style of creating numerical automatic IDs """,
    'StatEntityList' : """ RegEx list, of StatEntity counters for CounterSummary. """,
    'HistoCheckForNaN' : """ Swicth on/off the checks for NaN and Infinity for histogram fill """,
  }
  def __init__(self, name = Configurable.DefaultName, **kwargs):
      super(CCProtonPi0, self).__init__(name)
      for n,v in kwargs.items():
         setattr(self, n, v)
  def getDlls( self ):
      return 'CCProtonPi0Lib'
  def getType( self ):
      return 'CCProtonPi0'
  pass # class CCProtonPi0

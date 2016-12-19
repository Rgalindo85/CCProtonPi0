##  -*- python -*-  
# db file automatically generated by genconf on: Fri Dec 16 10:22:28 2016## insulates outside world against anything bad that could happen
## also prevents global scope pollution
def _fillCfgDb():
    from GaudiKernel.Proxy.ConfigurableDb import CfgDb

    # get a handle on the repository of Configurables
    cfgDb = CfgDb()

    # populate the repository with informations on Configurables 

    cfgDb.add( configurable = 'HTtool',
               package = 'CCProtonPi0',
               module  = 'CCProtonPi0.CCProtonPi0LibConf',
               lib     = 'CCProtonPi0Lib' )
    cfgDb.add( configurable = 'HTBlob',
               package = 'CCProtonPi0',
               module  = 'CCProtonPi0.CCProtonPi0LibConf',
               lib     = 'CCProtonPi0Lib' )
    cfgDb.add( configurable = 'CCProtonPi0',
               package = 'CCProtonPi0',
               module  = 'CCProtonPi0.CCProtonPi0LibConf',
               lib     = 'CCProtonPi0Lib' )
    return #_fillCfgDb
# fill cfgDb at module import...
try:
    _fillCfgDb()
    #house cleaning...
    del _fillCfgDb
except Exception,err:
    print "Py:ConfigurableDb   ERROR Problem with [%s] content!" % __name__
    print "Py:ConfigurableDb   ERROR",err
    print "Py:ConfigurableDb   ERROR   ==> culprit is package [CCProtonPi0] !"

default['solr6']['solrcore-properties']['enable.alfresco.tracking'] = true
default['solr6']['solrcore-properties']['alfresco.version'] = node['alfresco']['version']
default['solr6']['solrcore-properties']['alfresco.host'] = 'localhost'
# if node['alfresco']['components'].include? 'haproxy'
#  default['solr6']['solrcore-properties']['alfresco.port'] = node['alfresco']['internal_port']
# else
#  default['solr6']['solrcore-properties']['alfresco.port'] = node['haproxy']['backends']['roles']['alfresco']['port']
# end

default['solr6']['solrcore-properties']['alfresco.port'] = if node['alfresco']['components'].include? 'haproxy'
                                                             node['alfresco']['internal_port']
                                                           else
                                                             node['haproxy']['backends']['roles']['alfresco']['port']
                                                           end

default['solr6']['solrcore-properties']['alfresco.port.ssl'] = node['alfresco']['public_portssl']
default['solr6']['solrcore-properties']['alfresco.baseUrl'] = '/alfresco'
default['solr6']['solrcore-properties']['alfresco.cron'] = '0/15 * * * * ? *'
default['solr6']['solrcore-properties']['alfresco.lag'] = 1000
default['solr6']['solrcore-properties']['alfresco.hole.retention'] = 3600000
default['solr6']['solrcore-properties']['alfresco.hole.check.after'] = 300000
default['solr6']['solrcore-properties']['alfresco.batch.count'] = 1000
default['solr6']['solrcore-properties']['alfresco.recordUnindexedNodes'] = false
default['solr6']['solrcore-properties']['alfresco.secureComms'] = 'none'
default['solr6']['solrcore-properties']['alfresco.encryption.ssl.keystore.type'] = 'JCEKS'
default['solr6']['solrcore-properties']['alfresco.encryption.ssl.keystore.provider'] = nil
default['solr6']['solrcore-properties']['alfresco.encryption.ssl.keystore.location'] = 'ssl.repo.client.keystore'
default['solr6']['solrcore-properties']['alfresco.encryption.ssl.keystore.passwordFileLocation'] = 'ssl-keystore-passwords.properties'
default['solr6']['solrcore-properties']['alfresco.encryption.ssl.truststore.type'] = 'JCEKS'
default['solr6']['solrcore-properties']['alfresco.encryption.ssl.truststore.provider'] = nil
default['solr6']['solrcore-properties']['alfresco.encryption.ssl.truststore.location'] = 'ssl.repo.client.truststore'
default['solr6']['solrcore-properties']['alfresco.encryption.ssl.truststore.passwordFileLocation'] = 'ssl-truststore-passwords.properties'
default['solr6']['solrcore-properties']['alfresco.corePoolSize'] = 8
default['solr6']['solrcore-properties']['alfresco.maximumPoolSize'] = -1
default['solr6']['solrcore-properties']['alfresco.keepAliveTime'] = 120
default['solr6']['solrcore-properties']['alfresco.threadPriority'] = 5
default['solr6']['solrcore-properties']['alfresco.threadDaemon'] = true
default['solr6']['solrcore-properties']['alfresco.workQueueSize'] = -1
default['solr6']['solrcore-properties']['alfresco.commitInterval'] = 60000
default['solr6']['solrcore-properties']['alfresco.newSearcherInterval'] = 120000
default['solr6']['solrcore-properties']['alfresco.maxTotalConnections'] = 200
default['solr6']['solrcore-properties']['alfresco.maxHostConnections'] = 200
default['solr6']['solrcore-properties']['alfresco.socketTimeout'] = 360000
default['solr6']['solrcore-properties']['solr.filterCache.size'] = 256
default['solr6']['solrcore-properties']['solr.filterCache.initialSize'] = 128
default['solr6']['solrcore-properties']['solr.queryResultCache.size'] = 1024
default['solr6']['solrcore-properties']['solr.queryResultCache.initialSize'] = 1024
default['solr6']['solrcore-properties']['solr.documentCache.size'] = 1024
default['solr6']['solrcore-properties']['solr.documentCache.initialSize'] = 1024
default['solr6']['solrcore-properties']['solr.queryResultMaxDocsCached'] = 2048
default['solr6']['solrcore-properties']['solr.authorityCache.size'] = 128
default['solr6']['solrcore-properties']['solr.authorityCache.initialSize'] = 64
default['solr6']['solrcore-properties']['solr.pathCache.size'] = 256
default['solr6']['solrcore-properties']['solr.pathCache.initialSize'] = 128
default['solr6']['solrcore-properties']['solr.ownerCache.size'] = 128
default['solr6']['solrcore-properties']['solr.ownerCache.initialSize'] = 64
default['solr6']['solrcore-properties']['solr.readerCache.size'] = 128
default['solr6']['solrcore-properties']['solr.readerCache.initialSize'] = 64
default['solr6']['solrcore-properties']['solr.deniedCache.size'] = 128
default['solr6']['solrcore-properties']['solr.deniedCache.initialSize'] = 64
default['solr6']['solrcore-properties']['solr.maxBooleanClauses'] = 10000
default['solr6']['solrcore-properties']['alfresco.transactionDocsBatchSize'] = 500
default['solr6']['solrcore-properties']['alfresco.nodeBatchSize'] = 100
default['solr6']['solrcore-properties']['alfresco.changeSetAclsBatchSize'] = 500
default['solr6']['solrcore-properties']['alfresco.aclBatchSize'] = 100
default['solr6']['solrcore-properties']['alfresco.contentReadBatchSize'] = 100
default['solr6']['solrcore-properties']['alfresco.contentUpdateBatchSize'] = 1000
default['solr6']['solrcore-properties']['solr.filterCache.autowarmCount'] = 32
default['solr6']['solrcore-properties']['solr.authorityCache.autowarmCount'] = 4
default['solr6']['solrcore-properties']['solr.pathCache.autowarmCount'] = 32
default['solr6']['solrcore-properties']['solr.deniedCache.autowarmCount'] = 0
default['solr6']['solrcore-properties']['solr.readerCache.autowarmCount'] = 0
default['solr6']['solrcore-properties']['solr.ownerCache.autowarmCount'] = 0
default['solr6']['solrcore-properties']['solr.queryResultCache.autowarmCount'] = 4
default['solr6']['solrcore-properties']['solr.documentCache.autowarmCount'] = 512
default['solr6']['solrcore-properties']['solr.queryResultWindowSize'] = 512
default['solr6']['solrcore-properties']['alfresco.doPermissionChecks'] = true
default['solr6']['solrcore-properties']['alfresco.postfilter'] = true
default['solr6']['solrcore-properties']['alfresco.metadata.skipDescendantDocsForSpecificTypes'] = false
default['solr6']['solrcore-properties']['alfresco.metadata.ignore.datatype.0'] = 'cm:person'
default['solr6']['solrcore-properties']['alfresco.metadata.ignore.datatype.1'] = 'app:configurations'
default['solr6']['solrcore-properties']['alfresco.metadata.skipDescendantDocsForSpecificAspects'] = false
default['solr6']['solrcore-properties']['alfresco.topTermSpanRewriteLimit'] = 1000
default['solr6']['solrcore-properties']['solr.suggester.enabled'] = true
default['solr6']['solrcore-properties']['solr.suggester.minSecsBetweenBuilds'] = 3600
default['solr6']['solrcore-properties']['alfresco.contentStreamLimit'] = 10000000
default['solr6']['solrcore-properties']['shard.method'] = 'DB_ID'

dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "vandalart"
    password = "vandalartpass"
    url = "jdbc:mysql://ec2-50-19-213-178.compute-1.amazonaws.com/vandalart?autoReconnect=true"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            pooling = true
            properties {
                   minEvictableIdleTimeMillis=1800000
                   timeBetweenEvictionRunsMillis=1800000
                   numTestsPerEvictionRun=3
                   testOnBorrow=true
                   testWhileIdle=true
                   testOnReturn=true
                   validationQuery="SELECT 1"
            }
        }
    }
}
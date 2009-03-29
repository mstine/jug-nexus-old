hibernate {
  cache.use_second_level_cache = true
  cache.use_query_cache = true
  cache.provider_class = 'com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
  development {
    dataSource {
      pooled = true
      username = "root"
      password = ""
      dbCreate = "create-drop" // one of 'create', 'create-drop','update'
      driverClassName = "com.mysql.jdbc.Driver"
      url = "jdbc:mysql://localhost/jugnexusdev"
    }
  }
  test {
    dataSource {
      pooled = true
      username = "root"
      password = ""
      dbCreate = "update"
      driverClassName = "com.mysql.jdbc.Driver"
      url = "jdbc:mysql://localhost/jugnexustest"
    }
  }
  production {
    dataSource {
      pooled = false
      dbCreate = "update"
      jndiName = "java:comp/env/jdbc/JugNexusProdDB"
    }
  }
}
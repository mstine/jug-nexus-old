dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
            username = "root"
            password = ""
			dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost/jugnexusdev"
		}
	}
	test {
		dataSource {
            username = "root"
            password = ""
			dbCreate = "update"
			url = "jdbc:mysql://localhost/jugnexustest"
		}
	}
	production {
		dataSource {
			username = "root"
            password = ""
			dbCreate = "update"
			url = "jdbc:mysql://localhost/jugnexusprod"
		}
	}
}
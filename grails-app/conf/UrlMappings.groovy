class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"home")
		"/map"(controller:"home", action:"map")
		"/$id"(controller:"home", action:"show")
		"500"(view:'/error')
	}
}

class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"home")
		"/map"(controller:"home", action:"map")
		"500"(view:'/error')
	}
}

package org.springframework.samples.petclinic.web

class UrlMappings {
		static Closure mappings = {
				
				"/$controller/$action?/$id?"{
						constraints {
								// apply constraints here
						}
				}
				
				"/"(view:"/index")
				"/try-luck"(controller: 'fish', action:'testLuck')
				"/shots"(view : 'shot-list')				
				"/vets-old"(uri : '/vets')
		}
}
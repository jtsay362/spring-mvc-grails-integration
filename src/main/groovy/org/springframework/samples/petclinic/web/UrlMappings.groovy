package org.springframework.samples.petclinic.web

class UrlMappings {
		static Closure mappings = {
				
				"/"(view:"/index")
				"/try-luck"(controller: 'fish', action:'testLuck')
				"/move"(controller : 'fish')
				"/shots"(view : 'shot-list')				
				"/vets-old"(uri : '/vets')
				"/food" {
						controller = 'pet'
						action = 'eat'
						taste = 'yummy'	
				}				
				
				"/$controller/$action?/$id?"{
					constraints {
						id(matches:/\d+/)
					}
				}		
		}
}
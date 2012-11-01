package org.springframework.samples.petclinic.web

import groovy.lang.Closure

class UrlMappings {
		static Closure mappings = {
				
				"/$controller/$action?/$id?"{
						constraints {
								// apply constraints here
						}
				}
				
				"/"(view:"/index")
				"500"(view:'/error')
				"/nappy"(controller: 'nappy', view:'/asdg')
				"/directview"(view : 'test/directtoview')
				
				"/uri"(uri : '/test/content')
		}
}
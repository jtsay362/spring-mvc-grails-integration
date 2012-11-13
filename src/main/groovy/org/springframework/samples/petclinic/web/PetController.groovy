package org.springframework.samples.petclinic.web

import org.springframework.samples.petclinic.*;

import org.springframework.ui.Model;

class PetController {

	def Clinic clinic
	def Pet mascot
	
	def index() {
		model["pets"] = clinic.pets
		render(view : "/grails/pet/list", model : model)
	}
	
	def types() {		
		render(view : "/grails/pet/types", model : [petTypes : clinic.petTypes])
	}	
	
	def showMascot() {
		model["mascot"] = mascot
		return model
	}
	
	def speak() {
		response << "${mascot.name} says '${params.sound}'!"
	}
	
	def hotelStatus() {
		def hotel = new PetHotel()
		hotel.enter(mascot)
		
		response << "There are ${hotel.numOccupants()} occupant(s) in the pet hotel."
		
		return null		
	}
	
	def eat() {
		response << "${mascot.name} says the food is ${params.taste}!"  			
	}

	def resource() {
		render(text: "<pet name=\"${mascot.name}\"></pet>", contentType: "text/xml", encoding: "UTF-8")				
	}	
	
	def renderStatus()
	{
		render(status: 503, text: 'You are wrong')
	}
	
	def lonelyPlace() {
		redirect(uri : "grails/pet/hotel-status")
	}

	def grave() {
		response << "RIP"
	}
	
	def die() {
		redirect(uri : "grails/pet/grave", permanent : true)
	}
}

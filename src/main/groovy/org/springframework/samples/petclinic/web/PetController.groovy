package org.springframework.samples.petclinic.web

import org.springframework.samples.petclinic.*;

import org.springframework.ui.Model;

class PetController {

	def Clinic clinic
	def Pet mascot
	
  //def defaultAction = "index2"

  def index2() {
      response << "Pet"
    
  }
  
  def index3() {
      response << "Lily"
    
  } 
	
	def index() {
		model["pets"] = clinic.pets
		render(view : "/grails/pet/list", model : model)
	}
	
	def types() {		
		render(view : "/grails/pet/types", model : [petTypes : clinic.petTypes])
	}	
	
	def mascot() {
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
	
}
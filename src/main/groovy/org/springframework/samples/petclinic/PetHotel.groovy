package org.springframework.samples.petclinic

class PetHotel {
	def enter(Pet pet) {
		pets.add(pet)
	}
	
	def escape(Pet pet) {
		pets.remove(pet)
	}
	
	def numOccupants() {
		pets.size()
	}
	
	Set pets = new HashSet()
}
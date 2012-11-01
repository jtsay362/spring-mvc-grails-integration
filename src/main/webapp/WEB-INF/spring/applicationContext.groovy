import java.util.Calendar

import org.springframework.samples.petclinic.*

Calendar cal = Calendar.instance
cal.set(1999, 9, 15)

beans {
	mascot(Pet) {
		name = "Samson"		
		birthDate = cal.time
		type = { PetType pt ->
			name = "cat"
		}
	}			
}
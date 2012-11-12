package org.springframework.samples.petclinic.web

import org.springframework.samples.petclinic.*;

import org.springframework.ui.Model;

class FishController {

  def testLuck() {
  
    def message
   
    if (new Random().nextDouble() > 0.5) {
      message = "You are having good luck today! The fish are happy."
    } else {
      message = "You are having bad luck today. Another fish is floating lifelessly.";
    }
          
    model["luckMessage"] = message;  
      
    render(view : 'luck')   
  }
}
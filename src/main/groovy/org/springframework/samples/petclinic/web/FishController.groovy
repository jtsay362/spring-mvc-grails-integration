package org.springframework.samples.petclinic.web

import org.springframework.samples.petclinic.*;

import org.springframework.ui.Model;

class FishController {
  def defaultAction = "jump"
  
  def feed() {
    response.writer.write("Fed fish " + params["id"])    
  }

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
  
  def jump() {
    response << "Woohoo!"
  }
  
  // Note the base attribute which is unfortunately necessary
  def enemy() {
    redirect(controller : 'pet', action : 'show-mascot', base : pathPrefix)
  }
  
  def act() {
    redirect(action : 'jump', base : pathPrefix)
  }
}
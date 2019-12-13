//
//  classWeapon.swift
//  Projet3
//
//  Created by vanessa prigent on 21/10/2019.
//  Copyright © 2019 Vanessa Prigent. All rights reserved.
//

import Foundation

class Weapon {
  var damages: Int
  var type: WeaponType
  init(damages: Int, type: WeaponType) {
    self.damages = damages
    self.type = type
  }

}


  
    enum WeaponType {
     
      case Bow
      case Axe
      case BoxingGloves
      case MagicStick
      case Saber
      case Sword
    }
    
    
    
    
      
     






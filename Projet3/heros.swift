//
//  classHeros.swift
//  Projet3
//
//  Created by vanessa prigent on 21/10/2019.
//  Copyright © 2019 Vanessa Prigent. All rights reserved.
//

import Foundation

class Hero: CustomStringConvertible {
  var name: String
  var maxLifePoints: Int = 100
  var weapon: Weapon
  var currentPoints: Int
  
  init(name: String, lifePoints: Int, weapon: Weapon) {
    self.name = name
    self.maxLifePoints = lifePoints
    self.weapon = weapon
    self.currentPoints = lifePoints
  }
  
   var description: String {
    return "Le Hero s'appelle : \(name)"
  }
}

class Archer: Hero {
  init(name: String) {
    super.init(name: name, lifePoints: 100, weapon: Weapon(damages: 10, type: .Bow))
  }
 override var description: String {
  return "L'Archer' s'appelle : \(name)"
  }
}
  class Wizard: Hero {
    init(name: String) {
      super.init(name: name, lifePoints: 150, weapon: Weapon(damages: 20, type: .MagicStick))
  }
  override var description: String {
  return "Le Wizard s'appelle : \(name)"
    }
}
class Warrior: Hero {
  init(name: String) {
    super.init(name: name, lifePoints: 100, weapon: Weapon(damages: 16, type: .Axe))
  }
 override var description: String {
  return "Le Warrior s'appelle : \(name)"
}
    }
class Ninja: Hero {
  init(name: String) {
    super.init(name: name, lifePoints: 80, weapon: Weapon(damages: 18, type: .Saber))
  }
   override var description: String {
  return "Le Ninja s'appelle : \(name)"
}
  }
class Knight: Hero {
  init(name: String) {
    super.init(name: name, lifePoints: 100, weapon: Weapon(damages: 10, type: .Sword))
  }
  override var description: String {
  return "Le Knight s'appelle : \(name)"
  }
}
class Boxer: Hero {
  init(name: String) {
    super.init(name: name, lifePoints: 100, weapon: Weapon(damages: 15, type: .BoxingGloves))
  }
 override var description: String {
  return "Le Boxer s'appelle : \(name)"
  }
}

var heroArray = [Hero]()
  




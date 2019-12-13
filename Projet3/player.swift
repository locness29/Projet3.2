//
//  player.swift
//  Projet3
//
//  Created by vanessa prigent on 24/10/2019.
//  Copyright © 2019 Vanessa Prigent. All rights reserved.
//

import Foundation




class Player {
  var name: String
  var team: [Hero]
  init(name: String) {
    team = [Hero]()
    self.name = name
    
  }
  var description: String {
    return "Le Hero s'appelle : \(name)"
  }
  }

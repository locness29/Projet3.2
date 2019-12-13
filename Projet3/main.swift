//
//  main.swift
//  Projet3
//
//  Created by vanessa prigent on 21/10/2019.
//  Copyright © 2019 Vanessa Prigent. All rights reserved.
//

import Foundation

var nameDict: [String: Int] = [:]
let game = Game()

game.start()
game.player1.team = game.newTeam()
game.player2.team = game.newTeam()
game.currentPlayer = game.player1
while true {
  game.roll()
}


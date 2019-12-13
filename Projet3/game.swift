//
//  game.swift
//  Projet3
//
//  Created by vanessa prigent on 24/10/2019.
//  Copyright © 2019 Vanessa Prigent. All rights reserved.
//
import Foundation

class Game {
  var player1: Player!
  var player2: Player!
  var currentPlayer: Player!
  
  
  func newPlayer(numPlayer: Int) -> Player {
    var playername = ""
    
    while playername.isEmpty {
      print("Entrez le nom de votre joueur \(numPlayer)")
      playername = readLine()!
      playername = playername.trimmingCharacters(in: .whitespaces)
      
      if nameDict[playername] != nil {
        print("\nLe nom existe déjà, Veuillez saisir un autre nom de joueur")
        playername = ""
      }
    }
    nameDict[playername] = 5
    return Player(name: playername)
    
  }
  
  
  func newTeam() -> [Hero] {
    var team = [Hero]()
    
    for _ in 1...3 {
      let teamChoicePrompt = """
      Choix du Héros :
      1. Archer
      2. Wizard
      3. Warrior
      4. Ninja
      5. Knight
      6. Boxer
      """
      print(teamChoicePrompt)
      
      var teamChoice = 0
      
      repeat {
        print("Veuillez choisir un numéro correspondant")
        teamChoice = Int(readLine()!) ?? 0
      } while teamChoice < 1 && teamChoice > 6
      
      
      var hero: Hero?
      switch teamChoice {
      case 1:
        hero = Archer(name: teamHeroName())
      case 2:
        hero = Wizard(name: teamHeroName())
      case 3:
        hero = Warrior(name: teamHeroName())
      case 4:
        hero = Ninja(name: teamHeroName())
      case 5:
        hero = Knight(name: teamHeroName())
      case 6:
        hero = Boxer(name: teamHeroName())
      default:
        break
      }
      team.append(hero!)
    }
    
    for unHero in team {
      print("Vos Héro sont :  \(unHero)")
    }
    return team
  }
  
  func teamHeroName() -> String {
    var heroName = ""
    
    while heroName.isEmpty {
      print("Entrez le nom de votre héros ")
      heroName = readLine()!
      heroName = heroName.trimmingCharacters(in: .whitespaces)
      
      if nameDict[heroName] != nil {
        print("\nLe nom existe déjà, Veuillez saisir un autre nom de joueur")
        heroName = ""
      }
    }
    nameDict[heroName] = 0
    return heroName
  }
  
  func start() {
    player1 = newPlayer(numPlayer: 1)
    player2 = newPlayer(numPlayer: 2)
  }
  
  func selectHeroForPlayer(player: Player, prompt: String) -> Hero {
    var choice = 0
    print(prompt)
    
    
    for (index, unHero) in player.team.enumerated() {
      print("\(index + 1) - \(unHero.name) avec \(unHero.maxLifePoints) pv")
      
    }
    repeat {
      choice = Int(readLine()!) ?? 0
    } while choice < 1 && choice > player.team.count
    
    return player.team[choice-1]
  }
  
  func fight(attacker attackHero: Hero , against receivHero: Hero) {
    if attackHero is Wizard {
      receivHero.currentPoints += attackHero.weapon.damages
      if receivHero.currentPoints > receivHero.maxLifePoints {
        receivHero.currentPoints = receivHero.maxLifePoints
      }
    } else {
      receivHero.currentPoints -= attackHero.weapon.damages
      if receivHero.currentPoints < 0 {
        receivHero.currentPoints = 0
      }
    }
  }
  
  func roll() {
    print("\n\n-----------------------------------------\n\n")
    var prompt = "\(currentPlayer.name) veuillez sélectionner un de vos personnages"
    let hero = selectHeroForPlayer(player: currentPlayer, prompt: prompt)
    var heroOpponent: Hero
    if hero is Wizard {
     prompt = "\(currentPlayer.name) veuillez sélectionner un de vos personnages à soigner"
      heroOpponent = selectHeroForPlayer(player: currentPlayer, prompt: prompt)
    } else {
      prompt = "\(currentPlayer.name) veuillez sélectionner un des personnages adverses à attaquer"
      heroOpponent = selectHeroForPlayer(player: getOpponentPlayer(currentPlayer: currentPlayer), prompt: prompt)
    }
    fight(attacker: hero, against: heroOpponent)
    currentPlayer = getOpponentPlayer(currentPlayer: currentPlayer)
  }
  func getOpponentPlayer(currentPlayer: Player) -> Player {
    if currentPlayer.name == player1.name {
      return player2
    } else {
      return player1
    }
  }
 /*func isGameOver() -> Player? {
  
  }*/
  
}














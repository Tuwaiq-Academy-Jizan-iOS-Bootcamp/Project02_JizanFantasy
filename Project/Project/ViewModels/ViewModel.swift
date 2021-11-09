//
//  ViewModel.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import Foundation

class ViewModel {
    
    var knight = Knight()
    var wizard = Wizard()
    var thief = Thief()
    
    
    var firstBoss = FirstBoss()
    var secondBoss = SecondBoss()
    
    var turn = false
    var flag = false
    var number = 1
    
    var selectedHero: Hero?
    var selectedBoss: Boss?
    
    var isPlayerTurn: Bool = false // change to ture to let the player start the game..
    
    var dead = 0
    
    func dice() -> (value: Int, text: String) {
        guard self.selectedHero != nil else {
            return (value: 0, text: "You need to select a hero first")
        }
        
        let value: Int = .random(in: 1...20)
        
        switch value {
            case 1...9:
                self.startBattle(value)
                return (value: value, text: "Power damage")
                
            case 10...19 :
                self.startBattle(value)
                return (value: value, text: "Weapon damage")

            case 20:
                self.startBattle(value)
                return (value: value, text: "Special Capacity")
                
            default:
                assert(true, "We should never get to this case 😟")
        }

        return (value: value, text: "Oh, no")
    }
    
    // Handle Battle
    func startBattle(_ diceNumber: Int) {
        // Battle Logic
        let affectFrom: Hero
        let affectOn: Hero
        
        if isPlayerTurn {
            affectFrom = self.selectedHero!
            affectOn = self.selectedBoss!
        } else {
            affectFrom = self.selectedBoss!
            affectOn = self.selectedHero!
        }
        
        var affect: Int?
        
        switch diceNumber {
            case 1...9:
                affect = affectFrom.powerDamage
            case 10...19:
                affect = affectFrom.weapon
            
            case 20:
                affectFrom.specialCapacityEffect()
                return
            default:
                assert(true, "We should never get to this case 😟")
        }
        
        guard let affect = affect else {
            return
        }
        
        if affectOn.defense > affect {
            affectOn.defense -= affect
        } else if affectOn.defense > 0 {
            
            let affectOnDefense = affectOn.defense
            let affectOnLifePoint = affect - affectOnDefense
            
            affectOn.defense -= affectOnDefense
            affectOn.lifePoint -= (affectOnLifePoint >= affectOn.lifePoint ? affectOn.lifePoint : affectOnLifePoint)
        } else {
            affectOn.lifePoint -= affect >= affectOn.lifePoint ? affectOn.lifePoint : affect
        }
        
        self.isPlayerTurn.toggle() // change who have the next move
    }
    
    func getRandomBoss() -> Boss {
        let rng = Int.random(in: 1...2)
        if rng == 1 {
            
            self.selectedBoss = self.firstBoss
        } else{
            self.selectedBoss = self.secondBoss
        }
        
        return self.selectedBoss!
    }
}

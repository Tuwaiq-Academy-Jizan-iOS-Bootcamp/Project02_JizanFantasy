//
//  Hero.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import Foundation
class Hero{
    
    var imageName: String?
    var name: String
    var lifePoint: Int
    var defense: Int
    var powerDamage: Int
    var weapon: Int
    var specialCapacity: String
    
    init(
        name: String,
        lifePoint: Int,
        defense: Int,
        powerDamage: Int,
        weapon: Int,
        specialCapacity: String
    ) {
        self.imageName = "Hero1"
        self.name = name
        self.lifePoint = lifePoint
        self.defense = defense
        self.powerDamage = powerDamage
        self.weapon = weapon
        self.specialCapacity = specialCapacity
    }
    
    func specialCapacityEffect() {
        // 
    }
}


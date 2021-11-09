//
//  Thief.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import Foundation

class Thief: Hero {
    
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, weapon: Int, specialCapacity: String) {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, weapon: weapon, specialCapacity: specialCapacity)
    }
    
    convenience init() {
        self.init(
            name: "Thief",
            lifePoint: 56,
            defense: 25,
            powerDamage: 15,
            weapon: 30,
            specialCapacity: "+5 LP, +35 WD"
        )
        self.imageName = "Hero3"
    }
    
    override func specialCapacityEffect() {
        self.lifePoint += 5
        self.weapon += 35
    }
    
}

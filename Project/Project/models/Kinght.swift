//
//  Kinght.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import Foundation

class Knight: Hero {
    
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, weapon: Int, specialCapacity: String) {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, weapon: weapon, specialCapacity: specialCapacity)
    }
    
    convenience init() {
        self.init(
            name: "Knight",
            lifePoint: 60,
            defense: 20,
            powerDamage: 30,
            weapon: 40,
            specialCapacity: "+5 LP, +10 WD"
        )
        self.imageName = "Hero1"
    }
    
    override func specialCapacityEffect() {
        self.lifePoint += 5
        self.weapon += 10
    }
    
}

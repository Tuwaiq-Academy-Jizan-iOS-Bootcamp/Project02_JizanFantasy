//
//  SecondBoss.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import Foundation

class SecondBoss: Boss {
    
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, weapon: Int, specialCapacity: String) {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, weapon: weapon, specialCapacity: specialCapacity)
    }
    
    convenience init() {
        self.init(
            name: "Second Boss",
            lifePoint: 170,
            defense: 25,
            powerDamage: 15,
            weapon: 30,
            specialCapacity: "+5 LP, +32 PD"
        )
        
        self.imageName = "Boss2"
    }

    override func specialCapacityEffect() {
        self.lifePoint += 5
        self.powerDamage += 32
    }
}

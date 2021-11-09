//
//  Wizard.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import Foundation

class Wizard: Hero {
    
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, weapon: Int, specialCapacity: String) {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, weapon: weapon, specialCapacity: specialCapacity)
    }
    
    convenience init() {
        self.init(
            name: "Wizard",
            lifePoint: 90,
            defense: 15,
            powerDamage: 70,
            weapon: 20,
            specialCapacity: "+35 LP, +10 PD"
        )
        self.imageName = "Hero2"
    }
    
    override func specialCapacityEffect() {
        self.lifePoint += 35
        self.powerDamage += 10
    }
}

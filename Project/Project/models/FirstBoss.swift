//
//  FirstBoss.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import Foundation


class FirstBoss: Boss {
    
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, weapon: Int, specialCapacity: String) {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, weapon: weapon, specialCapacity: specialCapacity)
    }
    
    convenience init() {
        self.init(
            name: "First Boss",
            lifePoint: 250,
            defense: 30,
            powerDamage: 20,
            weapon: 45,
            specialCapacity: "+5 LP, +22 WD"
        )
        
        self.imageName = "Boss1"
    }
    
    override func specialCapacityEffect() {
        self.lifePoint += 5
        self.weapon += 22
    }

}

//
//  ViewController.swift
//  Amal Jeli _ Project
//
//  Created by Amal Jeli on 28/03/1443 AH.
//

import UIKit
class Hero {
    
    var name: String
    var lifePoint: Int
    var defenase: Int
    var powerDamage: Int
    var weaponDamage: Int
    var specialCapacity: Int
    init(name:String ,lifepoint:Int , defenase:Int, powerDamage:Int , weaponDamage:Int,specialCapacity:Int) {
    self.name = name
    self.lifePoint = lifepoint
    self.defenase = defenase
    self.powerDamage = powerDamage
    self.weaponDamage = weaponDamage
    self.specialCapacity = specialCapacity
    
    
       
    }
    
    func Hero1 () {
        lifePoint += specialCapacity
        print("The Hero \(name) has healed \(specialCapacity) point of life")
    }
    

class Wizard: Hero {
    
    
    func restOflife() {
        if lifePoint < 0 {
            lifePoint = 0
        }
        print("Rest of life point for wizard : \(lifePoint)")
        
        }
    func attackWithPower() {
        print("The Hero use \(name) power and inflict \(powerDamage + defenase)")
        func attackWithWeapon() {
            print("The Hero use \(name) weapon and inflict \(powerDamage + defenase)")
        }
        
    }
    
    class boss1 : Hero {
        
        
        func restOflife () {
            if lifePoint < 0 {
                lifePoint = 0
            }
            print("Rest of life point for boss2 : \(lifePoint)")
            
            }
        func attackWithPower() {
            print("The Hero use \(name) power and inflict \(powerDamage + defenase)")
            func attackWithWeapon() {
                print("The Hero use \(name) weapon and inflict \(powerDamage + defenase)")
            }
        }
        
    
    
    
        class ViewController: UIViewController {
//
            @IBOutlet weak var veiwDes: UITextView!
            
            var turn: Int = 0
            var winner = false

        
      var knight = Hero.init(name: "knight", lifepoint: 60, defenase: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100)
      var Wizard = Hero.init(name: "wizard", lifepoint: 90, defenase: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50)
      var Thief = Hero.init(name: "Thief", lifepoint: 65, defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
              var boss1 = Hero.init(name: "boss1", lifepoint: 250, defenase: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
              var boss2 = Hero.init(name: "boss2", lifepoint: 170, defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
            
        override func viewDidLoad() {
            super.viewDidLoad()
        }
            
   
            func rollDice (){
                var veiwtext:Int = .random(in: 0...20)
                
                switch veiwtext {
                case 1...9:
//                viewDes.text = "powerDamage"
                    print("powerDamage")
                case 10...19:
//                    viewDes.text = "weaponDamage"
                    print("weaponDamage")
                case 20:
//                    viewDes.text = "specialCapacity"
                    print("specialCapacity")
                    
                default : print("Eror")
                }
    
            
                    
                
                
                
    
//        mutating func ataack () {
//            lifePoint = lifePoint - (defenase - powerdDamage)
//            lifePoint = lifePoint - ( defenase - weaponDamage)
//            lifePoint = lifePoint - ( defenase - specialCapacity)
            
            
            
            
//            (lifePoint: 250, defenase: 30, powerdDamage: 20, weaponDamage: 45, specialCapacity: 110)
        
            
//            Boss(lifePoint: 170, defenase: 25, powerdDamage: 15, weaponDamage: 30, specialCapacity: 75)
////
            
 
       
                
        
        
}

    }
}


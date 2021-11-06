//
//  ViewForth.swift
//  DahmaProject02
//
//  Created by dahma alwani on 02/04/1443 AH.
//

import Foundation
import UIKit
class Hero {
    var name : String
    var lifePoint : Int
    var defend : Int
    var powerDamage : Int
    var weaponDamage : Int
    var specialDamage : Int
//THIS STEP IS IMPORTAMT STEP "INITIALISION"
    init(name:String, lifePoint:Int ,defend:Int , powerDamage:Int , weaponDamage:Int ,specialDamage:Int) {
        self.name = name
        self.lifePoint = lifePoint
        self.defend = defend
        self.powerDamage = powerDamage
        self.weaponDamage = weaponDamage
        self.specialDamage = specialDamage
    }
}
//CREATE SUBCLASS FOR EACH ONE
    class Boss1 : Hero {
    func lifePoint () {
        powerDamage -= lifePoint - defend
        print("Hero power damage - the diferent between power damage for hero and defancd for boss")
    }
    }
    class Boss2: Hero {
        func lifePoint () {
            powerDamage -= lifePoint - defend
            print("Hero power damage - the diferent between power damage for hero and defancd for boss")
    }
    }
    class Knight: Hero {
        func lifePoint () {
            powerDamage -= lifePoint - defend
            print("Hero power damage - the diferent between power damage for hero and defancd for boss")
    }
    }
    class Wizard: Hero {
        func lifePoint () {
            powerDamage -= lifePoint - defend
            print("Hero power damage - the diferent between power damage for hero and defancd for boss")
    }
    }
    class Thief: Hero {
        func lifePoint () {
            powerDamage -= lifePoint - defend
            print("Hero power damage - the diferent between power damage for hero and defancd for boss")
    }
        class ViewForth : UIViewController {
            
            override func viewDidLoad() {
                super.viewDidLoad()
            }

        //    LABEL FOR PLAYER NAME
        @IBOutlet weak var namePlayer1: UILabel!
        @IBOutlet weak var namePlayer2: UILabel!
        // VIEW IMAGE FOR PLAYER
        @IBOutlet weak var imagePlayer1: UIImageView!
        @IBOutlet weak var imagePlayer2: UIImageView!
        //  FIRST LABELS FOR BOSS
        @IBOutlet weak var lifePoint1: UILabel!
        @IBOutlet weak var defancd1: UILabel!
        @IBOutlet weak var powerDamage1: UILabel!
        @IBOutlet weak var weaponDamage1: UILabel!
        @IBOutlet weak var specialEffect1: UILabel!
        // SECOND LABELS FOR HEROS
        @IBOutlet weak var lifePoint2: UILabel!
        @IBOutlet weak var defancd2: UILabel!
        @IBOutlet weak var powerDamage2: UILabel!
        @IBOutlet weak var weaponDamage2: UILabel!
        @IBOutlet weak var specialEffect2: UILabel!
        //    LABEL FOR WRITE
        @IBOutlet weak var discriptionLabel: UILabel!
        
        @IBOutlet weak var resultOfDice: UILabel!
        //    ALBEL FOR DICE NUMBER
        @IBOutlet weak var diceNum: UILabel!
        //   BUTTON FOR ROLLING DICE
        @IBAction func rollingDice(_ sender: Any) {
            let moveNum = Int.random(in: 1...20)
            diceNum.text = String (moveNum)
        }
    var Boss1 = Hero(name: "boss1", lifePoint: 250, defend: 30, powerDamage: 20, weaponDamage: 45, specialDamage: 100)
    var Boss2 = Hero(name: "boss2", lifePoint: 170, defend: 25, powerDamage: 15, weaponDamage: 30, specialDamage: 75)
    var Knight = Hero(name: "knight", lifePoint: 60, defend: 20, powerDamage: 30, weaponDamage: 40, specialDamage: 100)
    var Wizard =  Hero(name: "wizard", lifePoint: 90, defend: 15, powerDamage: 70, weaponDamage: 20, specialDamage: 50)
    var Thief = Hero(name: "thief", lifePoint: 65 , defend: 25, powerDamage: 15, weaponDamage: 30, specialDamage: 75)
   
//    FUNCTION FOR ROLLING THE DICE BY USE SWITCH
func rollDice() {
 let result: Int = .random(in: 1...20)
switch result {
  case 1...9:
    diceNum.text = "PD"
  print("Hero power damage - the diferent between power damage for hero and defancd for boss")
//    Int (lifePoint2.text!) -= Int (powerDamage1.text! - Int defancd2.text!)
  case 10...19:
    diceNum.text = "WD"
  print("Hero Weapon Damage - the diferent between Weapon Damage  for hero and defancd for boss")
  case 20:
    diceNum.text = "SC"
  print("Hero special Capacity - the diferent between special Capacity for hero and defancd for boss")
   default: print(" ")
     }
   // rollingDice.text = "\(result)"
             }

    @IBAction func rootViewController (segue: UIStoryboardSegue){
        print ("d")
    }
//func choosePlayer() {
//    let random = Int.random(in: 1...2)
//    if random == 1{
//        namePlayer1.text = String(Boss1.name)
//        lifePoint1.text = String(Boss1.lifePoint)
//        defancd1.text = String(Boss1.defend)
//        powerDamage1.text = String(Boss1.powerDamage)
//        weaponDamage1.text = String(Boss1.weaponDamage)
//        specialEffect1.text = String(Boss1.specialDamage)
//    }else {  random == 2
//        namePlayer2.text = String(Boss2.name)
//        lifePoint1.text = String(Boss2.lifePoint)
//        defancd1.text = String(Boss2.defend)
//        powerDamage1.text = String(Boss2.powerDamage)
//        weaponDamage1.text = String(Boss2.weaponDamage)
//        specialEffect1.text = String(Boss2.specialDamage)
//        }
    
}
    }

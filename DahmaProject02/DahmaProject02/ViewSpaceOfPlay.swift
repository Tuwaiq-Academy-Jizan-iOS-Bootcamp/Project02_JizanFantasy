//
//  ViewSpaceOfPlay.swift
//  DahmaProject02
//
//  Created by dahma alwani on 03/04/1443 AH.
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
}
//                override func viewDidLoad() {
//                    super.viewDidLoad()
//                }
class ViewSpaceOfPlay : UIViewController {
    
    var lifePoint = ""
    var defend = ""
    var powerDamage = ""
    var weaponDamage = ""
    var specialEffect = ""
    var boss1 = Hero(name: "boss1", lifePoint: 250, defend: 30, powerDamage: 20, weaponDamage: 45, specialDamage: 100)
    var boss2 = Hero(name: "boss2", lifePoint: 170, defend: 25, powerDamage: 15, weaponDamage: 30, specialDamage: 75)
    var knight = Hero(name: "knight", lifePoint: 60, defend: 20, powerDamage: 30, weaponDamage: 40, specialDamage: 100)
    var wizard =  Hero(name: "wizard", lifePoint: 90, defend: 15, powerDamage: 70, weaponDamage: 20, specialDamage: 50)
    var thief = Hero(name: "thief", lifePoint: 65 , defend: 25, powerDamage: 15, weaponDamage: 30, specialDamage: 75)
    func restOfLife () {
        if lifePoint2.text! <= "0" {
            lifePoint2.text! = "0"
            
        }else if lifePoint1.text! <= "0" {
            lifePoint1.text! = "0"
        }
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
    
    var flagTurn = false
    override func viewDidLoad() {
                   super.viewDidLoad()
        let Boss = Int.random(in: 1...2)
        if Boss == 1 {
            imagePlayer1.image = UIImage(named:"bosse1")
            
            lifePoint1.text = String(boss1.lifePoint)
            defancd1.text = String(boss1.defend)
            powerDamage1.text = String(boss1.powerDamage)
            weaponDamage1.text = String(boss1.weaponDamage)
            specialEffect1.text = String(boss1.specialDamage)
        }else{
            imagePlayer1.image = UIImage(named: "bosse2")
            lifePoint1.text = String(boss2.lifePoint)
            defancd1.text = String(boss2.defend)
            powerDamage1.text = String(boss2.powerDamage)
            weaponDamage1.text = String(boss2.weaponDamage)
            specialEffect1.text = String(boss2.specialDamage)
        }
                   lifePoint2.text = lifePoint
                   defancd2.text = defend
                   powerDamage2.text = powerDamage
                   weaponDamage2.text = weaponDamage
                   specialEffect2.text = specialEffect
               }
               
    @IBAction func rollingDice(_ sender: Any) {
//        let moveNum = Int.random(in: 1...20)
//        diceNum.text = String (moveNum)
//        // rollDice()
//
        if lifePoint1.text! > "0" && lifePoint2.text! > "0" {
            if flagTurn == true{
                bossturn()
            
            }else{
                
                heroTurn()
            }
        }else{
            discriptionLabel.text = "have winner"
        }
//        if var lphero = Int(lifePoint2.text!),var lpboss = Int(lifePoint1.text!),var dfhero = Int(defancd2.text!),var dfhero = Int(defancd2.text!),var dfboss = Int(defancd1.text!),var pdhero = Int(powerDamage2.text!), var pdboss = Int(powerDamage1.text!), var wphero = Int(weaponDamage2.text!), var wpboss = Int(weaponDamage1.text!),var schero = Int(specialEffect2.text!), var scboss = Int(specialEffect1.text!){
//
////            var flagTurn = false
//            var turnNum = 0
//            if lphero > 0 && lpboss > 0 {
//                discriptionLabel.text = "trun \(turnNum)\n "
//                if flagTurn == true {
//                    turnNum += 1
//                    discriptionLabel.text = "Hero Start \n"
//                    //                HERO TURN
//                    let value:Int = .random(in: 1...20)
//
//                    switch value{
//                    case 1...9:
//                        diceNum.text = String(value)
//                        discriptionLabel.text = "power Damag \n"
//                        print("power Damage")
//
//                        pdhero -= dfboss
//                        if pdhero < 0 {
//                            pdhero = 0
//                        }
//                        lpboss -= pdhero
//                        restOfLife ()
//                        lifePoint1.text = String(lpboss)
//                        discriptionLabel.text =  " life point of hero \(lifePoint2.text!)\n "
//                        discriptionLabel.text =  " life point of boss \(lifePoint1.text!)\n "
//                    case 10...19:
//                        diceNum.text = String(value)
//                        discriptionLabel.text = "weapon Demage \n"
//                        print("weapon Damage")
//                        print(lifePoint2.text!)
//                        print(lifePoint1.text!)
//                        wphero -= dfboss
//                        if wphero < 0 {
//                            wphero = 0
//                        }
//                        lpboss -= wphero
//                        restOfLife ()
//                        lifePoint1.text = String(lpboss)
//                        discriptionLabel.text =  "life point of hero \(lifePoint2.text!)\n "
//                        discriptionLabel.text =  " life point of boss \(lifePoint1.text!) \n"
//
//                    case 20:
//                        diceNum.text = String(value)
//                        discriptionLabel.text = "special capacity \n"
//                        print("special capacity")
//                        schero -= dfboss
//                        if schero < 0 {
//                            schero = 0
//                        }
//                        lpboss -= schero
//                        restOfLife ()
//                        lifePoint1.text = String(lpboss)
//                        discriptionLabel.text =  "life point of hero \(lifePoint2.text!)\n "
//                        discriptionLabel.text =  "life point of boss \(lifePoint1.text!)\n "
//                    default:
//                        print(" the end")
//                    }
//                    flagTurn = false
//
//                }
//                else if flagTurn == false{
//
//                    // boss turn
//                    let dice2 :Int = .random(in: 1...20)
//
//                    switch dice2 {
//                    case 1...9 :
//                        discriptionLabel.text = " boss start \n"
//
//                        diceNum.text = String(dice2)
//                        discriptionLabel.text = "power Damag\n"
//                        print("power Damage")
//
//                        pdboss -= dfhero
//                        if pdboss < 0{
//                            pdboss = 0
//                        }
//                        lphero -= pdboss
//                        restOfLife ()
//                        lifePoint2.text = String(lphero)
//                        discriptionLabel.text =  "life point of hero \(lifePoint2.text!)\n "
//                        discriptionLabel.text =  "life point of boss \(lifePoint1.text!)\n "
//                    case 10...19 :
//                        discriptionLabel.text = " boss start"
//
//                        diceNum.text = String(dice2)
//                        discriptionLabel.text = "weapon Demage \n"
//                        print("weapon Damage")
//
//                        wpboss -= dfhero
//                        if wpboss < 0 {
//                            wpboss = 0
//                        }
//                        lphero -= wpboss
//                        restOfLife ()
//                        lifePoint2.text = String(lphero)
//                        discriptionLabel.text =  "life point of hero \(lifePoint2.text!)\n "
//                        discriptionLabel.text =  "life point of boss \(lifePoint1.text!)\n "
//                    case 20 :
//                        discriptionLabel.text = " boss start"
//                        diceNum.text = String(dice2)
//                        discriptionLabel.text = "special capacity \n"
//                        print("special capacity")
//                        scboss -= dfhero
//                        if scboss < 0 {
//                            scboss = 0
//                        }
//                        lphero -= scboss
//                        restOfLife ()
//                        lifePoint2.text = String(lphero)
//                        discriptionLabel.text =  "life point of hero \(lifePoint2.text!)\n "
//                        discriptionLabel.text =  "life point of boss \(lifePoint1.text!)\n "
//
//                    default:
//                        print("the end")
//                    }
//                    flagTurn = true
//                }
//            } else  if lphero <= 0 {
//
//                discriptionLabel.text = " The winner is Boss"
//
//            }else if  lpboss <= 0{
//
//                discriptionLabel.text = " The winner is Hero "
//
//            }
        }
        //    FUNCTION FOR ROLLING THE DICE BY USE SWITCH
//        func rollDice() {
//            let _: Int = .random(in: 1...20)
//        }
    
        //            THE BOSSES
//        func choosePlayer() {
//            let Boss = Int.random(in: 1...2)
//            if Boss == 1 {
//                imagePlayer1.image = UIImage(named:"bosse1")
//
//                lifePoint1.text = String(boss1.lifePoint)
//                defancd1.text = String(boss1.defend)
//                powerDamage1.text = String(boss1.powerDamage)
//                weaponDamage1.text = String(boss1.weaponDamage)
//                specialEffect1.text = String(boss1.specialDamage)
//            }else{
//                imagePlayer1.image = UIImage(named: "bosse2")
//                lifePoint1.text = String(boss2.lifePoint)
//                defancd1.text = String(boss2.defend)
//                powerDamage1.text = String(boss2.powerDamage)
//                weaponDamage1.text = String(boss2.weaponDamage)
//                specialEffect1.text = String(boss2.specialDamage)
//
//            }
//        }
    
    func bossturn(){
        var lphero = Int(lifePoint2.text!)!
        var lpboss = Int(lifePoint1.text!)!
        var dfhero = Int(defancd2.text!)!
       // var dfhero = Int(defancd2.text!)!
        var dfboss = Int(defancd1.text!)!
        var pdhero = Int(powerDamage2.text!)!
        var pdboss = Int(powerDamage1.text!)!
        var wphero = Int(weaponDamage2.text!)!
        var wpboss = Int(weaponDamage1.text!)!
        var schero = Int(specialEffect2.text!)!
        var scboss = Int(specialEffect1.text!)!
//        if var lphero = Int(lifePoint2.text!),var lpboss = Int(lifePoint1.text!),var dfhero = Int(defancd2.text!),var dfhero = Int(defancd2.text!),var dfboss = Int(defancd1.text!),var pdhero = Int(powerDamage2.text!), var pdboss = Int(powerDamage1.text!), var wphero = Int(weaponDamage2.text!), var wpboss = Int(weaponDamage1.text!),var schero = Int(specialEffect2.text!), var scboss = Int(specialEffect1.text!){
        let dice2 :Int = .random(in: 1...20)
        
        switch dice2 {
        case 1...9 :
            discriptionLabel.text = " boss start \n"
            
            diceNum.text = String(dice2)
            discriptionLabel.text = "power Damag\n"
            print("power Damage")
            
            pdboss -= dfhero
            if pdboss < 0{
                pdboss = 0
            }
            lphero -= pdboss
            //restOfLife ()
            lifePoint2.text = String(lphero)
            discriptionLabel.text! +=  "life point of hero \(lifePoint2.text!)\n "
            discriptionLabel.text! +=  "life point of boss \(lifePoint1.text!)\n "
        case 10...19 :
            discriptionLabel.text = " boss start"
            
            diceNum.text = String(dice2)
            discriptionLabel.text = "weapon Demage \n"
            print("weapon Damage")
            
            wpboss -= dfhero
            if wpboss < 0 {
                wpboss = 0
            }
            lphero -= wpboss
           // restOfLife ()
            lifePoint2.text = String(lphero)
            discriptionLabel.text! +=  "life point of hero \(lifePoint2.text!)\n "
            discriptionLabel.text! +=  "life point of boss \(lifePoint1.text!)\n "
        case 20 :
            discriptionLabel.text = " boss start"
            diceNum.text = String(dice2)
            discriptionLabel.text = "special capacity \n"
            print("special capacity")
            scboss -= dfhero
            if scboss < 0 {
                scboss = 0
            }
            lphero -= scboss
            //restOfLife ()
            lifePoint2.text = String(lphero)
            discriptionLabel.text! +=  "life point of hero \(lifePoint2.text!)\n "
            discriptionLabel.text! +=  "life point of boss \(lifePoint1.text!)\n "
            
        default:
            print("the end")
        }
    
        flagTurn = false
    }
        
    
func heroTurn(){
//    if var lphero = Int(lifePoint2.text!),var lpboss = Int(lifePoint1.text!),var dfhero = Int(defancd2.text!),var dfhero = Int(defancd2.text!),var dfboss = Int(defancd1.text!),var pdhero = Int(powerDamage2.text!), var pdboss = Int(powerDamage1.text!), var wphero = Int(weaponDamage2.text!), var wpboss = Int(weaponDamage1.text!),var schero = Int(specialEffect2.text!), var scboss = Int(specialEffect1.text!){
    var lphero = Int(lifePoint2.text!)!
    var lpboss = Int(lifePoint1.text!)!
    var dfhero = Int(defancd2.text!)!
   // var dfhero = Int(defancd2.text!)!
    var dfboss = Int(defancd1.text!)!
    var pdhero = Int(powerDamage2.text!)!
    var pdboss = Int(powerDamage1.text!)!
    var wphero = Int(weaponDamage2.text!)!
    var wpboss = Int(weaponDamage1.text!)!
    var schero = Int(specialEffect2.text!)!
    var scboss = Int(specialEffect1.text!)!
    let value:Int = .random(in: 1...20)
    
    switch value{
    case 1...9:
        diceNum.text = String(value)
        discriptionLabel.text = "power Damag \n"
        print("power Damage")
        
        pdhero -= dfboss
        if pdhero < 0 {
            pdhero = 0
        }
        lpboss -= pdhero
       // restOfLife ()
        lifePoint1.text = String(lpboss)
        discriptionLabel.text! +=  " life point of hero \(lifePoint2.text!)\n "
        discriptionLabel.text! +=  " life point of boss \(lifePoint1.text!)\n "
    case 10...19:
        diceNum.text = String(value)
        discriptionLabel.text = "weapon Demage \n"
        print("weapon Damage")
        print(lifePoint2.text!)
        print(lifePoint1.text!)
        wphero -= dfboss
        if wphero < 0 {
            wphero = 0
        }
        lpboss -= wphero
       // restOfLife ()
        lifePoint1.text = String(lpboss)
        discriptionLabel.text! +=  "life point of hero \(lifePoint2.text!)\n "
        discriptionLabel.text! +=  " life point of boss \(lifePoint1.text!) \n"
        
    case 20:
        diceNum.text = String(value)
        discriptionLabel.text = "special capacity \n"
        print("special capacity")
        schero -= dfboss
        if schero < 0 {
            schero = 0
        }
        lpboss -= schero
       // restOfLife ()
        lifePoint1.text = String(lpboss)
        discriptionLabel.text! +=  "life point of hero \(lifePoint2.text!)\n "
        discriptionLabel.text! +=  "life point of boss \(lifePoint1.text!)\n "
    default:
        print(" the end")
    }

    flagTurn = true
    
}
    


    
    
    
    
    @IBAction func rootViewController (segue: UIStoryboardSegue){
        print ("d")
        if segue.identifier == "moveToViewSpaceOfPlay" {
            // pass data to ViewSpaceOfPlay
            
        }
    }
}


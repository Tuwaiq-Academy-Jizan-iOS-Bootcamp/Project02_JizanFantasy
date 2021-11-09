//
//  ViewController.swift
//  Amal Jeli _ Project
//
//  Created by Amal Jeli on 28/03/1443 AH.
//

import UIKit
class Heros {
    
    
    var name: String
    var lifePoint: Int
    var defenase: Int
    var powerDamage: Int
    var weaponDamage: Int
    var specialCapacity: Int
    var specialCapacityLP :Int
    var specialCapacityPD :Int
    var specialCapacityWD :Int
    
    
   
    init(name:String ,lifepoint:Int , defenase:Int, powerDamage:Int , weaponDamage:Int,specialCapacity:Int , specialCapacityLP :Int , specialCapacityPD :Int , specialCapacityWD:Int) {
    self.name = name
    self.lifePoint = lifepoint
    self.defenase = defenase
    self.powerDamage = powerDamage
    self.weaponDamage = weaponDamage
    self.specialCapacity = specialCapacity
        self.specialCapacityLP = specialCapacityLP
        self.specialCapacityPD = specialCapacityPD
        self.specialCapacityWD = specialCapacityWD
        
        
    
    }
    func Herolpsc () {
        lifePoint += specialCapacity
        print("The Hero \(name) has healed \(specialCapacity) point of life")
    
        }
    func attackWithPower() {
        print("The Hero use \(name) power and inflict \(powerDamage + defenase)")
    }
        func attackWithWeapon() {
            print("The Hero use \(name) weapon and inflict \(powerDamage + defenase)")
        }
}

//
class Hero1: Heros {
        func restOflife () {
            if lifePoint < 0 {
                lifePoint = 0
            }
            print("Rest of life point for Hero : \(lifePoint)")

            }
}
class boss: Heros {
        func restOflife () {
            if lifePoint < 0 {
                lifePoint = 0
            }
            print("Rest of life point for boss1 : \(lifePoint)")

            }
}

    
    
    
    class ViewController: UIViewController {

            
        var hero = Heros (name:"wizard", lifepoint: 0,defenase: 0, powerDamage: 0,weaponDamage:0, specialCapacity: 0,
        specialCapacityLP: 0 , specialCapacityPD: 0 , specialCapacityWD: 0)
        
        
//            descrption - hero
            
            @IBOutlet weak var nameHero: UILabel!
            @IBOutlet weak var imageHero: UIImageView!
            @IBOutlet weak var deslabel: UILabel!
            @IBOutlet weak var labelHeroLP: UILabel!
            @IBOutlet weak var labelHeroDF: UILabel!
            @IBOutlet weak var labelHeroPD: UILabel!
            @IBOutlet weak var LabelHeroWD: UILabel!
            @IBOutlet weak var labelHeroSC: UILabel!


            
    let boss = Int.random(in: 1...2)
        var boss1 = Heros(name: "boss1", lifepoint: 250, defenase: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110 , specialCapacityLP :5 , specialCapacityPD: 20 , specialCapacityWD: 0 )
            
        var boss2 = Heros(name: "boss2", lifepoint: 170, defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75 , specialCapacityLP:5 , specialCapacityPD:32, specialCapacityWD: 0)
        var spichalLp = 0
        var spichalpd = 0
        var spichalwd = 0
        
                
//            label reuslt - boss - imges
            
            @IBOutlet weak var imageBoss: UIImageView!
            @IBOutlet weak var nameBoss: UILabel!
            @IBOutlet weak var nuDisplay: UILabel!
            @IBOutlet weak var labelBossLP: UILabel!
            @IBOutlet weak var labelBossDF: UILabel!
            @IBOutlet weak var labelBossPD: UILabel!
            @IBOutlet weak var labelBossWD: UILabel!
            @IBOutlet weak var labelBossSC: UILabel!
            
      
        @IBOutlet weak var whaitLabel: UITextView!
        var playerboss : Heros?
            var playerhero : Heros?
            
            @IBOutlet weak var buottonOf: UIButton!
            
           

            var turn: Int = 0
            var winner = false
        
            
//var knight = Hero(name: "knight" , lifepoint: 60, defenase: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100 )
//
//var Wizard = Hero(name: "wizard", lifepoint: 90, defenase: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50 )
//
//var Thief = Hero(name: "Thief", lifepoint: 65 , defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
//
//var boss1 = Hero(name: "boss1", lifepoint: 250, defenase: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
//
//var boss2 = Hero(name: "boss2", lifepoint: 170, defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
    
        override func viewDidLoad() {
            super.viewDidLoad()
            bossRandom ()
            let myhero = 0
            if myhero == 0 {
                playerhero = hero
                
        
            }
           
            let boss = Int.random(in: 1...2)
            if boss == 0 {
                playerboss = boss1
            }else{
                playerboss = boss2
            }
             
        }
        

//            rolling dice
            @IBAction func diceRollButton(_ sender: Any) {
                
               var playerheroNname = nameHero.text!
               var playerherolifePoint = Int (labelHeroLP.text!)!
               var playerheroDefenase = Int (labelHeroDF.text!)!
               var playerheroPowerDamage = Int (labelHeroPD.text!)!
               var playerheroWeaponDamage = Int (LabelHeroWD.text!)!
               var playerheroSpecialCapacity = Int (labelHeroSC.text!)!
                
                var playerbossNname = nameBoss.text!
                var playerbosslifePoint = Int (labelBossLP.text!)!
                var playerbossDefenase = Int (labelBossDF.text!)!
                var playerbossPowerDamage = Int (labelBossPD.text!)!
                var playerbossWeaponDamage = Int (labelBossWD.text!)!
                var playerbossSpecialCapacity = Int (labelBossSC.text!)!
                var caseRollingDice = Int.random(in: 1...20)
                
                if winner == false {
                    
              
                    spichalLp = 0
                    spichalpd = 0
                    spichalwd = 0
                
                    turn += 1
                    winner = true
                    var caseRollingDice1 = Int.random(in: 1...20)
                    whaitLabel.text = "turn\(turn)"
                    
                    
                    whaitLabel.text += ("--- This is the turn N°\(turn)----")
                    
                    whaitLabel.text += ("--- Roll Dicw \(caseRollingDice1)---\n-")
                    
               
                    print("dice \(diceRollButton)")
//                    Print dice
                    switch caseRollingDice1 {
                    case 1...9 :
                        var result1 = (playerbossDefenase - playerheroPowerDamage )
                        if (result1 >= 0 ) { result1 = 0 }
                        playerbosslifePoint += result1
                        if playerbosslifePoint <= 0 {playerbosslifePoint}
                        playerbosslifePoint += result1
                        if playerbosslifePoint <= 0 { playerbosslifePoint = 0 }
                        print(result1 , playerbosslifePoint)
                        labelBossLP.text = String(playerbosslifePoint)
                        print ("player boss pw")
                        whaitLabel.text += ("\(playerheroNname) use power damage \(playerheroPowerDamage) and \(playerbossNname) use defence \(playerbossDefenase) , life point \(playerbosslifePoint) for \(playerbossNname)\n")
                
                
                
                                    case 10...19 :
                                        var result1 = (playerbossDefenase - playerheroWeaponDamage )
                                        if (result1 >= 0 ) { result1 = 0 }
                                        playerbosslifePoint += result1
                                        if playerbosslifePoint <= 0 {playerbosslifePoint}
                                        playerbosslifePoint += result1
                                        if playerbosslifePoint <= 0 { playerbosslifePoint = 0 }
                                        print(result1 , playerbosslifePoint)
                                        labelBossLP.text = String(playerbosslifePoint)
                                        print ("player boss pw")
                        whaitLabel.text += String("\(playerheroNname) use wepon damage \(playerheroPowerDamage) and \(playerbossNname) use defence \(playerbossDefenase) , life point \(playerbosslifePoint) for \(playerbossNname)\n")
                
                case 20 :
                var result1 = playerheroDefenase - playerbossSpecialCapacity
                if ( result1 >= 0){
                result1 = 0
                }
                playerbosslifePoint += result1
                if playerbosslifePoint <= 0 {
                    playerbosslifePoint = 0}
                labelBossLP.text = String(playerbosslifePoint)
                    whaitLabel.text += ("\(playerheroNname) use spichal capacity \(playerbossSpecialCapacity) for \(playerbossNname) and life point \(playerbosslifePoint) for \(playerbossNname)\n")
                    
                    default:
                    print("of finally ")
                
                }
                    
                    whaitLabel.text! += ("________________________\n")
                    
                    winner = false
                    let caseRollingDice = Int.random(in: 1...20)
                    whaitLabel.text! += ("__Roll Dice\(caseRollingDice) ___\n ")
                   // print(rollingDice)
                    
                    
                    switch caseRollingDice {
                    case 1...9:
                    //playerbossPowerDamage += labelBossSC
                    var result1 = (playerheroDefenase - playerbossPowerDamage )
                    if (result1 >= 0 ){ result1 = 0 }
                    playerherolifePoint += result1
                    labelHeroLP.text = String(playerherolifePoint)
                        whaitLabel.text += String("\(playerbossNname) use pwer damage \(playerheroPowerDamage) and \(playerbossNname)use defence \(playerheroDefenase), life point \(playerherolifePoint) for \(playerheroNname)\n")
                    print ("player2 weapon")
                    
        
                                    
                                    
                                    
       case 10...19 :
          var result1 = (playerheroDefenase - playerbossWeaponDamage )
            if (result1 >= 0 ) { result1 = 0 }
                 playerherolifePoint += result1
                  if playerherolifePoint <= 0 {playerherolifePoint = 0 }
                     print(result1 , playerbosslifePoint)
                        labelHeroLP.text = String(playerbosslifePoint)
                         print ("player2 ")
    whaitLabel.text += String("\(playerbossNname) use wepon damage \(playerbossWeaponDamage) and \(playerheroNname) use defence \(playerheroDefenase) , life point \(playerherolifePoint) for \(playerheroNname) \n")
                                    
                    
                                    case 20 :
                                    var result1 = playerheroDefenase - playerbossSpecialCapacity
                                    if ( result1 >= 0){
                                    result1 = 0
                                    }
                                    playerherolifePoint += result1
                                    if playerbosslifePoint <= 0 {
                                    playerherolifePoint = 0 }
                                    labelHeroLP.text = String(playerbosslifePoint)
                                        whaitLabel.text += ("\(playerbossNname) use spichal capacity \(playerbossSpecialCapacity) for \(playerheroNname) and life point \(playerherolifePoint) for \(playerheroNname)\n")
                    
                    default:
                    print ("Error")
                    }
                    
                    
                    
                    
                
                
                
                
                   
                
                    
//
//
//
//                switch caseRollingDice {
//                case 1...9 :
//                    var ruselt = playerbossDefenase - playerheroPowerDamage
//                    if ruselt >= 0 { ruselt = 0 }
//                    playerbosslifePoint -= ruselt
//                    whaitLabel.text = "print\(playerbosslifePoint)"
//
//                case 10...19 :
//                    var ruselt = playerbossDefenase - playerheroWeaponDamage
//                    if ruselt >= 0 { ruselt = 0 }
//                    playerbosslifePoint -= ruselt
//                    whaitLabel.text = "print\(playerbosslifePoint)"
//
//                case 20 :
//                    var ruselt = playerbossDefenase - playerheroSpecialCapacity
//                    if ruselt >= 0 { ruselt = 0 }
//                    playerbosslifePoint -= ruselt
//                    whaitLabel.text
//                    "print\(playerbosslifePoint)"
//
//
////               اللي يستخدم سبيشل يكون عنده اضافه في اللايف بوينت بمقدار معين
//
//                default :
//                    print("Error")
//
//                }
//
//
//
//                switch caseRollingDice {
//                case 1...9 :
//                    var ruselt = playerheroDefenase - playerbossPowerDamage
//                    if ruselt >= 0 { ruselt = 0 }
//                    playerherolifePoint -= ruselt
//                    whaitLabel.text = "print\(playerherolifePoint)"
//
//                case 10...19 :
//                    var ruselt = playerheroDefenase - playerbossWeaponDamage
//                    if ruselt >= 0 { ruselt = 0 }
//                    playerherolifePoint -= ruselt
//                    whaitLabel.text = "print\(playerherolifePoint)"
//
//                case 20 :
//                    var ruselt = playerheroDefenase - playerbossSpecialCapacity
//                    if ruselt >= 0 { ruselt = 0 }
//                    playerherolifePoint -= ruselt
//                    whaitLabel.text
//                    "print\(playerherolifePoint)"
//
//
//
////               اللي يستخدم سبيشل يكون عنده اضافه في اللايف بوينت بمقدار معين
//                default :
//                    print("Error")
//
//                }
//
                    if playerbosslifePoint <= 0 {
                        whaitLabel.text! += ("Game Over ! ")
                        whaitLabel.text! += ("winner boss")
                        winner = true
                        buottonOf.isEnabled = false
                    }
                    if playerherolifePoint <= 0 {
                        whaitLabel.text! += ("Game Over ! ")
                        whaitLabel.text! += ("winner hero")
                        winner = true
                        buottonOf.isEnabled = false
                    }
                        
//                if (playerboss?.lifePoint ?? 0)! <= 0 {
//                  //buottonOf.isEnabled = false
//                } else if (playerhero?.lifePoint)! <= 0 {
//                 // buottonOf.isEnabled = false
//                }
                    
//                if winner {
//                    whaitLabel.text! += ("Game Over ! ")
//                } else {
                    whaitLabel.text! += ("--- This is the turn N°\(turn)----")
                    
//                    caseRollingDice()
                    
                 
                  whaitLabel.text! += ("========= This is the end of turn N°\(turn)==========")
                    
                
              }
           
    }
//func caseRollingDice(){
//    switch caseRollingDice () {
//    case 1...9 :
//        var ruselt = playerbossDefenase - playerheroPowerDamage
//        if ruselt >= 0 { ruselt = 0
//
//        }
//
//        playerbosslifePoint -= ruselt
//
//
//               func zeroLifePoint(){
////
//            if playerboss!.lifePoint < 0 {
//                playerboss!.lifePoint = 0
//            } else if playerhero!.lifePoint < 0 {
//                playerhero!.lifePoint = 0
//                   }
//        }
        
//
//
//               WinnersIs (Hero: playerhero!, Boss: playerboss!)
////
//               labelHeroLP.text = "\(playerhero!.lifePoint!)”
////
//               labelBossLP.text = "\(playerboss!.lifePoint!)"
////
//               nameBoss.text = playerboss?.name!
//               labelBossDF.text = "\(playerboss!.defenase)"
//               labelBossPD.text = "\(playerboss!.powerDamage)"
//               labelBossWD.text = "\(playerboss!.weaponDamage)"
////
////
//               }
//               func WinnersIs (Hero: Heros, Boss: Heros) {
//                 if (playerhero?.lifePoint ?? 0) <= 0 {
//                   whaitLabel.text += ("The Winner is : \((String)(describing: playerboss!.name!)) at turn \(turn)“)
//                   winner = true
//                 }
//                 if ((playerboss?.lifePoint)! <= 0) {
//                   whaitLabel.text += ("The winner is :\(playerhero!.name!) at turn \(turn)“)
//                   winner = true
//                 }
//               }

@IBAction func nextView(_ sender: Any) {
                   }

@IBAction func goahead (segue: UIStoryboardSegue){
     }
            func bossRandom ( ) {
                                           
        var i = Int.random(in: 1...2)
           switch i {
        case 1:
        nameBoss.text = "boss1"
    labelBossLP.text = String(boss1.lifePoint)

    labelBossDF.text = String(boss1.defenase)
               
  labelBossPD.text=String(boss1.powerDamage)
            
   labelBossWD.text = String(boss1.weaponDamage)
            
    labelBossSC.text = String (boss1.specialCapacity)
               
               
               
                                               
           case 2:
               nameBoss.text = "boss2"
               labelBossLP.text = String(boss2.lifePoint)

               labelBossDF.text = String(boss2.defenase)
                          
             labelBossPD.text=String(boss2.powerDamage)
                       
              labelBossWD.text = String(boss2.weaponDamage)
                       
               labelBossSC.text = String (boss2.specialCapacity)
               
               
           default:
               
                print("Error")
                                               
                                       }
      }
                   }

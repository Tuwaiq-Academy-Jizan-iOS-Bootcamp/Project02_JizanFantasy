//
//  ViewController.swift
//  BushraBarakat_Project02
//
//  Created by Bushra Barakat on 27/03/1443 AH.
//

import UIKit

struct Boss {
    var name : String
    var lifePoint : Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var spcialCapacity : Int
    var specialPd : Int
    var specialWd : Int
    var specialLp : Int
 
    }


struct Hero {
    var name : String
    var lifePoint : Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var specialCapacity : Int
    var specialPd : Int
    var specialWd : Int
    var specialLp : Int
    
}



class ViewController: UIViewController {
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var labelHero1: UILabel!
    @IBOutlet weak var labelHero2: UILabel!
    @IBOutlet weak var labelHero3: UILabel!
    @IBOutlet weak var labelHero4: UILabel!
    @IBOutlet weak var labelHero5: UILabel!
    @IBOutlet weak var resultRollingDice: UILabel!
    @IBOutlet weak var nameBoss: UILabel!
    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var heroImage2: UIImageView!
    @IBOutlet weak var bossImage: UIImageView!
    @IBOutlet weak var descripationGame: UILabel!
    
var boss1 = Boss(name: "boos1", lifePoint: 250, defense: 30, powerDamage:20, weaponDamage: 45, spcialCapacity: 110, specialPd: 0, specialWd: 22, specialLp: 5)
var boss2 = Boss(name: "boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, spcialCapacity: 75, specialPd: 32, specialWd: 0, specialLp: 5)

var hero = Hero(name: "" ,lifePoint: 0, defense: 0, powerDamage: 0, weaponDamage: 0, specialCapacity: 0, specialPd: 0, specialWd: 0, specialLp: 0)
    var turn = true
    var number = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        randomBoss()
        logicOfGame()
        
    }
    func randomBoss(){
    let conect = Int.random(in:1...2)
    switch conect {
    case 1:
        nameBoss.text = ("Boss1")
        bossImage.image = UIImage(named: "bossImage1")
        label1.text = String (boss1.lifePoint)
        label2.text = String (boss1.defense)
        label3.text = String (boss1.powerDamage)
        label4.text = String (boss1.weaponDamage)
        label5.text = String (boss1.spcialCapacity)
    case 2:
        nameBoss.text = ("Boss2")
        bossImage.image = UIImage(named: "bossImage2")
        label1.text = String (boss2.lifePoint)
        label2.text = String (boss2.defense)
        label3.text = String (boss2.powerDamage)
        label4.text = String (boss2.weaponDamage)
        label5.text = String (boss2.spcialCapacity)
        
    default:
       print  ("no number")
    }
    }
    
    
func logicOfGame() {
    var bossLp = Int(label1.text!)!
    var bossDf = Int(label2.text!)!
    var bossPd = Int(label3.text!)!
    var bossWd = Int(label4.text!)!
    var bossSc = Int(label5.text!)!
    var heroLp = Int(labelHero1.text!)!
    var heroDf = Int(labelHero2.text!)!
    var heroPd = Int(labelHero3.text!)!
    var heroWd = Int(labelHero4.text!)!
    var heroSc = Int(labelHero5.text!)!
    let heroRandomDice = Int.random(in:1...20)
    switch heroRandomDice {
    case 1...9:
        if (heroRandomDice % 2 == 0){
        descripationGame.text = ("hero use his power damage aginst boss")
        heroPd -= bossDf
        if heroPd < 0 {
           heroPd = 0
        }else{
            bossLp -= heroPd
            if bossLp < 0 {
               bossLp = 0
         descripationGame.text = ("boss life point = \(bossLp)")
            }
        }
        }else {
        descripationGame.text = ("boss use his power damage aginst hero")
                bossPd -= heroDf
                   if bossPd < 0 {
                       bossPd = 0
                   }else{
                heroLp -= bossPd
                    if heroLp < 0 {
                        heroLp = 0}
                        
                   }
            descripationGame.text = ("hero life point = \(heroLp)")
                    }
                
    case 10...19:
    if (heroRandomDice % 2 == 0){
        descripationGame.text = ("hero use his weapon Damage aginst boss")
       heroWd -= bossDf
        if heroWd < 0 {
           heroWd = 0
        }else {
              bossLp -= heroWd
               if bossLp < 0 {
                  bossLp = 0
            }
        }
        descripationGame.text = ("boss life point = \(bossLp)")
        
    }else {
         descripationGame.text = ("boss use his weapon Damage aginst hero")
           bossWd -= heroDf
            if bossWd < 0 {
                bossWd = 0
            }else {
                heroLp -= bossWd
               if heroLp < 0 {
                    heroLp = 0
         
                }
            }
    }
    descripationGame.text = ("hero life point = \(heroLp)")
    case 20 :
        print ("sc")
        
        
        default:
            print ("game over")
        }
//    case 20:
//        print ("special Capacity")
//
//
       
        
        
  
        
//func bossTurn(){
//    var bossLp = Int(label1.text!)!
//    var bossDf = Int(label2.text!)!
//    var bossPd = Int(label3.text!)!
//    var bossWd = Int(label4.text!)!
//    var bossSc = Int(label5.text!)!
//    var heroLp = Int(labelHero1.text!)!
//    var heroDf = Int(labelHero2.text!)!
//    var heroPd = Int(labelHero3.text!)!
//    var heroWd = Int(labelHero4.text!)!
//    var heroSc = Int(labelHero5.text!)!
//    let bossRandomDice =  Int.random(in:1...20)
//    if (bossRandomDice % 2 == 0){
//    switch bossRandomDice {
//    case 1...9:
//        descripationGame.text = ("boss use his power damage aginst hero")
//        bossPd -= heroDf
//        heroLp -= bossPd
//           if bossPd < 0 {
//               bossPd = 0
//           }else{
//        heroLp -= bossPd
//            if heroLp < 0 {
//                heroLp = 0
//               }
//
//           }
//
        
//    case 10...19:
//        descripationGame.text = ("boss use his weapon Damage aginst hero")
//       bossWd -= heroDf
//        heroLp -= bossWd
//        if bossWd < 0 {
//            bossWd = 0
//        }else {
//            heroLp -= bossWd
//           if heroLp < 0 {
//                heroLp = 0
//            }
//
//        }
//
//    case 20:
//        print ("special Capacity")
//
//
//         default:
//            print ("game over")
//         }
//    }
//}
    
//    func specialCapacity(){
//        if number == 1{
        
//    }

    
    
    
    
    
    
}
    
//    func specialCapacity(){
//        if number == 
//            
//        }
    
    
    
    @IBAction func rollingDice(_ sender: Any) {
      let random = Int.random(in:1...20)
       resultRollingDice.text = String (random)
       logicOfGame()
//
   }
        
    
    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }



}

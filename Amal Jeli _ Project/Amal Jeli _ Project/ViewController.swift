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
    }
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
        }
            func attackWithWeapon() {
                print("The Hero use \(name) weapon and inflict \(powerDamage + defenase)")
            }
        }
        
    
    
    
        class ViewController: UIViewController {

            
            
            @IBOutlet weak var deslabel: UILabel!
            @IBOutlet weak var veiwDes: UITextView!
            @IBOutlet weak var labelHeroLP: UILabel!
            @IBOutlet weak var labelHeroDF: UILabel!
            @IBOutlet weak var labelHeroPD: UILabel!
            @IBOutlet weak var LabelHeroWD: UILabel!
            @IBOutlet weak var labelHeroSC: UILabel!


            
            
            
            @IBOutlet weak var nuDisplay: UILabel!
            @IBOutlet weak var labelBossLP: UILabel!
            @IBOutlet weak var labelBossDF: UILabel!
            @IBOutlet weak var labelBossPD: UILabel!
            @IBOutlet weak var labelBossWD: UILabel!
            @IBOutlet weak var labelBossSC: UILabel!
           
            @IBOutlet weak var imageHero: UIImageView!
            @IBOutlet weak var imageBoss: UIImageView!
            
//
//            var turn: Int = 0
//            var winner = false

        
var knight = Hero.init(name: "knight", lifepoint: 60, defenase: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100)
var Wizard = Hero.init(name: "wizard", lifepoint: 90, defenase: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50)
var Thief = Hero.init(name: "Thief", lifepoint: 65, defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
var boss1 = Hero.init(name: "boss1", lifepoint: 250, defenase: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
 var boss2 = Hero.init(name: "boss2", lifepoint: 170, defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
            
        override func viewDidLoad() {
            super.viewDidLoad()
            diceRollButton ()
            bossRandom ()
        }
        
            
            @IBAction func diceRollButton(_ sender: Any) {
                nuDisplay.text =
                String(Int.random(in:1...20))
                diceRollButton()
                
            }

            
                        
func  diceRollButton (){
    
let Display:Int = .random(in: 0...20)
                            
  switch Display {
  case 1...9:
  nuDisplay.text = String(Display)
  deslabel.text = "powerDamge"
  print("powerDamge")
  case 10...19:
  nuDisplay.text = String(Display)
   deslabel.text = "weaponDamage"
   print("weaponDamage")
   case 20:
  nuDisplay.text = String(Display)
  deslabel.text = "specialCapacity"
  print("specialCapcity")
  default : print(0)
      print("Error")
      
                            }
    
                            
                            
                        
 }
            func bossRandom () {
                let boss = Int.random(in: 1...2)
                switch boss {
                case 1:
                    imageBoss.image = UIImage(named: "boss1")
                    labelBossLP.text = String(boss1.lifePoint)
                    labelBossDF.text = String(boss1.defenase)
                    labelBossPD.text = String (boss1.powerDamage)
                    labelBossWD.text = String(boss1.weaponDamage)
                    labelBossSC.text = String(boss1.specialCapacity)
                    
                case 2:
                    imageBoss.image = UIImage(named: "boss2")
                    labelBossLP.text = String(boss2.lifePoint)
                    labelBossDF.text = String(boss2.defenase)
                    labelBossPD.text = String (boss2.powerDamage)
                    labelBossWD.text = String(boss2.weaponDamage)
                    labelBossSC.text = String(boss2.specialCapacity)
                    
                    
                    
                default:
                    print("Error")
                }
            }
            
            @IBAction func reButton (segue:UIStoryboardSegue){
                
            }
 }
                

            

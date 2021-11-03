//
//  ViewController.swift
//  Project02
//
//  Created by NoON .. on 28/03/1443 AH.
//

import UIKit
class Hero{
    var name: String
    var LifePoint: Int
    var Defense:Int
    var PowerDamage:Int
    var WeaponDamage:Int
    var SpecialCapacity:Int
    init (name:String,LifePoint:Int,Defense:Int,PowerDamage:Int,WeaponDamage:Int,SpecialCapacity:Int){
        self.name = name
        self.LifePoint = LifePoint
        self.Defense = Defense
        self.PowerDamage = PowerDamage
        self.WeaponDamage = WeaponDamage
        self.SpecialCapacity = SpecialCapacity
    }
    
}

class Boss{
    var name: String
    var LifePoint: Int
    var Defense:Int
    var PowerDamage:Int
    var WeaponDamage:Int
    var SpecialCapacity:Int
    init (name:String,LifePoint:Int,Defense:Int,PowerDamage:Int,WeaponDamage:Int,SpecialCapacity:Int){
        self.name = name
        self.LifePoint = LifePoint
        self.Defense = Defense
        self.PowerDamage = PowerDamage
        self.WeaponDamage = WeaponDamage
        self.SpecialCapacity = SpecialCapacity
        
    }
}
class ViewController: UIViewController {
    
    @IBOutlet weak var Player1: UILabel!
    @IBOutlet weak var PlayerLP1: UILabel!
    @IBOutlet weak var PlayerDF1: UILabel!
    @IBOutlet weak var PlayerPD1: UILabel!
    @IBOutlet weak var PlayerWD1: UILabel!
    @IBOutlet weak var PlayerSC1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var PlayerLP2: UILabel!
    @IBOutlet weak var PlayerDF2: UILabel!
    @IBOutlet weak var PlayerPD2: UILabel!
    @IBOutlet weak var PlayerWD2: UILabel!
    @IBOutlet weak var PlayerSC2: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var resultDice: UILabel!
    @IBOutlet weak var ImageBoss: UIImageView!
    
    
    var knight = Hero(name: "knight", LifePoint: 250, Defense: 20, PowerDamage: 30, WeaponDamage: 40, SpecialCapacity:100)
    var wizard = Hero(name: "wizard", LifePoint: 245, Defense: 15, PowerDamage: 70, WeaponDamage: 20, SpecialCapacity:50)
    var thief = Hero(name: "thief", LifePoint: 210, Defense: 25, PowerDamage: 15, WeaponDamage: 30, SpecialCapacity:75)
    var boss1 = Boss(name: "boss1", LifePoint: 250, Defense: 30, PowerDamage: 20, WeaponDamage: 45, SpecialCapacity:110)
    var boss2 = Boss(name: "boss2", LifePoint: 170, Defense: 25, PowerDamage: 15, WeaponDamage: 30, SpecialCapacity:75)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        func roll() {
            let reules: Int = .random(in: 1...20)
            switch reules {
            case 1...9:
                Description.text = "Power Damage"
                resultDice.text
                print("Power Damage")
            case 10...19:
                Description.text = "Weapon Damage"
                resultDice.text
                print("Weapon Damage")
            case 20:
                Description.text = "Spécial Capacity"
                resultDice.text
                print("Spécial Capacity")
            default:
                print("Geam Over  !!!")
            }
        }
        
        func DefenseKnight(){
        }
        func PowerDamageKnight(){
        }
        func WeaponDamageKnight(){
        }
        func Defensewizard(){
        }
        func PowerDamagewizard(){
        }
        func WeaponDamagewizard(){
        }
        func bossRandom(){
            let i =  Int.random(in: 1...2)
            switch i {
            case 1:
                ImageBoss.image = UIImage(named: "imageOne")
                boss1.LifePoint = Int(PlayerLP1.text!)!
                boss1.Defense = Int(PlayerDF1.text!)!
                boss1.PowerDamage = Int(PlayerPD1.text!)!
                boss1.WeaponDamage = Int(PlayerWD1.text!)!
                boss1.SpecialCapacity = Int(PlayerSC1.text!)!
                case 2:
                ImageBoss.image = UIImage(named: "imageTwo")
                boss2.LifePoint = Int(PlayerLP1.text!)!
                boss2.Defense = Int(PlayerDF1.text!)!
                boss2.PowerDamage = Int(PlayerPD1.text!)!
                boss2.WeaponDamage = Int(PlayerWD1.text!)!
                boss2.SpecialCapacity = Int(PlayerSC1.text!)!
            default:
                print(0)
            }
        }
    
        @IBAction func RollingDice(_ sender: Any) {
            roll()
            bossRandom()
        }
    @IBAction func
             unwindToRootViewController(segue: UIStoryboardSegue){
                print("Unwind to Root View Controller")
            }
         }

     

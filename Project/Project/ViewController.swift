//
//  ViewController.swift
//  Project
//
//  Created by Ahlam Ahlam on 28/03/1443 AH.
//

import UIKit

class Hero
{
    var Name :String
    var LifePoint :Int
    var Defense :Int
    var PowerDamage :Int
    var Weapon :Int
    var SpecialCapacity :Int
    init(Name:String,LifePoint:Int,Defense:Int,PowerDamage:Int, Weapon:Int,SpecialCapacity:Int)
{
    self.Name = Name
    self.LifePoint = LifePoint
    self.Defense = Defense
    self.PowerDamage = PowerDamage
    self.Weapon = Weapon
    self.SpecialCapacity = SpecialCapacity

}
}
class Boss
{
    var Name :String
    var LifePoint :Int
    var Defense :Int
    var PowerDamage :Int
    var Weapon :Int
    var SpecialCapacity :Int
    init(Name:String,LifePoint:Int,Defense:Int,PowerDamage:Int, Weapon:Int,SpecialCapacity:Int)
{
    self.Name = Name
    self.LifePoint = LifePoint
    self.Defense = Defense
    self.PowerDamage = PowerDamage
    self.Weapon = Weapon
    self.SpecialCapacity = SpecialCapacity

}
}
var Knight = Hero.init(Name:"Knight", LifePoint:60, Defense: 20, PowerDamage: 30, Weapon:40, SpecialCapacity:100)
var Wizard = Hero.init(Name:"Wizard",LifePoint: 90, Defense: 15, PowerDamage: 70, Weapon: 20, SpecialCapacity: 50)
var Thief = Hero.init(Name:"Thief",LifePoint: 56, Defense: 25, PowerDamage: 15, Weapon: 30, SpecialCapacity: 75)
var Boss1 = Boss.init(Name: "Boss1", LifePoint: 250, Defense: 30, PowerDamage: 20, Weapon: 45, SpecialCapacity: 110)
var Boss2 = Boss.init(Name: "Boss2", LifePoint: 170, Defense: 25, PowerDamage: 15, Weapon: 30, SpecialCapacity: 75)
var dead = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var numberDice: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var BossImage: UIImageView!
    @IBOutlet weak var LifePointBoss: UILabel!
    @IBOutlet weak var DefinseBoss: UILabel!
    @IBOutlet weak var PowerDamgeBoss: UILabel!
    @IBOutlet weak var WeaponDamgeBoss: UILabel!
    
    @IBOutlet weak var SpecialCapacity: UILabel!
    
    @IBOutlet var HeroImage: UIImageView!
    
    @IBAction func rolling(_ sender: Any) {
        dice()
    }
    @IBAction func unwindToRootViewController(seque:UIStoryboardSegue){
       print("unwind to Root View Controller")
   }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let Boss = Int.random(in: 1...2)
        if Boss == 1{BossImage.image = UIImage(named:"Boss1")
            LifePointBoss.text = String(Boss1.LifePoint)
            DefinseBoss.text = String(Boss1.Defense)
            PowerDamgeBoss.text = String(Boss1.PowerDamage)
            WeaponDamgeBoss.text = String(Boss1.PowerDamage)
            SpecialCapacity.text = String(Boss1.SpecialCapacity)
        } else{BossImage.image = UIImage(named: "Boss2")
            LifePointBoss.text = String(Boss2.LifePoint)
            DefinseBoss.text = String(Boss2.Defense)
            PowerDamgeBoss.text = String(Boss2.PowerDamage)
            WeaponDamgeBoss.text = String(Boss2.PowerDamage)
           SpecialCapacity.text = String(Boss2.SpecialCapacity)
        
    }
    }
    
    func dice() {
        let result:Int = .random(in: 1...20)
        switch result{
        case 1...9:
            textLabel.text = "Power Damag"
            print("Power Damage")
        case 10...19 :
            textLabel.text = "Weapon Damgage"
            print("Weapon Damgage")
        case 20:
            textLabel.text = "Special Capacity"
            print("Special Capacity")
        default: print ("Finally Game 🤑🤑🤑🤑🤑🤑🤑")
            
        }
        
    }
    func DefenseKnight(){
    }
    func PowerDamageKnight(){
     }
    func WeaponDamageKnight(){
    }
    func DefenseWizard(){
    }
    func PowerDamageWizard(){
    }
    func WeaponDamageWizard(){
    }
        
    }
    

    




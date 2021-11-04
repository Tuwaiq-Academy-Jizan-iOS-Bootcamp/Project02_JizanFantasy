//
//  ViewController.swift
//  Project02
//
//  Created by NoON .. on 28/03/1443 AH.
//

import UIKit
class Hero {
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

class ViewController: UIViewController{
    
    
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
    
    @IBOutlet weak var imagePlayer2: UIImageView!
    
    
    var knight = Hero(name: "knight", LifePoint: 250, Defense: 20, PowerDamage: 30, WeaponDamage: 40, SpecialCapacity:100)
    var wizard = Hero(name: "wizard", LifePoint: 245, Defense: 15, PowerDamage: 70, WeaponDamage: 20, SpecialCapacity:50)
    var thief = Hero(name: "thief", LifePoint: 210, Defense: 25, PowerDamage: 15, WeaponDamage: 30, SpecialCapacity:75)
    var boss1 = Boss(name: "boss1", LifePoint: 250, Defense: 30, PowerDamage: 20, WeaponDamage: 45, SpecialCapacity:110)
    var boss2 = Boss(name: "boss2", LifePoint: 170, Defense: 25, PowerDamage: 15, WeaponDamage: 30, SpecialCapacity:75)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        roll()
        bossRandom()
    }
    func roll() {
       var bossLP = Int(PlayerLP1.text!)
        var bossDF = Int(PlayerDF1.text!)
        var bossPD = Int(PlayerPD1.text!)
        var bossWD = Int(PlayerWD1.text!)
        var bossSC = Int(PlayerSC1.text!)
        
        var heroLP = Int(PlayerLP1.text!)
         var heroDF = Int(PlayerDF1.text!)
         var heroPD = Int(PlayerPD1.text!)
         var heroWD = Int(PlayerWD1.text!)
         var heroSC = Int(PlayerSC1.text!)
        
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
        let Boss =  Int.random(in: 1...2)
        switch Boss {
        case 1:
            ImageBoss.image = UIImage(named: "imageOne")
            Player1.text = String(boss1.name)
            PlayerLP1.text = String(boss1.LifePoint)
            PlayerDF1.text = String(boss1.Defense )
            PlayerPD1.text = String(boss1.PowerDamage)
            PlayerWD1.text = String(boss1.WeaponDamage)
            PlayerSC1.text = String(boss1.SpecialCapacity)
            
        case 2:
            ImageBoss.image = UIImage(named: "imageTwo")
            Player1.text = String(boss2.name)
            PlayerLP1.text = String(boss2.LifePoint)
            PlayerDF1.text = String(boss2.Defense)
            PlayerPD1.text = String(boss2.PowerDamage)
            PlayerWD1.text = String(boss2.WeaponDamage)
            PlayerSC1.text = String(boss2.SpecialCapacity)
            
        default:
            print(0)
        }
    }
    
    @IBAction func RollingDice(_ sender: Any) {
        resultDice.text = String(Int.random(in:1...20))
        roll()
    }
    @IBAction func
    unwindToRootViewController(segue: UIStoryboardSegue){
        print("Unwind to Root View Controller")
    }
}


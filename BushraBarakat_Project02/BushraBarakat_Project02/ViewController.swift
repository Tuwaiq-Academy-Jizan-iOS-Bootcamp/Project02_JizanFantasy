//
//  ViewController.swift
//  BushraBarakat_Project02
//
//  Created by Bushra Barakat on 27/03/1443 AH.
//

import UIKit
//struct Heros {
//    var lifePoint : Int?
//    var defense : Int?
//    var powerDamage : Int?
//    var weaponDamage : Int?
//    var specialCapacity : Int
//
//    }

struct Boss {
    var lifePoint : Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var spcialCapacity : Int
    func specialCapacity() {
        print ("\(lifePoint) & \(powerDamage)")
    }
}

struct Hero {
    var lifePoint : Int?
    var defense : Int?
    var powerDamage : Int?
    var weaponDamage : Int?
    var specialCapacity : Int?
    
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
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        randomBoss()
       
        
    }
        
    var boss1 = Boss(lifePoint: 250, defense: 30, powerDamage:20, weaponDamage: 45, spcialCapacity: 110)
    var boss2 = Boss(lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, spcialCapacity: 75)
    
    var knight = Hero(lifePoint: nil, defense: nil, powerDamage: nil, weaponDamage: nil, specialCapacity: nil)
    var wizerd = Hero(lifePoint: nil, defense: nil, powerDamage: nil, weaponDamage: nil, specialCapacity: nil)
    var thief = Hero(lifePoint: nil, defense: nil, powerDamage: nil, weaponDamage: nil, specialCapacity: nil)
    
    var dead = 0
    
    
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
    
    
func rollingDice(){
    let randomDice = Int.random(in:1...20)
    switch randomDice{

    case 1...9:
        resultRollingDice.text = ""
    case 10...19:
        resultRollingDice.text = ""
        print ("weapon Damage")
    case 20:
        resultRollingDice.text = ""
        print ("special Capacity")
    default:
        print ("nothing")
    }
}

   @IBAction func rollingDice(_ sender: Any) {
      var random = Int.random(in:1...20)
       resultRollingDice.text = String (random)

       
   }


    
    
   @IBAction func unwind(segue: UIStoryboardSegue){
    }

}

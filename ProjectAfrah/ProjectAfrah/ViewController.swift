//
//  ViewController.swift
//  kk
//
//  Created by Afrah Omar on 28/03/1443 AH.
//

import UIKit

struct Boss{
    var name : String
    var lifePoint : Int
    var defense : Int
    var PowerDamage : Int
    var weaponDamage : Int
    var specialCapacity : Int
    var image : String
}
    
    struct Hero  {
        var name : String
        var lifePoint : Int
        var defense : Int
        var PowerDamage : Int
        var weaponDamage : Int
        var specialCapacity : Int
        var image : String
        }

class ViewController: UIViewController {
    
    @IBOutlet weak var textDescrabtion: UILabel!
    @IBOutlet weak var labelBossPoints: UILabel!
    @IBOutlet weak var labelBossDF: UILabel!
    @IBOutlet weak var labelBossPD: UILabel!
    @IBOutlet weak var labelBossWD: UILabel!
    @IBOutlet weak var labelBossSC: UILabel!
    @IBOutlet weak var nameboss: UILabel!
    @IBOutlet weak var nameHero: UILabel!
    
    @IBOutlet weak var labelBossLP: UILabel!
    @IBOutlet weak var labelHeropoints: UILabel!
    @IBOutlet weak var labelHeroLP: UILabel!
    @IBOutlet weak var labelHeroDF: UILabel!
    @IBOutlet weak var labelHeroPD: UILabel!
    @IBOutlet weak var labelHeroWD: UILabel!
    @IBOutlet weak var labelHeroSC: UILabel!
    
//    @IBOutlet weak var numberdice: UILabel!
//    var i = Int.random(in: 1...20)
//    numberdice.text = String(i)
    
    @IBOutlet weak var imageBoss: UIImageView!
    @IBOutlet weak var imageHero: UIImageView!
    
//
//    let dices = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
//    var boss1 = Boss(name: "Boss1", lifePoint: 250, defense: 30, PowerDamage: 20, weaponDamage: 45, specialCapacity: 110)
//        var boss2 = Boss(name: "Boss2", lifePoint: 170, defense: 25, PowerDamage: 15, weaponDamage: 30,specialCapacity: 75)
//    var hero = Hero(name: "", lifePoint:0, defense: 22, PowerDamage: 0, weaponDamage: 0, specialCapacity: 0)

   let dices = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

   var hero = Hero(name: "Knight", lifePoint: 200, defense: 20, PowerDamage: 55, weaponDamage: 20, specialCapacity: 100 , image: "Knight")
    let bosses = [Boss(name: "boss1", lifePoint: 250, defense: 15, PowerDamage: 33, weaponDamage: 30, specialCapacity: 75, image: "boss1"),Boss(name: "boss2", lifePoint: 170, defense: 25, PowerDamage: 15, weaponDamage: 30, specialCapacity: 75, image: "boss2")]
   var boss: Boss!
    override func viewDidLoad() {
     
        super.viewDidLoad()
       boss = bosses.randomElement()!
       imageBoss.image = UIImage(named: "boss1")
        nameboss.text = boss.name
       labelBossLP.text = String(boss.lifePoint)
       labelBossDF.text = String(boss.defense)
        labelBossPD.text = String(boss.PowerDamage)
       labelDice.text = String(boss.weaponDamage)
        labelBossSC.text = String(boss.specialCapacity)
        
        imageHero.image = UIImage(named: "boss1")
        nameHero.text = hero.name
        labelHeroLP.text = String(hero.lifePoint)
        labelHeroDF.text = String(hero.defense)
         labelHeroPD.text = String(hero.PowerDamage)
        labelDice.text = String(hero.weaponDamage)
         labelHeroSC.text = String(hero.specialCapacity)
        
    bossRandom()
        rollingDice()

    }
    @IBAction func
      RootViewContrller(segue: UIStoryboardSegue) {
    }
    
    @IBOutlet weak var labelDice: UILabel!
    @IBAction func buttonAcation(_ sender: Any) {
        let r = Int.random(in: 1...20)
        labelDice.text = String(r)
//        performSegue(withIdentifier: "VC2", sender: self)
   }
//
    
    
    func rollingDice() {
//      var lifB = Int(labelBossLD.text!)
////
        let dice = Int.random(in: 1...20)
        switch dice {
        case 1...9:
            
//            numberdice.text = String(dice)
            labelDice.text = "PowerDemage"
            print("PowerDemage")
        case 10...19:
//            numberdice.text = String(dice)
            labelDice.text = "WeaponDamage"
            print("WeaponDamage")
        case 20:
//            numberdice.text = String(dice)
            labelDice.text = "speecialcapacity"
            print("speecialcapacity")
        default:
print("Error")
            
        }
    }
    func bossRandom() {
    if hero.lifePoint >= 0 && boss.lifePoint >= 0 {
        bossTurn()
        heroTurn()
    }else{
        if hero.lifePoint <= 0 {
            print("hero dead")
        }else if boss.lifePoint <= 0 {
            print("boss dead")
        }else{
            print("Error")
            
        }
    }
    }
    func bossTurn() {
        let diceBoss = dices.randomElement()!
        
        print("Dice for boss number is : \(diceBoss)")
        print("it's the boss turn!")
        if diceBoss >= 1 && diceBoss <= 9 {
            if boss.lifePoint - hero.defense > 0 {
                print("Power Damager")
                print("hero health \(hero.lifePoint)")
                hero.lifePoint -= boss.PowerDamage - hero.defense
            }else{
                print("defence")
            }
        }else if diceBoss == 20 {
            print("special capacity damage")
        }
    }
    func heroTurn() {
        
    
//         var boss = Int.random(in: 1...2)
//        switch boss {
//           case 1:
//            imageBoss.image = UIImage(named: "boss2")
//             labelBossLP.text = String(boss1.lifePoint)
//             labelBossDF.text = String(boss1.defense)
//             labelBossPD.text = String(boss1.PowerDamage)
//             labelBossWD.text = String(boss1.weaponDamage)
//             labelBossSC.text = String(boss1.specialCapacity)
//
//           case 2:
//              imageBoss.image = UIImage(named: "boss1")
//              labelBossLP.text = String(boss2.lifePoint)
//             labelBossDF.text = String(boss2.defense)
//             labelBossPD.text = String(boss2.PowerDamage)
//              labelBossWD.text = String(boss2.weaponDamage)
//             labelBossSC.text = String(boss2.specialCapacity)
//
//          default:
//               print("Error")
//         }
//
//     }
//
//}
    }
}

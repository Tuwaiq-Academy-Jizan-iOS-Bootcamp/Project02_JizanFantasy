//
//  ViewController.swift
//  kk
//
//  Created by Afrah Omar on 28/03/1443 AH.
//

import UIKit

struct Bosses{
    var name : String
    var lifePoint : Int
    var defense : Int
    var PowerDamage : Int
    var weaponDamage : Int
    var specialCapacity : Int
//    var image : String
}
    
    struct Hero  {
        var name : String?
        var lifePoint : Int?
        var defense : Int?
        var PowerDamage : Int?
        var weaponDamage : Int?
        var specialCapacity : Int?
//        var image: String?
    }


class ViewController: UIViewController {
    
    @IBOutlet weak var textDescrabtion: UILabel!
    @IBOutlet weak var labelBossPoints: UILabel!
    @IBOutlet weak var labelBossLD: UILabel!
    @IBOutlet weak var labelBossDF: UILabel!
    @IBOutlet weak var labelBossPD: UILabel!
    @IBOutlet weak var labelBossWD: UILabel!
    @IBOutlet weak var labelBossSC: UILabel!
    
    @IBOutlet weak var labelHeropoints: UILabel!
    @IBOutlet weak var labelHeroLP: UILabel!
    @IBOutlet weak var labelHeroDF: UILabel!
    @IBOutlet weak var labelHeroPD: UILabel!
    @IBOutlet weak var labelHeroWD: UILabel!
    @IBOutlet weak var labelHeroSC: UILabel!
    
    @IBOutlet weak var imageBoss: UIImageView!
    @IBOutlet weak var imageHero: UIImageView!
    
  
//    let dices = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    var boss1 = Bosses(name: "Boss1", lifePoint: 250, defense: 30, PowerDamage: 20, weaponDamage: 45, specialCapacity: 110)
    var boss2 = Bosses(name: "Boss2", lifePoint: 170, defense: 25, PowerDamage: 15, weaponDamage: 30, specialCapacity: 75)
    var hero = Hero(name: <#T##String?#>, lifePoint: <#T##Int?#>, defense: <#T##Int?#>, PowerDamage: <#T##Int?#>, weaponDamage: <#T##Int?#>, specialCapacity: <#T##Int?#>)
    override func viewDidLoad() {
     
        super.viewDidLoad()

    }
    @IBAction func
      RootViewContrller(segue: UIStoryboardSegue) {
    }
    @IBAction func buttonAcation(_ sender: Any) {
//        performSegue(withIdentifier: "VC2", sender: self)
//    }
//
    
    
    func rollingDice() {
        let dice = Int.random(in: 1...20)
        switch dice {
        case 1...9:
            textDescrabtion.text = "PowerDemage"
            print("PowerDemage")
        case 10...19:
            textDescrabtion.text = "WeaponDamage"
            print("WeaponDamage")
        case 20:
            textDescrabtion.text = "speecialcapacity"
            print("speecialcapacity")
        default:

            print("Error")



        }
        
    }
       func bossRandom(){

            let boss = Int.random(in: 1...2)
          switch boss {
            case 1:
//               boss1.imageBoss = UIImageView(named: boss1)!
               boss1.lifePoint = Int(labelBossLD.text!)!
              boss1.defense = Int(labelBossDF.text!)!
                boss1.PowerDamage = Int(labelBossPD.text!)!
               boss1.weaponDamage = Int(labelBossWD.text!)!
                boss1.specialCapacity = Int(labelBossSC.text!)!
           case 2:
//              boss2.imageBoss = UIImageView(named: boss1)!
              boss2.lifePoint = Int(labelBossLD.text!)!
               boss2.defense = Int(labelBossDF.text!)!
              boss2.PowerDamage = Int(labelBossPD.text!)!
               boss2.weaponDamage = Int(labelBossWD.text!)!
               boss2.specialCapacity = Int(labelBossSC.text!)!
           default:
               print("Error")
        
          }
    }
}


//
//  ViewController.swift
//  
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
    
    // Labels for Boss
    
    @IBOutlet weak var labelBossPoints: UILabel!
    @IBOutlet weak var labelBossLP: UILabel!
    @IBOutlet weak var labelBossDF: UILabel!
    @IBOutlet weak var labelBossPD: UILabel!
    @IBOutlet weak var labelBossWD: UILabel!
    @IBOutlet weak var labelBossSC: UILabel!
    @IBOutlet weak var nameboss: UILabel!
    
    // Labels for Hero ..
    
    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var labelHeropoints: UILabel!
    @IBOutlet weak var labelHeroLP: UILabel!
    @IBOutlet weak var labelHeroDF: UILabel!
    @IBOutlet weak var labelHeroPD: UILabel!
    @IBOutlet weak var labelHeroWD: UILabel!
    @IBOutlet weak var labelHeroSC: UILabel!
    
    @IBOutlet weak var imageBoss: UIImageView!
    @IBOutlet weak var imageHero: UIImageView!
    
    // Variabels & let for Boss & Hero..
    
    let dices = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    var hero = Hero(name: "", lifePoint: 90 , defense: 20 , PowerDamage: 30 , weaponDamage: 40 , specialCapacity: 100 , image: "")
    
    // Hero 1:  Name: Knight , (Points to dispatch : 250 , -> LP , DF , PD , WD , SC)
    // Hero 2:  Name: Wizard , (Points to dispatch : 245 , -> LP , DF , PD , WD , SC)
    // Hero 3:  Name: Thief , (Points to dispatch : 210 , -> LP , DF , PD , WD , SC)
    
    let bosses = [Boss(name: "Eila", lifePoint: 250, defense: 30, PowerDamage: 20, weaponDamage: 45 , specialCapacity: 75, image: "boos1"),Boss(name: "Leon", lifePoint: 170, defense: 25, PowerDamage: 15, weaponDamage: 30, specialCapacity: 75, image: "boss2")]
    var boss: Boss!
    
       // Var for The Winner & Turn ...
    

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  Element for Boss ...
        
       boss = bosses.randomElement()!
        imageBoss.image = UIImage(named: boss.image)
        nameboss.text = boss.name
       labelBossLP.text = String(boss.lifePoint)
       labelBossDF.text = String(boss.defense)
        labelBossPD.text = String(boss.PowerDamage)
       labelBossWD.text = String(boss.weaponDamage)
        labelBossSC.text = String(boss.specialCapacity)
        
        // Element for Hero ...
        
//        imageHero.image = UIImage(named: hero.image)
//        nameHero.text = hero.name
//        labelHeroLP.text = String(hero.lifePoint)
//        labelHeroDF.text = String(hero.defense)
//         labelHeroPD.text = String(hero.PowerDamage)
//        labelHeroWD.text = String(hero.weaponDamage)
//         labelHeroSC.text = String(hero.specialCapacity)
    }
    @IBAction func RootViewContrller(segue: UIStoryboardSegue) {
    }

    var winner = false
    var turn = 0
    var pressButton = false
    var number = 0
    var Damage = 0
    var Points = 0
    var useSpecialapaCityHero = false
    
    
    @IBOutlet weak var labelDice: UILabel!
    

    @IBOutlet weak var deci: UITextView!

    // The logic of the game ..
    
    @IBAction func rollingDiceButton(_ sender: Any) {
      
        if boss.lifePoint >= 0 && hero.lifePoint >= 0 {
            if pressButton == true {
                
                bossTurn()
                
            }else{
                turn += 1
                labelDice.text = " Turn : \(turn)"
                heroTurn()
            }
        }else {
            if hero.lifePoint < 0 {
                deci.text += ("======================\n")
                deci.text = "  Fanalliy !!  The Winner Boss 🏆"
                deci.text += ("======================\n")
            }else{
                deci.text += ("======================\n")
                deci.text = " Fanalliy  !! The Winner  -> \((nameHero.text) ?? "\n") 🏆"
                deci.text += ("======================\n")
            }
        }
    }
    
//    The Turn is Boss ..
    
    func bossTurn() {
        let diceForBoss = dices.randomElement()!
        deci.text += ("========================\n")
        deci.text += (" Dice for Boss number is : \(diceForBoss)\n")
        deci.text += (" it's the boss turn ! \n")
        deci.text += ("========================\n")
        if diceForBoss >= 1 && diceForBoss <= 9 {
            if useSpecialapaCityHero == true {
                boss.PowerDamage += 32
                useSpecialapaCityHero = false
            }
            if boss.PowerDamage - hero.defense > 0 {
                deci.text += ("Boss use his power damege aginst Hero =  \(boss.PowerDamage - hero.defense)\n")
                deci.text += ("Hero health :  \(hero.lifePoint)\n")
                hero.lifePoint -= boss.PowerDamage - hero.defense
                if hero.lifePoint < 0 {
                    hero.lifePoint = 0
                }
                labelHeroLP.text = "\( hero.lifePoint)"
            }else{
                deci.text += ("Hero use defence 🛡 !\n")
            }
           
        } else if diceForBoss >= 10 && diceForBoss <= 19 {
            if useSpecialapaCityHero == true {
                boss.PowerDamage += 22
                useSpecialapaCityHero = false
            }
            
            if boss.weaponDamage - hero.defense > 0 {
                hero.lifePoint -= boss.weaponDamage - hero.defense
                if hero.lifePoint < 0 {
                    hero.lifePoint = 0
                }
                labelHeroLP.text = "\( hero.lifePoint)"
                deci.text += ("Boss use his power damege aginst Hero = \(boss.weaponDamage - hero.defense)\n")
                deci.text += (" Hero health : \(hero.lifePoint)\n  ")
        }else{
            deci.text += ("Hero defence block all attack damage 🛡 ! \n")
        }
        }else if diceForBoss == 20 {
            UseSpecialCapacity()
              hero.specialCapacity -= boss.defense
             if hero.specialCapacity < 0{
                   hero.specialCapacity = 0
//                 deci.text = "The boss defense succeeded in repelling the attack 🛡\n"
             }else{
                 deci.text = "Hero Use Special Capacity \(hero.specialCapacity)\n"
                 boss.lifePoint -= boss.specialCapacity
               if boss.lifePoint < 0 {
                   boss.lifePoint = 0
               }
                 labelHeroLP.text = String(hero.lifePoint) }
        }
        labelBossLP.text = String(boss.lifePoint)
            
            labelDice.text = "Result : \(diceForBoss) 🎲"

        pressButton = false
    }
    
    //    The Turn is Hero ..

    func heroTurn() {
       
        let diceForHero = dices.randomElement()!
        deci.text += ("========================\n")
        deci.text += (" Dice for Hero number is: \(diceForHero)\n")
        deci.text += (" it's the Hero turn!\n")
        deci.text += ("========================\n")
    
        if diceForHero >= 1 && diceForHero <= 9 {
            if useSpecialapaCityHero == true {
                hero.PowerDamage += Damage
                useSpecialapaCityHero = false
            }
            if hero.PowerDamage - boss.defense > 0 {
                boss.lifePoint -= hero.PowerDamage - boss.defense
                labelBossLP.text = "\( hero.lifePoint)"
                deci.text += ("Hero use his power damage aginst Boss =  \(boss.PowerDamage - hero.defense)\n")
                deci.text += (" Boss health : \(hero.lifePoint)\n")
                hero.lifePoint -= boss.PowerDamage - hero.defense
                if hero.lifePoint < 0{
                    hero.lifePoint = 0
                }
                labelHeroLP.text = "\( hero.lifePoint)"
            }else{
                deci.text += ("Boss use defence \n")
            }
        } else if diceForHero >= 10 && diceForHero <= 19 {
            if useSpecialapaCityHero == true {
                hero.weaponDamage += Damage
                useSpecialapaCityHero = false
            }
            if hero.weaponDamage - boss.defense > 0 {
                boss.lifePoint -= hero.weaponDamage - boss.defense
                deci.text += ("Hero use his weapon damage aginst Boss = \(hero.weaponDamage - boss.defense)\n")
                deci.text += (" Boss health : \(boss.lifePoint)\n")
                if hero.lifePoint < 0{
                    hero.lifePoint = 0
                }
                labelBossLP.text = "\( boss.lifePoint)"
        }else{
            deci.text += (" Boss use defence! \n")
        }
        }else if diceForHero == 20 {
            UseSpecialCapacity()
              hero.specialCapacity -= boss.defense
             if hero.specialCapacity < 0{
                   hero.specialCapacity = 0
//                 deci.text = "The boss defense succeeded in repelling the attack 🛡\n"
             }else{
                 deci.text = "Hero Use Special Capacity \(hero.specialCapacity)\n"
                 boss.lifePoint -= hero.specialCapacity
               if boss.lifePoint < 0 {
                   boss.lifePoint = 0
               }
                 labelBossLP.text = String(boss.lifePoint)
             }
            labelHeroLP.text = String(hero.lifePoint + Points)
            labelDice.text = "Result  : \(diceForHero) "
        }
        pressButton = true
    
    }

//   The Special capacity
    
    func UseSpecialCapacity(){
        if number == 1{
            hero.specialCapacity = 100
            Points = 5
            Damage = 10
            useSpecialapaCityHero = true
        }else if number == 2 {
            hero.specialCapacity = 50
            Points = 35
            Damage = 10
            useSpecialapaCityHero = true
        }else{
            hero.specialCapacity = 75
            Points = 5
            Damage = 35
            useSpecialapaCityHero = true
        }
    }
    }

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
    
    let bosses = [Boss(name: "Eila", lifePoint: 250, defense: 15, PowerDamage: 33, weaponDamage: 30, specialCapacity: 75, image: "boos1"),Boss(name: "Leon", lifePoint: 170, defense: 25, PowerDamage: 15, weaponDamage: 30, specialCapacity: 75, image: "boss2")]
    var boss: Boss!
    
       // Var for The Winner & Turn ...
    
//    var turn: Int = 0
    var winner = false
    
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
        
        imageHero.image = UIImage(named: hero.image)
        nameHero.text = hero.name
        labelHeroLP.text = String(hero.lifePoint)
        labelHeroDF.text = String(hero.defense)
         labelHeroPD.text = String(hero.PowerDamage)
        labelHeroWD.text = String(hero.weaponDamage)
         labelHeroSC.text = String(hero.specialCapacity)
    }
    @IBAction func RootViewContrller(segue: UIStoryboardSegue) {
    }
    // The logic of the game ..
//    var number = 0
    var turn = 0
    var pressButton = false
    var number = 0
    var extraDamage = 0
    var extraPoints = 0
    var useScBoss = false
    var useScHero = false
    
    
    @IBOutlet weak var labelDice: UILabel!
    

    @IBOutlet weak var deci: UITextView!

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
            if hero.lifePoint <= 0 {
                deci.text += ("======================\n")
                deci.text += " 🏆👏 Fanalliy !! Have Winner Boss 👏🏆"
            }else{
                deci.text = " Have winner -> \((nameHero.text) ?? "you\n") 🏆"
            }
        }
    }
        
//        if hero.lifePoint >= 0 && boss.lifePoint >= 0 {
//
//            bossTurn()
//
//            heroTurn()
//
//        }else{
//            if hero.lifePoint <= 0 {
//                deci.text += ("hero dead ")
//                deci.text += ("The Winner is : \(boss.name) at turn \(turn)   ")
//
//            }else if boss.lifePoint <= 0 {
//                deci.text += (" boss dead")
//                deci.text += ("The winner is : \(hero.name) at turn \(turn)")
//                winner = true
//            }else{
//                deci.text += ("something went terribly wrong with my logic")
//            }
//        }
        
    func bossTurn() {
        let diceForBoss = dices.randomElement()!
        
        deci.text += (" Dice for boss number is : \(diceForBoss)")
        deci.text += (" it's the boss turn !")
        if diceForBoss >= 1 && diceForBoss <= 9 {
            deci.text += ("========================\n")
            if useScBoss == true {
                boss.PowerDamage += 32
                useScHero = false
            }
            if boss.PowerDamage - hero.defense > 0 {
                deci.text += (" attack was Power Damager that ⚔️  =  \(boss.PowerDamage - hero.defense)")
                deci.text += (" Hero health 🩸 \(hero.lifePoint) ")
                hero.lifePoint -= boss.PowerDamage - hero.defense
            }else{
                deci.text += (" Hero defence block all attack damage 🛡 !  ")
            }
           
        } else if diceForBoss >= 10 && diceForBoss <= 19 {
            if useScBoss == true {
                boss.PowerDamage += 22
                useScHero = false
            }
            
            if boss.weaponDamage - hero.defense > 0 {
                hero.lifePoint -= boss.weaponDamage - hero.defense
                deci.text += (" attack was Weapon Damager that 🗡 = \(boss.weaponDamage - hero.defense)")
                deci.text += (" Hero health 🩸 \(hero.lifePoint)\n  ")
        }else{
            deci.text += ("Hero defence block all attack damage 🛡 ! \n")
        }
        }else if diceForBoss == 20 {
            UseSpecialCapacity()
              hero.specialCapacity -= boss.defense
             if hero.specialCapacity < 0{
                   hero.specialCapacity = 0
                 deci.text = "The boss defense succeeded in repelling the attack 🛡"
             }else{
                 deci.text = "Hero Use Special Capacity \(hero.specialCapacity),Ohh Boss lost life point 💔"
                 boss.lifePoint -= boss.specialCapacity
               if boss.lifePoint < 0 {
                   boss.lifePoint = 0
               }
                 labelHeroLP.text = String(hero.lifePoint) }
        }
        labelBossLP.text = String(boss.lifePoint)
            
            labelDice.text = "Result of the Dice : \(diceForBoss) 🎲"

        pressButton = true
    }

    func heroTurn() {
       
        let diceForHero = dices.randomElement()!
        deci.text += ("========================\n")
        deci.text += (" Dice for Hero number is: \(diceForHero)\n")
        deci.text += (" it's the Hero turn!\n")
        if diceForHero >= 1 && diceForHero <= 9 {
            if useScHero == true {
                hero.PowerDamage += extraDamage
                useScHero = false
            }
            if hero.PowerDamage - boss.defense > 0 {
                boss.lifePoint -= hero.PowerDamage - boss.defense
                deci.text += ("========================\n")
                deci.text += (" attack was Power Damager that =  \(boss.PowerDamage - hero.defense)\n")
                deci.text += (" Hero health \(hero.lifePoint)\n  ")
                hero.lifePoint -= boss.PowerDamage - hero.defense
            }else{
                deci.text += ("attack was Weapon Damager that\n")
            }
        } else if diceForHero >= 10 && diceForHero <= 19 {
            if useScHero == true {
                hero.weaponDamage += extraDamage
                useScHero = false
            }
            if hero.weaponDamage - boss.defense > 0 {
                boss.lifePoint -= hero.weaponDamage - boss.defense
                deci.text += (" attack was Weapon Damager that = \(hero.weaponDamage - boss.defense)")
                deci.text += (" Hero health \(boss.lifePoint)  ")
        }else{
            deci.text += (" Hero defence block all attack damage!\n")
        }
        }else if diceForHero == 20 {
            UseSpecialCapacity()
              hero.specialCapacity -= boss.defense
             if hero.specialCapacity < 0{
                   hero.specialCapacity = 0
                 deci.text = "The boss defense succeeded in repelling the attack 🛡"
             }else{
                 deci.text = "Hero Use Special Capacity \(hero.specialCapacity), Boss lost life point💔"
                 boss.lifePoint -= hero.specialCapacity
               if boss.lifePoint < 0 {
                   boss.lifePoint = 0
               }
                 labelBossLP.text = String(boss.lifePoint)
             }
            labelHeroLP.text = String(hero.lifePoint + extraPoints)
            labelDice.text = "Result of the Dice : \(diceForHero) 🎲"

//            deci.text += ("special capacity damage")
//            deci.text += ("========================\n")
        }
        pressButton = false
        
    }

func UseSpecialCapacity(){
    if number == 1{
        hero.specialCapacity = 100
        extraPoints = 5
        extraDamage = 10
        useScHero = true
    }else if number == 2 {
        hero.specialCapacity = 50
        extraPoints = 35
        extraDamage = 10
        useScHero = true
    }else{
        hero.specialCapacity = 75
        extraPoints = 5
        extraDamage = 35
        useScHero = true
    }
}
}


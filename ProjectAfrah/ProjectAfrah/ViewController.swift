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
    var hero = Hero(name: "", lifePoint: 0 , defense: 0 , PowerDamage: 0 , weaponDamage: 0 , specialCapacity: 0 , image: "")
    
    // Hero 1:  Name: Knight , (Points to dispatch : 250 , -> LP , DF , PD , WD , SC)
    // Hero 2:  Name: Wizard , (Points to dispatch : 245 , -> LP , DF , PD , WD , SC)
    // Hero 3:  Name: Thief , (Points to dispatch : 210 , -> LP , DF , PD , WD , SC)
    
    let bosses = [Boss(name: "Eila", lifePoint: 250, defense: 15, PowerDamage: 33, weaponDamage: 30, specialCapacity: 75, image: "boos1"),Boss(name: "Leon", lifePoint: 170, defense: 25, PowerDamage: 15, weaponDamage: 30, specialCapacity: 75, image: "boss2")]
    var boss: Boss!
    
       // Var for The Winner & Turn ...
    
    var turn: Int = 0
    var winner = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  Element , skils for Boss ...
    
       boss = bosses.randomElement()!
        imageBoss.image = UIImage(named: boss.image)
        nameboss.text = boss.name
       labelBossLP.text = String(boss.lifePoint)
       labelBossDF.text = String(boss.defense)
        labelBossPD.text = String(boss.PowerDamage)
       labelBossWD.text = String(boss.weaponDamage)
        labelBossSC.text = String(boss.specialCapacity)
        
        // Element , skils for Hero ...
        
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
    
    @IBOutlet weak var labelDice: UILabel!
    @IBOutlet weak var deci: UITextView!
         @IBAction func rollingDice(_ sender: Any) {

//
//    if hero.lifePoint >= 0 && boss.lifePoint >= 0 {
//
//        bossTurn()
//
//        heroTurn()
//    }else{
//        if hero.lifePoint <= 0 {
//            deci.text += ("hero dead")
//            deci.text += ("The Winner is : \(boss.name) at turn \(turn)")
//        }else if boss.lifePoint <= 0 {
//            deci.text += ("boss dead")
//            deci.text += ("The winner is : \(hero.name) at turn \(turn)")
//            winner = true
//        }else{
//            deci.text += ("Error")
//        }
//    }
//
//             // دور boss
//    func bossTurn() {
//        let diceBoss = dices.randomElement()!
//
//        deci.text += ("Dice for boss number is : \(diceBoss)")
//        deci.text += ("it's the boss turn!")
//        if diceBoss >= 1 && diceBoss <= 9 {
//            if boss.PowerDamage - hero.defense > 0 {
////                deci.text += ("=========================")
//                deci.text += ("Power Damager =  \(boss.PowerDamage - hero.defense)")
//                deci.text += ("hero health \(hero.lifePoint)")
//                hero.lifePoint -= boss.PowerDamage - hero.defense
//            }else{
//                deci.text += ("defenc")
//            }
//        } else if diceBoss >= 10 && diceBoss <= 19 {
//
//            if boss.weaponDamage - hero.defense > 0 {
//                hero.lifePoint -= boss.weaponDamage - hero.defense
////                deci.text += ("======================")
//                deci.text += ("attack was Weapon Damager that = \(boss.weaponDamage - hero.defense)")
//                deci.text += ("hero health \(hero.lifePoint)")
//        }else{
//            deci.text += ("hero defence block all attack damage!")
//        }
//        }else if diceBoss == 20 {
//            deci.text += ("special capacity damage")
//        }
//    }
//    func heroTurn() {
//
    
//            theWinnerIs(hero: hero, boss: boss )
//            func theWinnerIs(hero: Hero, boss: Boss) {
//
//                if (hero.lifePoint <= 0) {
//                    print("The Winner is  : \(boss.name) at turn \(turn)")
//                    winner = true
//                }
//                if (boss.lifePoint <= 0) {
//                    print("The winner is : \(hero.name) at turn \(turn)")
//                    winner = true
//        }
//

            
            
    }
    }


//
//  ViewController.swift
//  AfafAlqahtani_Project02_JizanFantasy
//
//  Created by Afaf Yahya on 27/03/1443 AH.
//

import UIKit
class Herro {
    var name : String
    var lifePoint : Int
    var defencse : Int
    var powerDemage: Int
    var weponDemage: Int
    var specialDemage:Int
    
    init(name : String,lifePoint : Int, defencse : Int, powerDemage: Int,weponDemage: Int,specialDemage:Int){
            
        self.name = name
        self.lifePoint = lifePoint
        self.defencse = defencse
        self.powerDemage = powerDemage
        self.weponDemage = weponDemage
        self.specialDemage = specialDemage
        
    }
}

class Boss1: Herro{
}

class Boss2: Herro{
}

class Knigt: Herro{
    
}
class Wizard: Herro{
        
    }
 class Thief: Herro{
        
    }
    
class ViewController: UIViewController {

    var bosss1 = Boss1(name: "Boss1", lifePoint: 250, defencse: 30, powerDemage: 20, weponDemage: 45, specialDemage: 110)
    var bosss2 = Boss2(name: "Boss2", lifePoint: 170, defencse: 25, powerDemage: 15, weponDemage: 30, specialDemage: 75)
    var knigt = Knigt(name: "Knigt", lifePoint: 60, defencse: 20, powerDemage: 30, weponDemage: 40, specialDemage: 100)
    var wizard = Wizard(name: "Wizard", lifePoint: 90, defencse: 15, powerDemage: 70, weponDemage: 20, specialDemage: 50)
    var thief = Thief(name: "Thief", lifePoint: 65, defencse: 25, powerDemage: 15, weponDemage: 30, specialDemage: 75)
//    variables to functions
    var turn = 0
    var clickButton = false
    var extraPoint = 0
    var extraDamage = 0
    var specialCapacity = 0
    var scBoss1 = false
    var scBoss2 = false
    var scHerro1 = false
    var scHerro2 = false
    var scHerro3 = false
   
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBoss()
        // Do any additional setup after loading the view.
    }//        function to random between Boos1 & Boss2
    func randomBoss(){
        let bosses = Int.random(in: 1...2)
        switch bosses {
        case 1:
            boss1Name.text = ("boss1Name")
            boss1.image = UIImage(named: "Boss1")
            lfL.text = String (bosss1.lifePoint)
            dfL.text = String (bosss1.defencse)
            pdL.text = String (bosss1.powerDemage)
            wdL.text = String (bosss1.weponDemage)
            seL.text = String (bosss1.specialDemage)
        case 2:
            boss2Name.text = ("boss1Name")
            boss2.image = UIImage(named: "Boos2")
            lfL.text = String (bosss2.lifePoint)
            dfL.text = String (bosss2.defencse)
            pdL.text = String (bosss2.powerDemage)
            wdL.text = String (bosss2.weponDemage)
            seL.text = String (bosss2.specialDemage)
        default:
           print ("NON")
        }
    }
    @IBOutlet weak var boss1Name: UILabel!
    @IBOutlet weak var boss2Name: UILabel!
    @IBOutlet weak var boss1: UIImageView!
    @IBOutlet weak var boss2: UIImageView!
    @IBOutlet weak var lfR: UILabel!
    @IBOutlet weak var dfR: UILabel!
    @IBOutlet weak var pdR: UILabel!
    @IBOutlet weak var wdR: UILabel!
    @IBOutlet weak var seR: UILabel!
    @IBOutlet weak var lfL: UILabel!
    @IBOutlet weak var dfL: UILabel!
    @IBOutlet weak var pdL: UILabel!
    @IBOutlet weak var wdL: UILabel!
    @IBOutlet weak var seL: UILabel!
   @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var diceNumber: UILabel!
    @IBAction func rullDice(_ sender: Any) {
        
//     turn Dice
        
            if lfR.text! > "0" && lfL.text! > "0"{
              if clickButton == true{
                  bossturn()
              }else{
                turn += 1
              diceNumber.text = ("turn: \(turn)")
                theGame()
              }
            }else{
              if lfL.text! > "0"{
                discriptionLabel.text = "Winer is Boss"
              }else {
            discriptionLabel.text = "Winer is Hero"
            }
    }
    }
//    funcion to turn the game
        func theGame(){
        var heroName = (boss2Name)
        var lpHero = Int(lfR.text!)!
        var df1 = Int(dfR.text!)!
        var power = Int(pdR.text!)!
        var weapon = Int(wdR.text!)!
       

        var bossName = (boss1Name)
        var lpBoss = Int(lfL.text!)!
        var df2 = Int(dfL.text!)!
        var power2 = Int(pdL.text!)!
        var weapon2 = Int(wdL.text!)!
        
//        turn Hero
            let heroRullDice = Int.random(in: 1...20)
            switch heroRullDice {
            case 1...9:
                diceNumber.text! = "\(heroRullDice)"
                if scHerro1 == true{
                    power2 += 32
                    scHerro1 = false
                }
                power -= df2
                if power < 0 {
                    power = 0
                }else {
                    lpBoss -= power
                    if lpBoss < 0{
                        lpBoss = 0
                    }
                    lfL.text = String (lpBoss)
                discriptionLabel.text = "Hero use his power damage aginst boss"
                }
                discriptionLabel.text = "Boss is used to defend himself"
            case 10...19:
                diceNumber.text! = "\(heroRullDice)"
                if scHerro2 == true{
                    weapon += extraDamage
                    scHerro2 = false
                    
            }
                if scHerro3 == true{
                    weapon += extraDamage
                    scHerro3 = false
                    
            }
                weapon -= df2
                if weapon < 0 {
                    weapon = 0
                }else{
                    lpBoss -= weapon
                    if lpBoss < 0{
                        lpBoss = 0
                    }
                    lfL.text = String (lpBoss)
                discriptionLabel.text = "Hero use his wepon damage aginst boss"
                }
                discriptionLabel.text = "Boss is used to defend himself"
            case 20:
                diceNumber.text! = "\(heroRullDice)"
                specialCapacity1()
                specialCapacity -= df2
                if specialCapacity <= 0 {
                    specialCapacity = 0
                }else{
                    lpBoss -= specialCapacity
                    if lpBoss < 0{
                        lpBoss = 0
                    }
                    lfL.text = String (lpBoss)
                }
                lfR.text = String (lpHero + extraPoint)
            default:
                print("NON")
            }
            clickButton = true
        }
    
    @IBAction func displayButton(_ sender: Any) {
        performSegue(withIdentifier: "goToVC2", sender: self)
        }
    
    @IBAction func rootViewController(segue: UIStoryboardSegue){
        print("Unwind to Root ViewController")
    }
//    variable to function to the Boss
func bossturn(){
    var heroName = (boss2Name)
    var lpHero = Int(lfR.text!)!
    var df1 = Int(dfR.text!)!
    var power = Int(pdR.text!)!
    var weapon = Int(wdR.text!)!
    var scHero = Int(seR.text!)!

    var bossName = (boss1Name)
    var lpBoss = Int(lfL.text!)!
    var df2 = Int(dfL.text!)!
    var power2 = Int(pdL.text!)!
    var weapon2 = Int(wdL.text!)!
    var scBoss = Int(seL.text!)!
    let bossRullDice = Int.random(in: 1...20)
    switch bossRullDice{
//        turn boss
    case 1...9:
        diceNumber.text! = "\(bossRullDice)"
        if scBoss2 == true{
            power2 += 32
            scBoss2 = false
        }
        power2 -= df1
        if power2 < 0 {
            power2 = 0
        }else {
            lpHero -= power2
            if lpHero < 0{
                lpHero = 0
            }
            lfR.text = String (lpHero)
            discriptionLabel.text = "Boss his power damage aginst Hero"
        }
        discriptionLabel.text = "Hero is used to defend himself"
        
    case 10...19:
        diceNumber.text! = "\(bossRullDice)"
        if scBoss1 == true{
            weapon2 += 32
            scBoss1 = false
        }
        weapon2 -= df1
        if weapon2 < 0 {
            weapon2 = 0
        }else{
            lpHero -= weapon2
            if lpHero < 0{
                lpHero = 0
            }
            lfR.text = String (lpHero)
            discriptionLabel.text = "Boss use his wepon damage aginst Hero"
        }
        discriptionLabel.text = "Hro is used to defend himself"
        //                turn specialcapacity of boss
    case 20:
        diceNumber.text! = "\(bossRullDice)"
        if boss1Name.text == "BOSS"{
            scBoss1 = true
        }else{
            scBoss2 = true
        }
        scBoss -= df2
        if scBoss <= 0 {
            scBoss = 0
        }else{
            lpHero -= specialCapacity
            if lpHero < 0{
                lpHero = 0
            }
            lfR.text = String (lpHero)
        }
        lfL.text = String (lpBoss + 5)
    default:
        print("Game Over !!!")
    }
    clickButton = false
}
//function to specialCapacity
func specialCapacity1(){
    if boss2Name.text == "Knight" {
        specialCapacity = 100
      extraPoint = 5
      extraDamage = 10
      scHerro1 = true
    }else if boss2Name.text == "Wizard" {
        specialCapacity = 50
      extraPoint = 35
      extraDamage = 10
      scHerro2 = true
    }else{
        specialCapacity = 75
      extraPoint = 5
      extraDamage = 35
        scHerro3 = true
    }
}
}

//
//  ViewController.swift
//  ArwaAlattas_Project02_JizanFantasy
//
//  Created by Arwa Alattas on 27/03/1443 AH.
//

import UIKit


class Hero{
    var pointOfDispatch : Int
    var livePoint :Int
    var defanse : Int
    var powerDamage :Int
    var weaponDamage : Int
    var specialCapacity :Int
    var specialCapacityOfLifePoint : Int
    init(pointOfDispatch : Int,livePoint :Int,defanse : Int,powerDamage :Int,weaponDamage : Int,specialCapacity :Int,specialCapacityOfLifePoint : Int){
        self.pointOfDispatch = pointOfDispatch
        self.livePoint = livePoint
        self.defanse = defanse
        self.powerDamage = powerDamage
        self.weaponDamage = weaponDamage
        self.specialCapacity = specialCapacity
        self.specialCapacityOfLifePoint = specialCapacityOfLifePoint
    }
}

class Bosses{
    var name :String
    var livePoint :Int
    var defanse : Int
    var powerDamage :Int
    var weaponDamage : Int
    var specialCapacity :Int
    var specialCapacityOfLifePoint : Int
    init(name:String ,livePoint :Int,defanse : Int,powerDamage :Int,weaponDamage : Int,specialCapacity :Int,specialCapacityOfLifePoint : Int){
        self.name = name
        self.livePoint = livePoint
        self.defanse = defanse
        self.powerDamage = powerDamage
        self.weaponDamage = weaponDamage
        self.specialCapacity = specialCapacity
        self.specialCapacityOfLifePoint = specialCapacityOfLifePoint
    }
}
    
    
 

class ViewController: UIViewController {
   
var boss1=Bosses(name : "Boss1",livePoint: 250, defanse: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110,specialCapacityOfLifePoint: 5)
var boss2 = Bosses(name : "Boss2",livePoint: 170, defanse: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75,specialCapacityOfLifePoint: 5)

var hero = Hero(pointOfDispatch: 0, livePoint: 0, defanse: 0, powerDamage: 0, weaponDamage: 0, specialCapacity: 0,specialCapacityOfLifePoint: 5)
var theturn = false
    var flagKnight = false
    var flagWizard = false
    var flagThief = false
    var flagBoss1 = false
    var flagBoss2 = false
  var turnNumber = 1
    @IBOutlet weak var nameOfBoss: UILabel!
    @IBOutlet weak var lifePointOfBoss: UILabel!
    @IBOutlet weak var defanseOfBoss: UILabel!
    @IBOutlet weak var powerDamageOfBoss: UILabel!
    @IBOutlet weak var weaponDamageOfBoss: UILabel!
    @IBOutlet weak var specialCapacityOfBoss: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    @IBOutlet weak var imageBoss: UIImageView!
    
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var logicOfGame: UILabel!
    
    @IBOutlet weak var nameOfHero: UILabel!
    @IBOutlet weak var LifePointOfHero: UILabel!
    @IBOutlet weak var defanseOfHero: UILabel!
    @IBOutlet weak var powerDamageOfHero: UILabel!
    @IBOutlet weak var weaponOfHero: UILabel!
    @IBOutlet weak var specialCapacityOfHero: UILabel!
    @IBOutlet weak var imageHero: UIImageView!
    
 
    
    override func viewWillAppear(_ animated: Bool) {
        let randomBoss = Int.random(in: 1...2)
        if randomBoss == 1 {
    imageBoss.image = UIImage(named: "bossimage1")
    nameOfBoss.text = boss1.name
lifePointOfBoss.text = String(boss1.livePoint)
defanseOfBoss.text = String(boss1.defanse)
powerDamageOfBoss.text = String(boss1.powerDamage)
weaponDamageOfBoss.text = String(boss1.weaponDamage)
specialCapacityOfBoss.text = String(boss1.specialCapacity)
        }else {
    imageBoss.image = UIImage(named:"bossimage2")
            nameOfBoss.text = boss2.name
        lifePointOfBoss.text = String(boss1.livePoint)
        defanseOfBoss.text = String(boss2.defanse)
        powerDamageOfBoss.text = String(boss2.powerDamage)
        weaponDamageOfBoss.text = String(boss2.weaponDamage)
        specialCapacityOfBoss.text = String(boss2.specialCapacity)
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func creetChallenger(seque:UIStoryboardSegue){
    }

    @IBOutlet weak var numberOfDice: UILabel!
    @IBOutlet weak var theGameButton: UIButton!
    
    @IBAction func theGame(_ sender: Any) {
      if Int(lifePointOfBoss.text!)! > 0 && Int(LifePointOfHero.text!)! > 0  {
   hero.livePoint = Int(LifePointOfHero.text!)!
    boss1.livePoint = Int(lifePointOfBoss.text!)!
    boss2.livePoint = Int(lifePointOfBoss.text!)!
            
    turnLabel.text = "Turn Number is  \(turnNumber) "
        if theturn == true {
//    boss turn
            turnNumber += 1
    let dice = Int.random(in: 1...20)
if dice >= 1 && dice <= 9{
    numberOfDice.text = String(dice)
    startLabel.text! = " The Boss is start with with face \(dice)\n then he use power damage "
    hero.livePoint -= (Int(powerDamageOfBoss.text!)! - Int(defanseOfHero.text!)!)
    restOfLife()
    LifePointOfHero.text = String(hero.livePoint)
    
    logicOfGame.text = " \n life Point of \(nameOfHero.text!)  :  \(hero.livePoint) \n life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!) "
    if flagBoss2{
        hero.livePoint -= 32
        LifePointOfHero.text = String(hero.livePoint)
       flagBoss2 = false
    }
    
}else if dice >= 10 && dice <= 19{
    startLabel.text = " The Boss is start with face \(dice) \n then he use weapon damage "
    numberOfDice.text = String(dice)
    hero.livePoint -= (Int(weaponDamageOfBoss.text!)! - Int(defanseOfHero.text!)!)
    restOfLife()
    LifePointOfHero.text = String(hero.livePoint)
    logicOfGame.text = " \n life Point of \(nameOfHero.text!)  :  \(hero.livePoint) \n life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)"
    if flagBoss1{
        hero.livePoint -= 22
        LifePointOfHero.text = String(hero.livePoint)
       flagBoss1 = false
    }
   
}else if dice == 20{
    startLabel.text = "The Boss is start with  face \(dice)\n then he use special capacity "
  
    numberOfDice.text = String(dice)
    hero.livePoint -= (Int(specialCapacityOfBoss.text!)! - Int(defanseOfHero.text!)!)
    restOfLife()
    if nameOfBoss.text == "Boss1"{
        boss1.livePoint += 5
        restOfLife()
        lifePointOfBoss.text! = String(boss1.livePoint)
        flagBoss1 = true
    }else if nameOfBoss.text == "Boss2"{
        boss2.livePoint += 5
        restOfLife()
        lifePointOfBoss.text! = String(boss2.livePoint)
        flagBoss2 = true
    }
    LifePointOfHero.text! = String(hero.livePoint)
    restOfLife()
   
    logicOfGame.text = "\n life Point of \(nameOfHero.text!)  :  \(hero.livePoint) \n life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)"
    


}
        theturn = false
            
            
        }else if theturn == false{
        
// hero turn
      
        rollinDiceOfHero ()

        }}else if Int(lifePointOfBoss.text!)! <= 0 {
            turnLabel.text = "🎊🎉🎊🎉🎊🎉🎊🎉"
            startLabel.text = "only in turn  \(turnNumber)"
            logicOfGame.text = "\n The winner  is  \(nameOfHero.text!)   🥳🥳 \n  game over !!"
            theGameButton.isEnabled = false
        }else if Int(LifePointOfHero.text!)! <= 0{
            turnLabel.text = "🎊🎉🎊🎉🎊🎉🎊🎉"
            startLabel.text = "only in turn  \(turnNumber)"
          logicOfGame.text = "\n  The winner  is  \(nameOfBoss.text!)   🥳🥳 \n  game over !!"
            theGameButton.isEnabled = false
        }
        
    }
    
  func rollinDiceOfHero ()
    {
        hero.livePoint = Int(LifePointOfHero.text!)!
        boss1.livePoint = Int(lifePointOfBoss.text!)!
        boss2.livePoint = Int(lifePointOfBoss.text!)!
    
       let dice2 = Int.random(in: 1...20)
   if dice2 >= 1 && dice2 <= 9{
numberOfDice.text = String(dice2)
       startLabel.text = " The Hero is start with face \(dice2) \n then he use power damage"
       if nameOfBoss.text! == "Boss1"{
boss1.livePoint -= (Int(powerDamageOfHero.text!)! - Int(defanseOfBoss.text!)!)
           restOfLife()
    lifePointOfBoss.text! = String(boss1.livePoint)
           LifePointOfHero.text! = String(hero.livePoint)
       }else if nameOfBoss.text! == "Boss2"{
boss2.livePoint -= (Int(powerDamageOfHero.text!)! - Int(defanseOfBoss.text!)!)
           restOfLife()
           lifePointOfBoss.text = String(boss2.livePoint)
           LifePointOfHero.text! = String(hero.livePoint)
       }
       logicOfGame.text = "\n life Point of \(nameOfHero.text!)  :  \(hero.livePoint) \n life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)"
//       logicOfGame.text = "\n life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)"
       if flagWizard{
           switch nameOfBoss.text! {
           case "Boss1" :
               boss1.livePoint -= 10
               lifePointOfBoss.text! = String(boss1.livePoint)
           case "Boss2" :
               boss2.livePoint -= 10
               lifePointOfBoss.text! = String(boss2.livePoint)
           default :
               print("eroor")
           }
          flagWizard = false
       }
    }else if dice2 >= 10 && dice2 <= 19{
       numberOfDice.text = String(dice2)
        startLabel.text = "  The Hero is start with face \(dice2) \n then he use weapon damage"
        if nameOfBoss.text! == "Boss1"{
boss1.livePoint -= (Int(weaponOfHero.text!)! - Int(defanseOfBoss.text!)!)
            restOfLife()
lifePointOfBoss.text! = String(boss1.livePoint)
            LifePointOfHero.text! = String(hero.livePoint)
        }else if nameOfBoss.text! == "Boss2"{
            boss2.livePoint -= (Int(weaponOfHero.text!)! - Int(defanseOfBoss.text!)!)
            restOfLife()
            lifePointOfBoss.text = String(boss2.livePoint)
            LifePointOfHero.text! = String(hero.livePoint)
        }
        logicOfGame.text = "\n life Point of \(nameOfHero.text!)  :  \(hero.livePoint)  \n life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)"

        if flagKnight{
            switch nameOfBoss.text! {
            case "Boss1" :
                boss1.livePoint -= 10
                lifePointOfBoss.text! = String(boss1.livePoint)
            case "Boss2" :
                boss2.livePoint -= 10
                lifePointOfBoss.text! = String(boss2.livePoint)
            default :
                print("eroor")
            }
           flagKnight = false
        }
        if flagThief{
            switch nameOfBoss.text! {
            case "Boss1" :
                boss1.livePoint -= 35
               lifePointOfBoss.text! = String(boss1.livePoint)
            case "Boss2" :
                boss2.livePoint -= 35
                lifePointOfBoss.text! = String(boss2.livePoint)
            default :
                print("eroor")
            }
            
            flagThief = false
        }
 }else if dice2 == 20{
     numberOfDice.text = String(dice2)
     startLabel.text = "The Hero is start with face \(dice2)\n then he use special capacity "
     if nameOfBoss.text! == "Boss1"{
boss1.livePoint -= (Int(specialCapacityOfHero.text!)! - Int(defanseOfBoss.text!)!)
         restOfLife()
         hero.livePoint += 5
    lifePointOfBoss.text = String(boss1.livePoint)
    LifePointOfHero.text = String(hero.livePoint)
     }else if nameOfBoss.text! == "Boss2"{
         boss2.livePoint -= (Int(specialCapacityOfHero.text!)! - Int(defanseOfBoss.text!)!)
         hero.livePoint += 5
    lifePointOfBoss.text = String(boss2.livePoint)
    LifePointOfHero.text = String(hero.livePoint)
        
     }
     logicOfGame.text = " life Point of \(nameOfHero.text!)  :  \(hero.livePoint)\n life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)"

     switch nameOfHero.text!{
     case "Knight" : flagKnight = true
     case "Wizard" : flagWizard = true
     case "Thief" :  flagThief = true
     default:
         print("error")
     }
 }
    theturn = true
 }
        
    
    
    
    func restOfLife() {
        if hero.livePoint <= 0 {
            hero.livePoint = 0
        }else if boss1.livePoint <= 0{
            boss1.livePoint = 0
        }else if boss1.livePoint <= 0{
            boss2.livePoint = 0
        }
    }
    
        
        
    }

    
    
    


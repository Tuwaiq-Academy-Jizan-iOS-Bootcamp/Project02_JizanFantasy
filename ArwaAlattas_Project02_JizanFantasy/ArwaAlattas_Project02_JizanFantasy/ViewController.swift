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
 var flag = false
  var turnNumber = 1
    @IBOutlet weak var nameOfBoss: UILabel!
    @IBOutlet weak var lifePointOfBoss: UILabel!
    @IBOutlet weak var defanseOfBoss: UILabel!
    @IBOutlet weak var powerDamageOfBoss: UILabel!
    @IBOutlet weak var weaponDamageOfBoss: UILabel!
    @IBOutlet weak var specialCapacityOfBoss: UILabel!
    @IBOutlet weak var imageBoss: UIImageView!
    
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
    
  print("Turn Number is  \(turnNumber) ")
        if theturn == true {
//    boss turn
            turnNumber += 1
    let dice = Int.random(in: 1...20)
if dice >= 1 && dice <= 9{
    restOfLife()
    numberOfDice.text = String(dice)
    print("The Boss is start with \(dice)")
    hero.livePoint -= (Int(powerDamageOfBoss.text!)! - Int(defanseOfHero.text!)!)
    LifePointOfHero.text = String(hero.livePoint)
    print("life Point of \(nameOfHero.text!)  :  \(hero.livePoint)")
    print("life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)")
    flag = false
}else if dice >= 10 && dice <= 19{
    restOfLife()
    print("The Boss is start with \(dice)")
    numberOfDice.text = String(dice)
    hero.livePoint -= (Int(weaponDamageOfBoss.text!)! - Int(defanseOfHero.text!)!)
    LifePointOfHero.text = String(hero.livePoint)
  print("life Point of \(nameOfHero.text!)  :  \(hero.livePoint)")
   print("life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)")
    flag = false
}else if dice == 20{
    restOfLife()
    print( "The Boss is start with \(dice)")
    flag = true
    numberOfDice.text = String(dice)
    hero.livePoint -= (Int(specialCapacityOfBoss.text!)! - Int(defanseOfHero.text!)!)
    if nameOfBoss.text == "Boss1"{
        boss1.livePoint += 5
        lifePointOfBoss.text! = String(boss1.livePoint)
    }else if nameOfBoss.text == "Boss2"{
        boss2.livePoint += 5
        lifePointOfBoss.text! = String(boss2.livePoint)
    }
    LifePointOfHero.text! = String(hero.livePoint)
    if flag{
        specialCapacity(player: "\(nameOfHero.text!)")
    }
    print("life Point of \(nameOfHero.text!)  :  \(hero.livePoint)")
    print("life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)")

}
        theturn = false
            
            
        }else if theturn == false{
        
// hero turn
      
        rollinDiceOfHero ()

        }}else if Int(lifePointOfBoss.text!)! <= 0 {
        print(" The winner  is  \(nameOfHero.text!)   🥳🥳")
            print("game over !!")
            theGameButton.isEnabled = false
        }else if Int(LifePointOfHero.text!)! <= 0{
            print(" The winner  is  \(nameOfBoss.text!)   🥳🥳")
            theGameButton.isEnabled = false
            print("game over !!")
        }
    
    }
    
  func rollinDiceOfHero ()
    {
        hero.livePoint = Int(LifePointOfHero.text!)!
        boss1.livePoint = Int(lifePointOfBoss.text!)!
        boss2.livePoint = Int(lifePointOfBoss.text!)!
    
       let dice2 = Int.random(in: 1...20)
   if dice2 >= 1 && dice2 <= 9{
       restOfLife()
numberOfDice.text = String(dice2)
print( "The Hero is start with \(dice2)")
       if nameOfBoss.text! == "Boss1"{
boss1.livePoint -= (Int(powerDamageOfHero.text!)! - Int(defanseOfBoss.text!)!)
    lifePointOfBoss.text! = String(boss1.livePoint)
           LifePointOfHero.text! = String(hero.livePoint)
       }else if nameOfBoss.text! == "Boss2"{
boss2.livePoint -= (Int(powerDamageOfHero.text!)! - Int(defanseOfBoss.text!)!)
           lifePointOfBoss.text = String(boss2.livePoint)
           LifePointOfHero.text! = String(hero.livePoint)
       }
print( "life Point of \(nameOfHero.text!)  :  \(hero.livePoint)")
print( "life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)")
       flag = false
    }else if dice2 >= 10 && dice2 <= 19{
        restOfLife()
       numberOfDice.text = String(dice2)
       print("The Hero is start with \(dice2)")
        if nameOfBoss.text! == "Boss1"{
boss1.livePoint -= (Int(weaponOfHero.text!)! - Int(defanseOfBoss.text!)!)
lifePointOfBoss.text! = String(boss1.livePoint)
            LifePointOfHero.text! = String(hero.livePoint)
        }else if nameOfBoss.text! == "Boss2"{
            boss2.livePoint -= (Int(weaponOfHero.text!)! - Int(defanseOfBoss.text!)!)
            lifePointOfBoss.text = String(boss2.livePoint)
            LifePointOfHero.text! = String(hero.livePoint)
        }
        print( "life Point of \(nameOfHero.text!)  :  \(hero.livePoint)")
        print("life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)")
        flag = false
 }else if dice2 == 20{
     restOfLife()
     numberOfDice.text = String(dice2)
     print("The Hero is start with \(dice2)")
     if nameOfBoss.text! == "Boss1"{
boss1.livePoint -= (Int(specialCapacityOfHero.text!)! - Int(defanseOfBoss.text!)!)
         hero.livePoint += 5
    lifePointOfBoss.text = String(boss1.livePoint)
    LifePointOfHero.text = String(hero.livePoint)
//         lifePointOfBoss.text! = String(boss1.livePoint)
//         LifePointOfHero.text! += String(5)
     }else if nameOfBoss.text! == "Boss2"{
         boss2.livePoint -= (Int(specialCapacityOfHero.text!)! - Int(defanseOfBoss.text!)!)
         hero.livePoint += 5
    lifePointOfBoss.text = String(boss2.livePoint)
    LifePointOfHero.text = String(hero.livePoint)
//         LifePointOfHero.text! += String(5)
         if flag{
             specialCapacity(player: "\(nameOfHero.text!)")
         }
     }
     print( "life Point of \(nameOfHero.text!)  :  \(hero.livePoint)")
   print("life point of \(nameOfBoss.text!)   :  \(lifePointOfBoss.text!)")
      }
    theturn = true
 }
        
    
    
    
    func specialCapacity (player:String) {
// parameter of this func is the name label .text
        if player == "knight"{
            weaponOfHero.text! += String(10)
            
        }else if player == "Wizard"{
            powerDamageOfHero.text! += String(10)
            
        }else if player == "Thief"{
            weaponOfHero.text! += String(35)
    
        }else if player == "Boss1" {
            weaponDamageOfBoss.text! += String(22)
            
        }else if player == "Boss2"{
            powerDamageOfBoss.text! += String(32)
        
        }
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

    
    
    


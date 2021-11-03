//
//  ViewController.swift
//  ehabHakami_jazanFan
//
//  Created by Ehab Hakami on 27/03/1443 AH.
//

import UIKit



class Hero {

    var name: String
    var lifePoint: Int
    var defense: Int
    var powerDamage: Int
    var weaponDamage: Int
    var specialCapacity: Int
    

    

    init(name: String, lifePoint: Int , defense: Int, powerDamage: Int , weaponDamage: Int, specialCapacity: Int ) {
        self.name = name
        self.lifePoint = lifePoint
        self.defense = defense
        self.powerDamage = powerDamage
        self.weaponDamage = weaponDamage
        self.specialCapacity = specialCapacity

    }

    func specialCapacit00() {
        lifePoint += specialCapacity
        print("The Hero \(name) has healed \(specialCapacity) point of life\(lifePoint + specialCapacity) and wapen \(weaponDamage + specialCapacity)")
        
        
    }

}
class Knight: Hero {

    func restOfLife() {
        if lifePoint < 0 {
            lifePoint = 0
        }
        print("Rest of life point for Knight : \(lifePoint)")
    }
    func attackWithPower(){
        print("The Hero use \(name) power and inflict \(powerDamage + defense)")
    }
    func attackWithWeapon() {
        print("The Hero use \(name) weapon and inflict \(weaponDamage + defense)")
    }
    
}
class Boss2 : Hero {
    func restOfLife() {
        if lifePoint < 0 {
            lifePoint = 0
        }
        print("Rest of life for Boss 1 : \(lifePoint)")
    }
    func attackWithPower(){
        print("The Hero use \(name) power and inflict \(powerDamage + defense)")
    }
    func attackWithWeapon() {
        print("The Hero use \(name) weapon and inflict \(weaponDamage + defense)")
    }
    

}

class ViewController: UIViewController {
    @IBOutlet weak var labelVa: UILabel!
    
    @IBOutlet weak var BossLiveP: UILabel!
    
    @IBOutlet weak var viewPrintFight: UITextView!
    
    var turn: Int = 0
    var winner = false
    
    var kinght = Knight(name: "kinght", lifePoint: 60, defense: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100)
    
    var boss2 = Boss2(name: "boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)






    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.




    }

    @IBAction func rollingDice(_ sender: UIButton) {
        

        turn += 1
        
        if winner {
            viewPrintFight.text += ("Game Over ! ")
        
        } else {
            viewPrintFight.text += ("------- This is the turn N°\(turn)--------")
            logicOfTheGame()
            viewPrintFight.text += ("============== This is the end of turn N°\(turn)===============")
        }
    }

    func logicOfTheGame() {

        switch rollingDice() {
       
        case 0:
            viewPrintFight.text += ("It's kinght Action and he use power damge \(kinght.name) !")
            kinght.attackWithPower()
            boss2.lifePoint -= kinght.powerDamage
            boss2.lifePoint += boss2.defense
            
        case 1:
            viewPrintFight.text += ("Tt's boss2 Action and he use the damge \(boss2.name)")
            boss2.attackWithPower()
            kinght.lifePoint -= boss2.powerDamage
            kinght.lifePoint += kinght.defense
        case 2:
            viewPrintFight.text += ("It's kinght Action and he use power damge \(kinght.name) !")
            kinght.attackWithPower()
            boss2.lifePoint -= kinght.powerDamage
            boss2.lifePoint += boss2.defense
        case 3:
            viewPrintFight.text += ("It's kinght Action and he use power damge \(boss2.name) !")
            boss2.attackWithPower()
            kinght.lifePoint -= boss2.powerDamage
            kinght.lifePoint += kinght.defense
            
        case 4:
            viewPrintFight.text += ("It's kinght Action and he use power damge \(kinght.name) !")
            kinght.attackWithPower()
            boss2.lifePoint -= kinght.powerDamage
            boss2.lifePoint += boss2.defense
            
        case 5:
            viewPrintFight.text += ("It's kinght Action and he use power damge \(boss2.name) !")
            boss2.attackWithPower()
            kinght.lifePoint -= boss2.powerDamage
            kinght.lifePoint += kinght.defense
        default:
            print("Error")
        }
        theWinnerIs(kinght: kinght, boss2: boss2)

        labelVa.text = "\(kinght.lifePoint)"
        
        BossLiveP.text = "\(boss2.lifePoint)"
        viewPrintFight.text += ("It's kinght Action and he use power damge \(boss2.name) !")
        
            
        

    }

    func theWinnerIs(kinght: Hero, boss2: Hero) {

        if (kinght.lifePoint <= 0) {
            print("The Winner is : \(boss2.name) at turn \(turn)")
            winner = true
        }
        if (boss2.lifePoint <= 0) {
            print("The winner is : \(kinght.name) at turn \(turn)")
            winner = true
        }
    }
    
    

    func rollingDice() -> Int {
        var dice: Int
        dice = Int.random(in: 0...5)
        print("Dice = \(dice)")

        return dice
    }
    




}


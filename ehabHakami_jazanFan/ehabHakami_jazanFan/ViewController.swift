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
        func attackWithPower(){
            print("The Hero use \(name) power and inflict \(powerDamage + defense)")
        }
        func attackWithWeapon() {
            print("The Hero use \(name) weapon and inflict \(weaponDamage + defense)")
        }
        
        
    }


class Knight: Hero {

    func restOfLife() {
        if lifePoint < 0 {
            lifePoint = 0
        }
        print("Rest of life point for Knight : \(lifePoint)")
    }

}
class Boss2 : Hero {
    func restOfLife() {
        if lifePoint < 0 {
            lifePoint = 0
        }
        print("Rest of life for Boss 1 : \(lifePoint)")
    }
    

}

class ViewController: UIViewController {
    @IBOutlet weak var labelVa: UILabel!
    
    @IBOutlet weak var BossLiveP: UILabel!
    
    @IBOutlet weak var viewPrintFight: UITextView!
    
    @IBOutlet weak var numDice: UILabel!
    
    
    @IBOutlet weak var labelDfValue: UILabel!
    
    @IBOutlet weak var labelPdValue: UILabel!
    
    @IBOutlet weak var labelWdValue: UILabel!
    
    @IBOutlet weak var labelsCValue: UILabel!
    
    var player1:Hero?
    var player2:Hero?
    
    
    var turn: Int = 0
    var winner = false
    
    var kinght = Hero(name: "kinght", lifePoint: 60, defense: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100)
    
    var boss2 = Hero(name: "boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
    var boss1 = Hero(name: "boss1", lifePoint: 240, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)






    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let player = Int.random(in: 1...2)
        if player == 1 {
            player1 = boss1
        }else{
            player1 = boss2
        }




    }
    

    @IBAction func rollingDice(_ sender: UIButton) {
        

        turn += 1
        
        if winner {
            viewPrintFight.text += ("Game Over ! ")
        
        } else {
            viewPrintFight.text += ("--- This is the turn N°\(turn)----")
            logicOfTheGame()
            viewPrintFight.text += ("========= This is the end of turn N°\(turn)======================================================")
        }
    }

    func logicOfTheGame() {

        switch rollingDice() {
         case 1...4:
            kinght.attackWithPower()
            player1!.lifePoint -= kinght.powerDamage
            player1!.lifePoint += player1!.defense
            viewPrintFight.text += ("\(kinght.name) used powerDamage ")
            viewPrintFight.text += ("\(String(describing: player1!.name)) Live Point : \(String(describing: player1!.lifePoint))")
        case 5...9:
           
            player1!.attackWithPower()
             kinght.lifePoint -= player1!.powerDamage
             kinght.lifePoint += kinght.defense
            viewPrintFight.text += ("\(player1!.name) used powerDamage")
            viewPrintFight.text += ("kinght Live Point : \(kinght.lifePoint)")
           
         case 10...14:
            
            kinght.attackWithPower()
             player1!.lifePoint -= kinght.weaponDamage
             player1!.lifePoint += player1!.defense
            viewPrintFight.text += ("kinght used weaponDamage : \(kinght.weaponDamage)")
            viewPrintFight.text += ("\(player1!.name) Live Point : \(String(describing: player1!.lifePoint))")
           
        case 15...19:
            player1!.attackWithWeapon()
             kinght.lifePoint -= player1!.weaponDamage
             kinght.lifePoint += kinght.defense
            viewPrintFight.text += ("\(player1!.name) used weaponDamage : \(String(describing: player1!.weaponDamage))")
            viewPrintFight.text += ("kinght Live Point : \(kinght.lifePoint)")
           
           
         case 21:
            kinght.specialCapacit00()
           kinght.lifePoint += 5
           kinght.weaponDamage += 10
           viewPrintFight.text += ("the lifepoint of my hero : \(kinght.lifePoint)")
            ///////////////////000000///////////////////////////////////
            player1!.specialCapacit00()
           player1!.lifePoint += 5
           player1!.powerDamage += 32
            viewPrintFight.text += ("the lifepoint of \(String(describing: player1!.name)) : \(String(describing: player1!.lifePoint))")
           
            print ("get \(String(describing: player1!.lifePoint)) , \(String(describing: player1!.powerDamage))")
         default:
           print("Error")
        }
        theWinnerIs(kinght: kinght, player: player1!)

        labelVa.text = "\(kinght.lifePoint)"
        
        BossLiveP.text = "\(String(describing: player1!.lifePoint))"
        
        
            
        

    }

    func theWinnerIs(kinght: Hero, player: Hero) {

        if (kinght.lifePoint <= 0) {
            print("The Winner is : \(String(describing: player1!.name)) at turn \(turn)")
            winner = true
        }
        if (player1!.lifePoint <= 0) {
            print("The winner is :\(kinght.name) at turn \(turn)")
            winner = true
        }
    }
    
    

    func rollingDice() -> Int {
        var dice: Int
        dice = Int.random(in: 1...21)
        numDice.text = "Dice : \(dice)"

        return dice
    }
    
    
    @IBAction func nextView(_ sender: Any) {
        
        
    }
    
    @IBAction func goToFight(segue: UIStoryboardSegue){
        
    }
    
    
    
    
    
    




}

extension ViewControllerTwo:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


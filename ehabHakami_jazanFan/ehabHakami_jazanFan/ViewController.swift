//
//  ViewController.swift
//  ehabHakami_jazanFan
//
//  Created by Ehab Hakami on 27/03/1443 AH.
//

import UIKit



class Hero {

    var name: String?
    var lifePoint: Int?
    var defense: Int?
    var powerDamage: Int?
    var weaponDamage: Int?
    var specialCapacity: Int?
    

    

    init(name: String?, lifePoint: Int? , defense: Int?, powerDamage: Int?, weaponDamage: Int?, specialCapacity: Int? ) {
        self.name = name
        self.lifePoint = lifePoint
        self.defense = defense
        self.powerDamage = powerDamage
        self.weaponDamage = weaponDamage
        self.specialCapacity = specialCapacity

    }

    func specialCapacit00() {
        lifePoint? += specialCapacity!
        print("The Hero \(name!) has healed \(specialCapacity!) point of life\(lifePoint! + specialCapacity!) and wapen \(weaponDamage! + specialCapacity!)")
    }
        func attackWithPower(){
            print("The Hero use \(name!) power and inflict \(powerDamage! + defense!)")
        }
        func attackWithWeapon() {
            print("The Hero use \(name!) weapon and inflict \(weaponDamage! + defense!)")
        }
        
        
    }
//struct Heroo{
//    var name: String?
//    var lifePoint: Int?
//    var defense: Int?
//    var powerDamage: Int?
//    var weaponDamage: Int?
//    var specialCapacity: Int?
//
//
//
//    mutating func restOfLife() {
//        if lifePoint! < 0 {
//            lifePoint = 0
//        }
//        print("Rest of life point for Knight : \(lifePoint!)")
//    }
//
//
//}

class Hero1: Hero{
    func restOfLife() {
            if lifePoint! < 0 {
                lifePoint = 0
            }
            print("Rest of life point for Hero : \(lifePoint!)")
    }
    
    
    
}

class Boss : Hero {
    func restOfLife() {
        if lifePoint! < 0 {
            lifePoint = 0
        }
        print("Rest of life for Boss 1 : \(lifePoint!)")
    }
    

}

class ViewController: UIViewController {
    @IBOutlet weak var labelVa: UILabel!
    
    @IBOutlet weak var BossLiveP: UILabel!
    
    @IBOutlet weak var viewPrintFight: UITextView!
    
    @IBOutlet weak var numDice: UILabel!
    
    @IBOutlet weak var labelNameValue: UILabel!
    
    @IBOutlet weak var labelDfValue: UILabel!
    
    @IBOutlet weak var labelPdValue: UILabel!
    
    @IBOutlet weak var labelWdValue: UILabel!
    
    @IBOutlet weak var labelsCValue: UILabel!
    
    
    @IBOutlet weak var bossFight: UILabel!
    
    @IBOutlet weak var bossDf: UILabel!
    
    
    
    @IBOutlet weak var bossPd: UILabel!
    
    
    @IBOutlet weak var bossWd: UILabel!
    
    @IBOutlet weak var buttonOf: UIButton!
    
    
    
    var playerBoss:Hero?
    var playerHerooo:Hero?
    
    
    var turn: Int = 0
    var winner = false
    
//    var knightAndheroo = Hero(name: "", lifePoint: 0, defense: 0, powerDamage: 0, weaponDamage: 0, specialCapacity: 0)
    var knightAndheroo = Hero (name: "", lifePoint: 0, defense: 0, powerDamage: 0, weaponDamage: 0, specialCapacity: 0)
    var boss2 = Hero(name: "Boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
    var boss1 = Hero(name: "Boss1", lifePoint: 240, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
    
    







    override func viewDidLoad() {
        super.viewDidLoad()
         //Do any additional setup after loading the view.
        let hero3 = 0
        if hero3 == 0 {
            playerHerooo = knightAndheroo
        }
        
        let boss = Int.random(in: 0...1)
        if boss == 0 {
            playerBoss = boss1
        }else{
            playerBoss = boss2
        }
        

        
//        knightAndheroo.name = labelNameValue.text!
//
//        knightAndheroo.defense = Int(labelDfValue.text!)
//
//        knightAndheroo.lifePoint = Int(labelVa.text!)
//
//        knightAndheroo.powerDamage = Int(labelPdValue.text!)
//
//        knightAndheroo.weaponDamage = Int(labelWdValue.text!)
//
//        knightAndheroo.specialCapacity = Int(labelsCValue.text!)
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        playerHerooo?.name = labelNameValue.text

        playerHerooo?.lifePoint = Int(labelVa.text!)

        playerHerooo?.defense = Int(labelDfValue.text!)

        playerHerooo?.powerDamage = Int(labelPdValue.text!)

        playerHerooo?.weaponDamage = Int(labelWdValue.text!)

        playerHerooo?.specialCapacity = Int(labelsCValue.text!)
        




    }
    

    @IBAction func rollingDice(_ sender: UIButton) {
        
        playerHerooo?.name = labelNameValue.text

        playerHerooo?.lifePoint = Int(labelVa.text!)

        playerHerooo?.defense = Int(labelDfValue.text!)

        playerHerooo?.powerDamage = Int(labelPdValue.text!)

        playerHerooo?.weaponDamage = Int(labelWdValue.text!)

        playerHerooo?.specialCapacity = Int(labelsCValue.text!)
        

        turn += 1
        
        if (playerBoss?.lifePoint ?? 0)! <= 0 {
            buttonOf.isEnabled = false
        } else if (playerHerooo?.lifePoint!)! <= 0 {
            buttonOf.isEnabled = false
            
        }
        
        if winner {
            viewPrintFight.text += ("Game Over ! ")
        
        } else {
            viewPrintFight.text += ("--- This is the turn N°\(turn)----")
            logicOfTheGame()
            viewPrintFight.text += ("========= This is the end of turn N°\(turn)======================================================")
        }
    }

    func logicOfTheGame() {

        switch rollingDiceee(){
         case 1...4:
            
            playerBoss?.lifePoint! -= (playerHerooo?.powerDamage!)!
            playerBoss?.lifePoint! += (playerBoss?.defense!)!
            viewPrintFight.text += ("\(String(describing: playerHerooo!.name!)) used powerDamage ")
            viewPrintFight.text += ("\(playerBoss?.name ?? "hh") Live Point : \(playerBoss?.lifePoint ?? 0)")
            zeroLivePoint()
        case 5...9:
            
            
            playerHerooo?.lifePoint! -= (playerBoss?.powerDamage!)!
            
            playerHerooo?.lifePoint! += (playerHerooo?.defense!)!
            
            viewPrintFight.text += ("\(String(describing: playerBoss!.name!)) used powerDamage ")
            viewPrintFight.text += ("\(playerHerooo?.name ?? "hh") Live Point : \(playerHerooo?.lifePoint ?? 0)")
            zeroLivePoint()

         case 10...14:
            
            playerBoss?.lifePoint! -= (playerHerooo?.weaponDamage!)!
            playerBoss?.lifePoint! += (playerBoss?.defense!)!
            viewPrintFight.text += ("\(String(describing: playerHerooo!.name!)) used weaponDamage ")
            viewPrintFight.text += ("\(playerBoss?.name ?? "hh") Live Point : \(playerBoss?.lifePoint ?? 0)")
            zeroLivePoint()



        case 15...19:
            playerHerooo?.lifePoint! -= (playerBoss?.weaponDamage!)!
            
            playerHerooo?.lifePoint! += (playerHerooo?.defense!)!
            
            viewPrintFight.text += ("\(String(describing: playerBoss!.name!)) used  ")
            viewPrintFight.text += ("\(playerHerooo?.name ?? "hh") Live Point : \(playerHerooo?.lifePoint ?? 0)")
            zeroLivePoint()


         case 21:
            playerHerooo!.lifePoint! += 5


            playerHerooo!.powerDamage! += 10
           viewPrintFight.text += ("the lifepoint of my hero : \(playerHerooo!.lifePoint!)")
            ///////////////////000000///////////////////////////////////
            playerBoss!.specialCapacit00()
            playerBoss!.lifePoint! += 5
          playerBoss!.powerDamage! += 32
            viewPrintFight.text += ("the lifepoint of \(String(describing: playerHerooo!.name)) : \(String(describing: playerBoss!.lifePoint!))")
            zeroLivePoint()
           
            print ("get \(Int(playerBoss!.lifePoint!)) , \( Int(playerBoss!.powerDamage!))")
            print ("get \(Int(playerHerooo!.lifePoint!)) , \( Int(playerHerooo!.powerDamage!))")
            
         default:
           print("Error")
        }
        
        
        func zeroLivePoint(){
            if playerBoss!.lifePoint! < 0 {
                playerBoss!.lifePoint! = 0
            } else if playerHerooo!.lifePoint! < 0 {
                
                playerHerooo!.lifePoint! = 0
                
            }
        }

        
        theWinnerIs(Hero: playerHerooo!, Boss: playerBoss!)
//
        labelVa.text = "\(playerHerooo!.lifePoint!)"
//
        BossLiveP.text = "\(playerBoss!.lifePoint!)"
//
        bossFight.text = playerBoss?.name!
        bossDf.text = "\(playerBoss!.defense!)"
        bossPd.text = "\(playerBoss!.powerDamage!)"
        bossWd.text = "\(playerBoss!.weaponDamage!)"
//
//
//
   }

    func theWinnerIs(Hero: Hero, Boss: Hero) {

        if (playerHerooo?.lifePoint ?? 0) <= 0 {
            viewPrintFight.text += ("The Winner is : \(String(describing: playerBoss!.name!)) at turn \(turn)")
            winner = true
        }
        if ((playerBoss?.lifePoint)! <= 0) {
            viewPrintFight.text += ("The winner is :\(playerHerooo!.name!) at turn \(turn)")
            winner = true
        }
    }
    
    

    func rollingDiceee() -> Int {
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


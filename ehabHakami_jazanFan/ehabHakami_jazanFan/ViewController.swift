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

//rest livepoint hero
class Hero1: Hero{
    
    func restOfLife() {
            if lifePoint! < 0 {
                lifePoint = 0
            }
            print("Rest of life point for Hero : \(lifePoint!)")
    }
}



//rest livepoint boss
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
    
    @IBOutlet weak var imageHero: UIImageView!
    
    
    
    
    var playerBoss:Hero?
    var playerHerooo:Hero?
    
    
    var turn: Int = 0
    var winner = false
    

    var knightAndheroo = Hero (name: "", lifePoint: 0, defense: 0, powerDamage: 0, weaponDamage: 0, specialCapacity: 0)
    
    var boss2 = Hero(name: "Boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
    
    var boss1 = Hero(name: "Boss1", lifePoint: 240, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
    
    







    override func viewDidLoad() {
        super.viewDidLoad()
         //Do any additional setup after loading the view.
        
        
        // knightAndheroo = name playerHerooo
        let hero3 = 0
        if hero3 == 0 {
            playerHerooo = knightAndheroo
        }
        
        
        //playerBoss random boss one or two
        let boss = Int.random(in: 0...1)
        if boss == 0 {
            playerBoss = boss1
        }else{
            playerBoss = boss2
        }
        

        

      
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        // add Value in knightAndheroo
        playerHerooo?.name = labelNameValue.text

        playerHerooo?.lifePoint = Int(labelVa.text!)

        playerHerooo?.defense = Int(labelDfValue.text!)

        playerHerooo?.powerDamage = Int(labelPdValue.text!)

        playerHerooo?.weaponDamage = Int(labelWdValue.text!)

        playerHerooo?.specialCapacity = Int(labelsCValue.text!)
        




    }
    

    @IBAction func rollingDice(_ sender: UIButton) {
        
        
        // add value in knightAndheroo
        playerHerooo?.name = labelNameValue.text

        playerHerooo?.lifePoint = Int(labelVa.text!)

        playerHerooo?.defense = Int(labelDfValue.text!)

        playerHerooo?.powerDamage = Int(labelPdValue.text!)

        playerHerooo?.weaponDamage = Int(labelWdValue.text!)

        playerHerooo?.specialCapacity = Int(labelsCValue.text!)
        

        turn += 1
        /// of button if Live point = 0
        if (playerBoss?.lifePoint ?? 0)! <= 0 {
            buttonOf.isEnabled = false
        } else if (playerHerooo?.lifePoint!)! <= 0 {
            buttonOf.isEnabled = false
            
        }
        
        
        /// print Game Over ! in text view if Live point = 0
        if winner {
            viewPrintFight.text += ("Game Over ! ")
        
            // print fight in textView and num tuern
        } else {
            viewPrintFight.text += ("--- This is the turn N°\(turn)----")
            logicOfTheGame()
            viewPrintFight.text += ("========= This is the end of turn N°\(turn)======================================================")
        }
        
        //end button rolingdice
    }

    func logicOfTheGame() {

        switch rollingDiceee(){
         case 1...4:
            
            //Hero used powerDamage
            
            playerBoss?.lifePoint! -= (playerHerooo?.powerDamage!)!
            playerBoss?.lifePoint! += (playerBoss?.defense!)!
            
            //print action in textview
            viewPrintFight.text += ("\(String(describing: playerHerooo!.name!)) used powerDamage ")
            viewPrintFight.text += ("\(playerBoss!.name ?? "hh") Live Point : \(playerBoss!.lifePoint ?? 0)")
            
            // zero number in LivePoint dont nigetiv number
            zeroLivePoint()
            
        case 5...9:
            
            //boss used powerDamage
            
            playerHerooo?.lifePoint! -= (playerBoss?.powerDamage!)!
            
            playerHerooo?.lifePoint! += (playerHerooo?.defense!)!
            
            //print action in textview
            viewPrintFight.text += ("\(String(describing: playerBoss!.name!)) used powerDamage ")
            viewPrintFight.text += ("\(playerHerooo!.name ?? "hh") Live Point : \(playerHerooo!.lifePoint ?? 0)")
            
            // zero number in LivePoint dont nigetiv number
            zeroLivePoint()

         case 10...14:
            
            //Hero used weaponDamage
            
            playerBoss?.lifePoint! -= (playerHerooo?.weaponDamage!)!
            playerBoss?.lifePoint! += (playerBoss?.defense!)!
            
            //print action in textview
            viewPrintFight.text += ("\(String(describing: playerHerooo!.name!)) used weaponDamage ")
            viewPrintFight.text += ("\(playerBoss!.name ?? "hh") Live Point : \(playerBoss!.lifePoint ?? 0)")
            
            // zero number in LivePoint dont nigetiv number
            zeroLivePoint()



        case 15...19:
            
            //boss used weaponDamage
            
            playerHerooo?.lifePoint! -= (playerBoss?.weaponDamage!)!
            
            playerHerooo?.lifePoint! += (playerHerooo?.defense!)!
            
            viewPrintFight.text += ("\(String(describing: playerBoss!.name!)) used  ")
            viewPrintFight.text += ("\(playerHerooo!.name ?? "hh") Live Point : \(playerHerooo!.lifePoint ?? 0)")
            zeroLivePoint()


         case 21:
            
            // boos Spitail capacity in hero
            
            if playerHerooo!.name == "knight" {
                playerHerooo!.lifePoint! += 5
                playerHerooo!.weaponDamage! += 10
                
                viewPrintFight.text += ("the live point of  :\(String(describing: playerHerooo!.name!)) lifePoint +  = 5 ")
                
                viewPrintFight.text += ("the weaponDamage of  :\(String(describing: playerHerooo!.name!)) weaponDamage + 10 ")
                
            }else if playerHerooo?.name == "thif" {
                playerHerooo?.weaponDamage! += 35
                playerHerooo!.lifePoint! += 5
                
                viewPrintFight.text += ("the live point of  :\(String(describing: playerHerooo!.name!)) lifePoint +  = 5 ")
                
                viewPrintFight.text += ("the weaponDamage of  :\(String(describing: playerHerooo!.name!)) weaponDamage + 35 ")
                
            }else {
                playerHerooo?.powerDamage! += 10
                playerHerooo!.lifePoint! += 35
                
                viewPrintFight.text += ("the live point of  :\(String(describing: playerHerooo!.name!)) lifePoint +  = 5 ")
                
                viewPrintFight.text += ("the powerDamage of  :\(String(describing: playerHerooo!.name!)) powerDamage + 10 = \(playerHerooo!.powerDamage!)")
            }

            
            
            ////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            
            // boos Spitail capacity in fight
            
            if playerBoss?.name == "Boss1" {
                playerBoss?.lifePoint! += 5
                playerBoss?.powerDamage! += 22
                
                viewPrintFight.text += ("the live point of  :\(String(describing: playerBoss!.name!)) powerDamage +  = 5 ")

                
                viewPrintFight.text += ("the powerDamage of :\(String(describing: playerBoss!.name!)) powerDamage +  = 22 ")
                
                
            } else {
                
                playerBoss!.lifePoint! += 5
              playerBoss!.powerDamage! += 32
                
                viewPrintFight.text += ("the live point of  :\(String(describing: playerBoss!.name!)) powerDamage +  = 5 ")

                
                viewPrintFight.text += ("the powerDamage of :\(String(describing: playerBoss!.name!)) powerDamage +  = 32 ")
                
            }
            
            
           // test opertoin with print
            print ("get \(Int(playerBoss!.lifePoint!)) , \( Int(playerBoss!.powerDamage!))")
            print ("get \(Int(playerHerooo!.lifePoint!)) , \( Int(playerHerooo!.powerDamage!))")
            
            
         default:
           print("Error")
        }
        
        // zero number in LivePoint dont nigetiv number
        func zeroLivePoint(){
            if playerBoss!.lifePoint! < 0 {
                playerBoss!.lifePoint! = 0
            } else if playerHerooo!.lifePoint! < 0 {
                
                playerHerooo!.lifePoint! = 0
                
            }
        }

      // func theWinnerIs
        theWinnerIs(Hero: playerHerooo!, Boss: playerBoss!)

        
//UI change Value label hero
        labelVa.text = "\(playerHerooo!.lifePoint!)"
        labelDfValue.text = "\(playerHerooo!.defense!)"
        labelPdValue.text = "\(playerHerooo!.powerDamage!)"
        labelWdValue.text = "\(playerHerooo!.weaponDamage!)"
        
        
//UI change Value label boss
        BossLiveP.text = "\(playerBoss!.lifePoint!)"
        bossFight.text = playerBoss?.name!
        bossDf.text = "\(playerBoss!.defense!)"
        bossPd.text = "\(playerBoss!.powerDamage!)"
        bossWd.text = "\(playerBoss!.weaponDamage!)"
        
        
   }
    
    

    // The Winner print name hero or boss and number turn
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
    
    
// range switch in func logicOfTheGame
    func rollingDiceee() -> Int {
        var dice: Int
        dice = Int.random(in: 1...21)
        numDice.text = "Dice : \(dice)"

        return dice
    }
    
    // button in ViewController name button + go next view
    @IBAction func nextView(_ sender: Any) {
        
        
    }
    // segue botton in ViewControllerTwo name button Create The New Challenger
    @IBAction func goToFight(segue: UIStoryboardSegue){
        
    }
    
    
    
    
    
    




}





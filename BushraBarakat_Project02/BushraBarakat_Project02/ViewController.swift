//
//  ViewController.swift
//  BushraBarakat_Project02
//
//  Created by Bushra Barakat on 27/03/1443 AH.
//

import UIKit
//struct Heros {
//    var lifePoint : Int?
//    var defense : Int?
//    var powerDamage : Int?
//    var weaponDamage : Int?
//    var specialCapacity : Int
//
//    }

struct Boss {
    var lifePoint : Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var spcialCapacity : Int
    func specialCapacity() {
        print ("\(lifePoint) & \(powerDamage)")
    }
}

struct Hero {
    var lifePoint : Int?
    var defense : Int?
    var powerDamage : Int?
    var weaponDamage : Int?
    var specialCapacity : Int?
    
}



class ViewController: UIViewController {
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var labelHero1: UILabel!
    @IBOutlet weak var labelHero2: UILabel!
    @IBOutlet weak var labelHero3: UILabel!
    @IBOutlet weak var labelHero4: UILabel!
    @IBOutlet weak var labelHero5: UILabel!
    
    @IBOutlet weak var bossImage: UIImageView!
    @IBOutlet weak var descripationGame: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        randomBoss()
        
        
    }
        
    var boss1 = Boss(lifePoint: 250, defense: 30, powerDamage:20, weaponDamage: 45, spcialCapacity: 110)

    var boss2 = Boss(lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, spcialCapacity: 75)

    func randomBoss(){
    let conect = Int.random(in:1...2)
    switch conect {
    case 1:
        bossImage.image = UIImage(named: "bossImage1")
        label1.text = String (boss1.lifePoint)
        label2.text = String (boss1.defense)
        label3.text = String (boss1.powerDamage)
        label4.text = String (boss1.weaponDamage)
        label5.text = String (boss1.spcialCapacity)
    case 2:
        bossImage.image = UIImage(named: "bossImage2")
        label1.text = String (boss2.lifePoint)
        label2.text = String (boss2.defense)
        label3.text = String (boss2.powerDamage)
        label4.text = String (boss2.weaponDamage)
        label5.text = String (boss2.spcialCapacity)
        
    default:
       print  ("no number")
    }
    
    }
        

    
    var turn = 0
    var winner = false
    func rollingDice(_ sender: Any) {
        turn += 1
        if winner {
            print("Game Over ! ")
        } else {
            print("------- This is the turn N°\(turn)--------")
            logicOfTheGame()
            print("============== This is the end of turn N°\(turn)===============")
        }
        
    func logicOfTheGame(){
        
        
            
            
            
            
            
        }
        
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue){
    }
}






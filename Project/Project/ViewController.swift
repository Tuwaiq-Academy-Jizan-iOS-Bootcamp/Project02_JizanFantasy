//
//  ViewController.swift
//  Project
//
//  Created by Abdulrahman Gazwani on 28/03/1443 AH.
//

import UIKit

protocol Hero {
    var lifePoint : Int {get set}
    var defense : Int {get set}
    var powerDamge : Int {get set}
    var weaponDamge : Int { get set}
    var specialCapacity : Int {get set}
    
}

class Knight : Hero {
    var lifePoint: Int
    var defense: Int
    var powerDamge: Int
    var weaponDamge: Int
    var specialCapacity: Int
    init(lifePoint:Int,defense:Int,powerDamge:Int,weaponDamge:Int,specialCapacity:Int){
        self.lifePoint = lifePoint
        self.defense = defense
        self.powerDamge = powerDamge
        self.weaponDamge = weaponDamge
        self.specialCapacity = specialCapacity
    }
}
class Wizard : Hero {
    var lifePoint: Int
    var defense: Int
    var powerDamge: Int
    var weaponDamge: Int
    var specialCapacity: Int
    init(lifePoint:Int,defense:Int,powerDamge:Int,weaponDmge:Int,specialCapacity:Int){
        self.lifePoint = lifePoint
        self .defense = defense
        self . powerDamge = powerDamge
        self.weaponDamge = weaponDmge
        self.specialCapacity = specialCapacity
        
    }
}
class Thief : Hero {
    var lifePoint: Int
    var defense: Int
    var powerDamge: Int
    var weaponDamge: Int
    var specialCapacity: Int
    
    init(lifePoint:Int,defense:Int,powerDamge:Int,weaponDamge:Int,specialCapacity:Int){
        self.lifePoint = lifePoint
        self.defense = defense
        self.powerDamge = powerDamge
        self.weaponDamge = powerDamge
        self.specialCapacity = specialCapacity
    }
}
class Boss1 : Hero {
    var lifePoint: Int
    
    var defense: Int
    
    var powerDamge: Int
    
    var weaponDamge: Int
    
    var specialCapacity: Int
    
    init(lifePoint:Int,defense:Int,powerDamge:Int,weaponDamge:Int,specialCapacity:Int){
        self.lifePoint = lifePoint
        self.defense = defense
        self.powerDamge = powerDamge
        self.weaponDamge = weaponDamge
        self.specialCapacity = specialCapacity
        
    }
}
class Boss2 : Hero {
    var lifePoint: Int
    var defense: Int
    var powerDamge: Int
    var weaponDamge: Int
    var specialCapacity: Int
    init (lifePoint:Int,defense:Int,powerDamge: Int
          , weaponDamge: Int
          ,specialCapacity: Int){
        self.lifePoint = lifePoint
        self.defense = defense
        self.powerDamge = powerDamge
        self.weaponDamge = weaponDamge
        self.specialCapacity = specialCapacity
    }
}

class ViewController: UIViewController {
    
    //var knight = Knight(lifePoint: 60, defense: 20, powerDamge: 30,
    //                weaponDamge: 40, specialCapacity: 100)
    //
    //var wizard = Wizard(lifePoint: 90, defense: 15, powerDamge: 70, weaponDmge: 20, specialCapacity: 50)
    //
    //var thief = Thief(lifePoint: 65, defense: 25, powerDamge: 15, weaponDamge: 30, specialCapacity: 75)
    
    var boss1 = Boss1(lifePoint: 250, defense: 30, powerDamge: 20, weaponDamge: 45, specialCapacity: 110)
    
    var boss2 = Boss2(lifePoint: 170, defense: 25, powerDamge: 15, weaponDamge: 30, specialCapacity: 75)
    let randomBoss = Int.random(in: 1...2)
    
    
    
    
    
    //PLAYER 1
    @IBOutlet weak var lpPlayer1: UILabel!
    @IBOutlet weak var dfPlayer1: UILabel!
    @IBOutlet weak var pdPlayer1: UILabel!
    @IBOutlet weak var wdPlayer1: UILabel!
    @IBOutlet weak var scPlayer1: UILabel!
    
    
    //PLAYER 2
    
    @IBOutlet weak var imagePlayer2: UIImageView!
    
    @IBOutlet weak var lPPlayer2: UILabel!
    @IBOutlet weak var dfPlayer2: UILabel!
    @IBOutlet weak var pdPlayer2: UILabel!
    @IBOutlet weak var wdPlayer2: UILabel!
    @IBOutlet weak var scPlayer2: UILabel!
    
    
    // VIEW IMAGE
    var imageN = ["Boss1","Boss2"]
    
    @IBOutlet weak var boosimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading
        
        boosimage.image = UIImage(named:imageN[Int.random(in: 0...1)])
        
        
        
       // func bossSwitch()
          
              switch boosimage.image
          {
          case UIImage(named: imageN [0]):
              lpPlayer1.text = "\(boss1.lifePoint)"
                        dfPlayer1.text = "\(boss1.defense)"
                        pdPlayer1.text = "\(boss1.powerDamge)"
                         wdPlayer1.text = "\(boss1.weaponDamge)"
                        scPlayer1.text = "\(boss1.specialCapacity)"
          case UIImage(named:imageN[1]):
                      lpPlayer1.text = "\(boss2.lifePoint)"
                      dfPlayer1.text = "\(boss2.defense)"
                      pdPlayer1.text = "\(boss2.powerDamge)"
                     wdPlayer1.text = "\(boss2.weaponDamge)"
                     scPlayer1.text = "\(boss2.specialCapacity)"
            default:
              print("Error")
            }
          
//
//        if randomBoss == 1 {
//            pdPlayer1.text = "\(boss1.lifePoint)"
//            dfPlayer1.text = "\(boss1.defense)"
//            pdPlayer1.text = "\(boss1.powerDamge)"
//            wdPlayer1.text = "\(boss1.weaponDamge)"
//            scPlayer1.text = "\(boss1.specialCapacity)"
//        }else {
//            pdPlayer1.text = "\(boss2.lifePoint)"
//            dfPlayer1.text = "\(boss2.defense)"
//            pdPlayer1.text = "\(boss2.powerDamge)"
//            wdPlayer1.text = "\(boss2.weaponDamge)"
//            scPlayer1.text = "\(boss2.specialCapacity)"
//        }
        //  lpPlayer1.text = "\(boos1.lifePoint)"
    
    
    }
    
   // var howIsTurn = true
    @IBOutlet weak var diceNumber: UILabel!
    @IBAction func rollDice(_ sender: Any) {
        let dice = Int.random(in: 1...20)
    diceNumber.text = "\(dice)"
        print("Dice = \(dice)")
//if howIsTurn == true {
//            switch dice {
//            case 1...9:
//                let bDamageToHealth = Int(pdPlayer2.text!)! - Int(dfPlayer1.text!)!
//                        if bDamageToHealth <= 0 {
//                    Int(lpPlayer1.text!)! -= 0
//                }else {
//                    bossLP -= bDamageToHealth
//                }
//            case 10...19:
//                let bDamageToHealth = Int(wdPlayer2.text!)! - bossDF
//                if bDamageToHealth <= 0 {
//                    bossLP -= 0
//                }else {
//                    bossLP -= bDamageToHealth
//                }
//            case 20:
//                let bDamageToHealth = Int(scPlayer2.text!)! - bossDF
//                if bDamageToHealth <= 0 {
//                    bossLP -= 0
//                }else {
//                    bossLP -= bDamageToHealth
//                }
//                Int(wdPlayer2.text!)! += 10
//                
//            default: print("Error")
//            }
//        }
//        
        
        
        
        
        
    }
    
    @IBAction func nextPage(_ sender: Any) {
        performSegue(withIdentifier: "GoToVC2", sender: self)
    }
    @IBAction func saveName(segue:UIStoryboardSegue){
    }
       
}

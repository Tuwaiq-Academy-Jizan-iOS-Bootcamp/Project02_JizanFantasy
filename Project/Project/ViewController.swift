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

var boos1 = Boss1(lifePoint: 250, defense: 30, powerDamge: 20, weaponDamge: 45, specialCapacity: 10)

var boos2 = Boss2(lifePoint: 170, defense: 25, powerDamge: 15, weaponDamge: 30, specialCapacity: 75)

   
    //PLAYER 1
    @IBOutlet weak var lpPlayer1: UILabel!
    @IBOutlet weak var dfPlayer1: UILabel!
    @IBOutlet weak var pdPlayer1: UILabel!
    @IBOutlet weak var wdPlayer1: UILabel!
    @IBOutlet weak var scPlayer1: UILabel!
    
    //PLAYER 2
    
    @IBOutlet weak var imagePlayer2: UIImageView!
    
    @IBOutlet weak var lPPlayer2: UILabel!
    @IBOutlet weak var dFPlayer2: UILabel!
    @IBOutlet weak var pdPlayer2: UILabel!
    @IBOutlet weak var wdPlayer2: UILabel!
    @IBOutlet weak var scPlayer2: UILabel!
    
    
    // VIEW IMAGE
    var imageN = ["",""]
    @IBOutlet weak var boosimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading
        
        boosimage.image = UIImage(named: imageN[Int.random(in:0...1)])
        
        lpPlayer1.text = "\(boos1.lifePoint)"
    }
      
    @IBOutlet weak var diceNumber: UILabel!
    @IBAction func rollDice(_ sender: Any) {
        diceNumber.text = "\(rollNumber())"
        func rollNumber()-> Int
            {
        var dice: Int
              dice = Int.random(in: 1...20)
              print("Dice = \(dice)")
              return dice
            }
    }
   
    @IBAction func nextPage(_ sender: Any) {
        performSegue(withIdentifier: "GoToVC2", sender: self)
    }
    @IBAction func saveName(segue:UIStoryboardSegue)
      {
      }
   
}


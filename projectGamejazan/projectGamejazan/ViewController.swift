//
//  ViewController.swift
//  projectGamejazan
//
//  Created by grand ahmad on 28/03/1443 AH.
//

import UIKit

protocol Hero {
    var name: String {get set}
    var lifePoint: Int {get}
    var defense: Int {get set}
    var powerDamage: Int {get set}
    var weapon: Int {get set}
    var specialCapcity: Int{get set}
}
//struct Knight: Hero{
//    var name: String
//    var lifePoint: Int
//    var powerDamge: Int
//    var weapon: Int
//    var spicalCapcity: Int
//}
//struct Wizard: Hero{
//    var name: String
//    var lifePoint: Int
//    var powerDamge: Int
//    var weapon: Int
//    var spicalCapcity: Int
//}
//struct Thief: Hero{
//    var name: String
//    var lifePoint: Int
//    var powerDamge: Int
//    var weapon: Int
//    var spicalCapcity: Int
//}
//var knight = Knight(name: "knight", lifePoint: 60, powerDamge: 30, weapon: 40, spicalCapcity: 100)
//var wizard = Wizard(name: "wizard", lifePoint: 90, powerDamge: 70, weapon: 20, spicalCapcity: 50)
//var thief = Thief(name: "thief", lifePoint: 65, powerDamge: 15, weapon: 30, spicalCapcity: 75)
class Boss: Hero {
    var name: String
    var lifePoint: Int
    var defense: Int
    var powerDamage: Int
    var weapon: Int
    var specialCapcity: Int
    init(name:String, lifePoint:Int, defense: Int, powerDamage:Int, weapon:Int, specialCapcity:Int){
        self.name = name
        self.lifePoint = lifePoint
        self.defense = defense
        self.powerDamage = powerDamage
        self.weapon = weapon
        self.specialCapcity = specialCapcity
    }
}
var knight = Boss(name: "knight", lifePoint: 60, defense:  20, powerDamage: 30, weapon: 40, specialCapcity: 100)
var wizard = Boss(name: "wizard", lifePoint: 90, defense:  15, powerDamage: 70, weapon: 20, specialCapcity: 50)
var thief = Boss(name: "thief", lifePoint: 65, defense:  25, powerDamage: 15, weapon: 30, specialCapcity: 75)
var bossOne = Boss(name: "Boss1", lifePoint: 250, defense:  30, powerDamage: 20, weapon: 45, specialCapcity: 110)
var bossTwo = Boss(name: "Boss2", lifePoint: 170, defense:  25, powerDamage: 15, weapon: 30, specialCapcity: 75)


class ViewController: UIViewController {
    var array = ["imageOne","imageTwo"]
    
    @IBOutlet weak var bossImage: UIImageView!
    @IBOutlet weak var playerImage: UIImageView!
    //    Booses
    @IBOutlet weak var bossPointLabel: UILabel!
    @IBOutlet weak var bossDFLabel: UILabel!
    @IBOutlet weak var bossPDLabel: UILabel!
    @IBOutlet weak var bossWdLabel: UILabel!
    @IBOutlet weak var bossSCLabel: UILabel!
    //   Player
//    نربطهم كلهم
    
    
    
    
    
    
    
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var rolling: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView()
    }
    func rollDice() {
        let result: Int = .random(in: 1...20)
        //            button.setTitle("dice: \(result)", for: .normal)
        switch result {
        case 1...9:
            textLabel.text = "rolling dice for Player"
            print("rolling dice for Player")
        case 10...19:
            textLabel.text = "Weapon Damgage"
            print("Weapon Damgage")
        case 20:
            textLabel.text = "Special Capacity"
            print("Special Capacity")
        default: print("Good Luck 😂🦦!")
        }
        rolling.text = "\(result)"
    }
    @IBAction func roolingDice(_ sender: Any) {
        rollDice()
    }
    
    func imageView() {
        let images: Int = .random(in: 0...array.count - 1)
        bossImage.image = UIImage(named: array[images])
    }
   
}


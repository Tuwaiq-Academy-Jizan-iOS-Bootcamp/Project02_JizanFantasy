//
//  ViewController.swift
//  Fatan Alfifi Project2
//
//  Created by Faten Abdullh salem on 27/03/1443 AH.
//

import UIKit
class Hero {

var name:String
var lifePoint:Int
var defense:Int
var powerDamage:Int
var weaponDamage:Int
var specialCapacity:Int
init(name:String,lifePoint:Int,defense:Int,powerDamage:Int,weaponDamage:Int,specialCapacity:Int){
    
    self.name = name
    self.lifePoint = lifePoint
    self.defense = defense
    self.powerDamage = powerDamage
    self.weaponDamage = weaponDamage
    self.specialCapacity = specialCapacity
}
}
func AA () {
}
class Knight:Hero{
}
class Wizard:Hero{
}
class Thief:Hero{
}
class Boss1:Hero{
}
class Boss2:Hero{
}
class ViewController: UIViewController {
    
    @IBOutlet weak var labelName1: UILabel!
    @IBOutlet weak var labelLP1: UILabel!
    @IBOutlet weak var labelDF1: UILabel!
    @IBOutlet weak var labelPD1: UILabel!
    @IBOutlet weak var labelWD1: UILabel!
    @IBOutlet weak var labelSC1: UILabel!
 
    @IBOutlet weak var labelName2: UILabel!
    @IBOutlet weak var labelLP2: UILabel!
    @IBOutlet weak var labelDF2: UILabel!
    @IBOutlet weak var labelPD2: UILabel!
    @IBOutlet weak var labelWD2: UILabel!
    @IBOutlet weak var labelSC2: UILabel!
    @IBOutlet weak var dice: UILabel!
    

    
@IBAction func RollingDice(_ sender: Any) {
    dice.text = String( Int.random(in:1...20))
    }
    
var knight = Knight(name:"Knigt", lifePoint: 60, defense: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100)
var wizard = Wizard(name: "Wizard", lifePoint: 90, defense: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50)
var thief = Thief(name:"Thief", lifePoint: 65, defense:25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
var boss1 = Boss1(name: "Boss1", lifePoint: 250, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
var boss2 = Boss2(name: "Boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
var rad = Int.random (in:1...2)
    
switch rad {
    
case 1 : labelName1.text = boss1.name
labelLP1.text = String(boss1.lifePoint)
labelDF1.text = String(boss1.defense)
labelPD1.text = String(boss1.powerDamage)
labelWD1.text = String(boss1.weaponDamage)
labelSC1.text = String(boss1.specialCapacity)

default:
    
labelName1.text = boss2.name
labelLP1.text = String(boss2.lifePoint)
labelDF1.text = String(boss2.defense)
labelPD1.text = String(boss2.powerDamage)
labelWD1.text = String(boss2.weaponDamage)
labelSC1.text = String(boss2.specialCapacity)
}
}
}

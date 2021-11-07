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
    
    @IBOutlet weak var imageBoss: UIImageView!
    @IBOutlet weak var labelName1: UILabel!
    @IBOutlet weak var labelLP1: UILabel!
    @IBOutlet weak var labelDF1: UILabel!
    @IBOutlet weak var labelPD1: UILabel!
    @IBOutlet weak var labelWD1: UILabel!
    @IBOutlet weak var labelSC1: UILabel!
    
    
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var labelName2: UILabel!
    @IBOutlet weak var labelLP2: UILabel!
    @IBOutlet weak var labelDF2: UILabel!
    @IBOutlet weak var labelPD2: UILabel!
    @IBOutlet weak var labelWD2: UILabel!
    
    @IBOutlet weak var labelSC2: UILabel!
    
    @IBOutlet weak var dice: UILabel!
    
@IBOutlet weak var Description: UILabel!
    
override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
    randm()
    }
    
    
//@IBAction func newPlayer(_ sender: Any) {
//  performSegue(withIdentifier: "AB", sender:self)
//   }
    var buttonTurn = false
@IBAction func RollingDice(_ sender: Any) {
    if labelLP1.text! > "0" && labelLP2.text! > "0"{
    if buttonTurn == true {
        bossTrun()
    }else{
        heroTurn()
    }
    }else{
     if   labelLP1.text! > " 0 " {
         labelPD2.text = "0"
            Description.text = "boss winner"
        }else{
            labelPD1.text = "0"
            Description.text = "end"
            Description.text = "hero winner"
        }
        
    }
//let reules:Int = .random(in:1...20 )
//    dice.text = String (reules)
//switch reules {
//case 1...9:
//Description.text = "Power Damage"
//    print ("Power Damage")
//case 10...19:
//    Description.text = "weapon Damage"
//    print ("weapon Damage")
//case 20 :
//    Description.text = "Special Capacity"
//    print ("Special Capacity")
//default:
//    print("Geam Over !!!")
//}
}

var knight = Knight(name:"Knigt", lifePoint: 60, defense: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100)
var wizard = Wizard(name: "Wizard", lifePoint: 90, defense: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50)
var thief = Thief(name:"Thief", lifePoint: 65, defense:25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
var boss1 = Boss1(name: "Boss1", lifePoint: 250, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
var boss2 = Boss2(name: "Boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)

func randm(){
let rade = Int.random(in: 1...2)
switch rade {
    
case 1 :
imageBoss.image = imageHero.image

labelName1.text = boss1.name
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
labelSC1.text = String(boss1.specialCapacity)
}
}
    

@IBAction func rootViewController(segue:UIStoryboardSegue){
print("Unwind to Root ViewController")
}
    
    
    
func heroTurn(){
      //  bossHERO()
var lPH = Int(labelLP2.text!)!
var DFH = Int (labelDF2.text!)!
var PDH = Int(labelPD2.text!)!
var WDH = Int(labelWD2.text!)!
var SCH = Int(labelSC2.text!)!
    
var lPB = Int(labelLP1.text!)!
var DFB = Int(labelDF1.text!)!
var PDB = Int(labelPD1.text!)!
var WDB = Int(labelWD1.text!)!
var SCB = Int(labelSC1.text!)!
    
let reules = Int.random(in:1...20 )
 switch reules {
    case 1...9:
    Description.text = "Power Damage"
    PDH -= DFB
    if PDH < 0 {
    PDH = 0
    }
    lPB -= PDH
     labelLP1.text = String(lPB)
    print ("Power Damage")
    case 10...19:
    Description.text = "weapon Damage"
    WDH -= DFB
    if WDH < 0{
    WDB = 0
        }
        lPB -= WDB
     labelLP1.text = String(lPB)
    print ("weapon Damage")
    case 20 :
    Description.text = "Special Capacity"
    //SCB -=
     SCH -= DFB
     if SCH < 0{
     SCB = 0
         }
         lPB -= SCB
      labelLP1.text = String(lPB)
        
print ("Special Capacity")
            default:
print("Geam Over !!!")
}
    buttonTurn = true
}
func bossTrun(){
let reules = Int.random(in:1...20 )
    
        var lPH = Int(labelLP2.text!)!
        var DFH = Int (labelDF2.text!)!
        var PDH = Int(labelPD2.text!)!
    var WDH = Int(labelWD2.text!)!
    var SCH = Int(labelSC2.text!)!
        
            
        var lPB = Int(labelLP1.text!)!
        var DFB = Int(labelDF1.text!)!
        var PDB = Int(labelPD1.text!)!
        var WDB = Int(labelWD1.text!)!
        var SCB = Int(labelSC1.text!)!

    dice.text = String (reules)
    switch reules {

case 1...9:
Description.text = "Power Damage"
PDB -= DFB
if PDB < 0 {
PDB = 0
}
        lPH -= PDB
        labelLP2.text = String(lPH)
print ("Power Damage")
case 10...19:
Description.text = "weapon Damage"
WDB -= DFB
if WDB < 0{
WDB = 0
    }
lPH -= WDB
        labelLP2.text = String(lPH)
print ("weapon Damage")
case 20 :
Description.text = "Special Capacity"
//SCB -=
        SCB -= DFB
        if SCB < 0{
        SCB = 0
            }
        lPH -= SCB
        labelLP2.text = String(lPH)
    
print ("Special Capacity")
        default:
print("Geam Over !!!")
}
        buttonTurn = false
    }
    
}

    




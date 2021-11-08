// Created by حمد الحريصي on 03/11/2021.
import UIKit

class Player1
{
var name:String
var lifePoint:Int
var defense:Int
var powerDamage:Int
var Weapondamage:Int
var Specialcapacity:Int
init(name:String,lifePoint:Int,defense:Int,powerDamage:Int,Weapondamage:Int,Specialcapacity:Int)
    {
    self.name = name
    self.lifePoint = lifePoint
    self.defense = defense
    self.powerDamage = powerDamage
    self.Weapondamage = Weapondamage
    self.Specialcapacity = Specialcapacity
    }
}
class Boss1:Player1
    {
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, Weapondamage: Int, Specialcapacity: Int)
    {
    super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, Weapondamage: Weapondamage, Specialcapacity: Specialcapacity)
    }
    }
class Boss2:Player1
    {
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, Weapondamage: Int, Specialcapacity: Int)
    {
    super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, Weapondamage: Weapondamage, Specialcapacity:   Specialcapacity)
    }
    }
 class Player2
{
     var name:String
     var lifePoint:Int
     var defense:Int
     var powerDamage:Int
     var Weapondamage:Int
     var Specialcapacity:Int
     init(name:String,lifePoint:Int,defense:Int,powerDamage:Int,Weapondamage:Int,Specialcapacity:Int)
         {
             self.name = name
             self.lifePoint = lifePoint
             self.defense = defense
             self.powerDamage = powerDamage
             self.Weapondamage = Weapondamage
             self.Specialcapacity = Specialcapacity
         }
 }
class Wizard:Player2
{
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, Weapondamage: Int, Specialcapacity: Int)
    {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, Weapondamage: Weapondamage, Specialcapacity: Specialcapacity)
    }
}
class Thief:Player2
{
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, Weapondamage: Int, Specialcapacity: Int)
    {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, Weapondamage: Weapondamage, Specialcapacity: Specialcapacity)
    }
}
class Knight:Player2
{
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, Weapondamage: Int, Specialcapacity: Int)
    {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, Weapondamage: Weapondamage, Specialcapacity: Specialcapacity)
    }
}
struct Weapon
{
  var name:String
  var damage:Int
  var attackAction:String
}
struct Power
{
  var name:String
  var damage:Int
  var attackAction:String
  var specialEffect:Int
}
class ViewController: UIViewController
{
    
    @IBOutlet var vsLabel: UILabel!
    @IBOutlet var lpHeroLabel: UILabel!
    @IBOutlet var dfHeroLabel: UILabel!
    @IBOutlet var pdHeroLabel: UILabel!
    @IBOutlet var wdHeroLabel: UILabel!
    @IBOutlet var scHeroLabel: UILabel!
    
    @IBOutlet var turnLabel: UILabel!
    
    @IBOutlet var descrLabel: UILabel!
    @IBOutlet var descrLabel2: UILabel!
    @IBOutlet var descrLabel3: UILabel!
    
    @IBOutlet var heroImageinVC1: UIImageView!
    @IBOutlet var bossImage: UIImageView!
    @IBOutlet var diceLabel: UILabel!
    
     @IBOutlet var bossLP1: UILabel!
     @IBOutlet var bossDF1: UILabel!
     @IBOutlet var bossPD1: UILabel!
     @IBOutlet var bossWD1: UILabel!
     @IBOutlet var bossSC1: UILabel!

    
    // boss array images
    var myImages2 = ["boss1","boss2"]
    
    // champs array images
    var myImages = ["Wizard","Thief","Knight"]
    override func viewDidLoad()
    {
    super.viewDidLoad()
        
    // random boss between boss1 and boss2
    bossImage.image = UIImage(named: myImages2[Int.random(in: 0...1)])
    
    bossSwitch()

    }
    
    
 
    
    
    
//    func description()
//    {
//        boos2.defense += boos2.lifePoint
//    }
//
    

var turnNumber = 1
    
var boos1 = Boss1(name: "boss1", lifePoint: 250, defense: 30, powerDamage: 20, Weapondamage: 45, Specialcapacity: 110)
var boos2 = Boss2(name: "boss2", lifePoint: 170, defense: 25, powerDamage: 15, Weapondamage: 30, Specialcapacity: 75)
    var wazerd = Wizard(name: "Wizard", lifePoint: 90, defense: 15, powerDamage: 70, Weapondamage: 20, Specialcapacity: 50)
var thief = Thief(name: "Thief", lifePoint: 65, defense: 25, powerDamage: 15, Weapondamage: 30, Specialcapacity: 70)
var knight = Knight(name: "Knight", lifePoint: 60, defense: 20, powerDamage: 30, Weapondamage: 40, Specialcapacity: 100)
var hero = Player1(name: "", lifePoint: 0, defense: 0, powerDamage: 0, Weapondamage: 0, Specialcapacity: 0 )
var wepan = Weapon(name: "M4", damage: -30, attackAction: "-20 LP")
var power = Power(name: "healing", damage: -50, attackAction: "no action", specialEffect: 30)
    
    
    
    
    // func for switch Energies between boss1 and boss2
    func bossSwitch()
    {
    switch bossImage.image
    {
    case UIImage(named: myImages2[0]):
    bossLP1.text = "\(boos1.lifePoint)"
    bossDF1.text = "\(boos1.defense)"
    bossPD1.text = "\(boos1.powerDamage)"
    bossWD1.text = "\(boos1.Weapondamage)"
    bossSC1.text = "\(boos1.Specialcapacity)"
        
    case UIImage(named: myImages2[1]):
    bossLP1.text = "\(boos2.lifePoint)"
    bossDF1.text = "\(boos2.defense)"
    bossPD1.text = "\(boos2.powerDamage)"
    bossWD1.text = "\(boos2.Weapondamage)"
    bossSC1.text = "\(boos2.Specialcapacity)"
    default:
     print("ERORR ?!$##%#$%^@$^@")
    }
    }
 // if players LP = 0
 var dead = 0
    
@IBAction func rollDiceButton(_ sender: UIButton)
{
    
    
  //  hero.lifePoint = "\(lpHeroLabel)"
//descrLabel.text = "turn \(turnNumber)"

turnLabel.text = "Turn = \(turnNumber)"
turnNumber += 1
print("Turn Number  \(turnNumber)")

diceLabel.text = "Dice = \(rollingDice())"
func rollingDice() -> Int
{
    
var dice: Int
dice = 1//Int.random(in: 1...20 )
print("Dice = \(dice)")
        
            
if dice == 1
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
    wazerd.lifePoint -= boos1.powerDamage
    wazerd.lifePoint -= boos2.powerDamage
    boos1.lifePoint -= wazerd.powerDamage
    boos2.lifePoint -= wazerd.powerDamage
    print(boos1.lifePoint)
    print(boos2.lifePoint)
    print(wazerd.lifePoint)
print("Wazerd")
case UIImage(named: myImages[1]):

    
    
print("Thief")
case UIImage(named: myImages[2]):

    
    
print("Knight")
default:
print("Error")
}
}
else if dice == 2
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 3
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 4
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 5
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 6
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 7
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 8
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 9
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 10
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 11
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 12
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 13
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 14
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 15
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 16
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 17
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 18
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 19
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
}
else if dice == 20
{
switch heroImageinVC1.image
{
case UIImage(named: myImages[0]):
print("Wazerd")
case UIImage(named: myImages[1]):
print("Thief")
case UIImage(named: myImages[2]):
print("Knight")
default:
print("Error")
}
    
}
    
//    func bossSwitch()
//    {
//    if boos1.lifePoint <= dead
//    {
//
//    }
//    else if boos2.lifePoint <= dead
//    {
//
//    }
//
//    }
    
    
    
    
    
    
    
    
    // if players energies = 0
    if boos1.lifePoint <= dead
    {
        switch heroImageinVC1.image
        { 
        case UIImage(named: myImages[0]):
        descrLabel.text = "\(wazerd.name) is a WINNER !!!"
        case UIImage(named: myImages[1]):
        descrLabel.text = ("\(thief.name) is a WINNER !!!")
        case UIImage(named: myImages[2]):
        descrLabel.text = "\(knight.name) is a WINNER !!!"
        default: print("erooooorrrrrrr")
        }
        descrLabel.text = "\(wazerd.name) is a WINNER !!!"
    print("\(wazerd.name) is a WINNER !!!")

    }
    else if boos2.lifePoint <= dead
    {
    print("\(wazerd.name) is a WINNER !!!")
    descrLabel.text = "\(wazerd.name) is a WINNER !!!"
    }
    else if wazerd.lifePoint <= dead
    {
    print("\(boos1.name) is a WINNER !!!")
    print("\(boos2.name) is a WINNER !!!")
    }
    else if knight.lifePoint <= dead
    {
    print("\(boos1.name) is a WINNER !!!")
    print("\(boos2.name) is a WINNER !!!")
    }
    else if thief.lifePoint <= dead
    {
    print("\(boos1.name) is a WINNER !!!")
    print("\(boos2.name) is a WINNER !!!")
    }
    
return dice
}
    
}
// segue between VC1 and VC2
@IBAction func toHeroesPage(_ sender: Any)
{
performSegue(withIdentifier: "fromVC1toVC2", sender: self)
}
    
@IBAction func textFieldfromLP(segue:UIStoryboardSegue)
{
    
}
}


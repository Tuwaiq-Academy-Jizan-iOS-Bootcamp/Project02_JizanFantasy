//  Created by حمد الحريصي on 03/11/2021.
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
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, Weapondamage: Int, Specialcapacity: Int) {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, Weapondamage: Weapondamage, Specialcapacity: Specialcapacity)
    }
}
class Thief:Player2
{
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, Weapondamage: Int, Specialcapacity: Int) {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, Weapondamage: Weapondamage, Specialcapacity: Specialcapacity)
    }
}
class Knight:Player2
{
    override init(name: String, lifePoint: Int, defense: Int, powerDamage: Int, Weapondamage: Int, Specialcapacity: Int) {
        super.init(name: name, lifePoint: lifePoint, defense: defense, powerDamage: powerDamage, Weapondamage: Weapondamage, Specialcapacity: Specialcapacity)
    }
}
class ViewController: UIViewController
{
    var index: Int = 0
    var myImages2 = ["boss1","boss2"]
  //  var heroImageinVC1 = 0
   // var index: Int = 0

    var myImages = ["Wizard","Thief","Knight"]
    
    @IBOutlet var vsLabel: UILabel!
    @IBOutlet var lpHeroLabel: UILabel!
    @IBOutlet var dfHeroLabel: UILabel!
    @IBOutlet var pdHeroLabel: UILabel!
    @IBOutlet var wdHeroLabel: UILabel!
    @IBOutlet var scHeroLabel: UILabel!
    
    @IBOutlet var descrptionTextView: UITextView!
    
    @IBOutlet var heroImageinVC1: UIImageView!
    @IBOutlet var bossImage: UIImageView!
    @IBOutlet var diceLabel: UILabel!
    
    override func viewDidLoad()
    {
    super.viewDidLoad()
        
      
    bossImage.image = UIImage(named: myImages2[Int.random(in: 0...1)])
        
        
        bossSwitch()
      //  heroSwitch()
        
        
        
        // description
//        let myNumber = ""
        descrptionTextView.text = "\(description)"

    }
    
    
    @IBOutlet var bossLP1: UILabel!
    @IBOutlet var bossDF1: UILabel!
    @IBOutlet var bossPD1: UILabel!
    @IBOutlet var bossWD1: UILabel!
    @IBOutlet var bossSC1: UILabel!
    
    
    
    func description()
    {
        boos2.defense += boos2.lifePoint
    }
    
    var turnNumber = 0
    
    var boos1 = Boss1(name: "boss1", lifePoint: 250, defense: 30, powerDamage: 20, Weapondamage: 45, Specialcapacity: 110)
    var boos2 = Boss2(name: "boss2", lifePoint: 170, defense: 25, powerDamage: 15, Weapondamage: 30, Specialcapacity: 75)
    var hero = Player1(name: "", lifePoint: 0, defense: 0, powerDamage: 0, Weapondamage: 0, Specialcapacity: 0 )
    
   //var dfHeroLabel.text = "250"
  //  var dfHero = dfHeroLabel.text
    
//    var wizard = Wizard(name: "Wizard", lifePoint: 90, defense: 15, powerDamage: 70, Weapondamage: 20, Specialcapacity: 50)
//    var knight = Knight(name: "Knight", lifePoint: 60, defense: 20, powerDamage: 30, Weapondamage: 40, Specialcapacity: 100)
//    var thief = Thief(name: "Thief", lifePoint: 65, defense: 25, powerDamage: 15, Weapondamage: 30, Specialcapacity: 70)
//    var boss1power = Power(name: "gggggggg", damage: 35, attackAction: "x", specialEffect: 55)
//
//    func power()
//    {
//        vsLabel.text = "\(boss1power.attackAction)"
//    }
//  func boss1()
//    {
//    if myImages2[index] == myImages2[0]
//        {
//        bossLP1.text = "\(boos1.lifePoint)"
//        bossDF1.text = "\(boos1.defense)"
//    }
//     else if myImages2[index] == myImages2[1]
//     {
//    bossLP1.text = "\(boos2.lifePoint)"
//    bossDF1.text = "\(boos2.defense)"
//     }
//    }
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
    
//    func heroSwitch()
//    {
//    switch heroImageinVC1.image
//    {
//    case UIImage(named: myImages[0]):
//        lpHeroLabel.text = "\(wizard.lifePoint)"
//        dfHeroLabel.text = "\(wizard.defense)"
//        pdHeroLabel.text = "\(wizard.powerDamage)"
//        wdHeroLabel.text = "\(wizard.Weapondamage)"
//        scHeroLabel.text = "\(wizard.Specialcapacity)"
//    case UIImage(named: myImages[1]):
//        lpHeroLabel.text = "\(knight.lifePoint)"
//        dfHeroLabel.text = "\(knight.defense)"
//        pdHeroLabel.text = "\(knight.powerDamage)"
//        wdHeroLabel.text = "\(knight.Weapondamage)"
//        scHeroLabel.text = "\(knight.Specialcapacity)"
//    case UIImage(named: myImages[2]):
//        lpHeroLabel.text = "\(thief.lifePoint)"
//        dfHeroLabel.text = "\(thief.defense)"
//        pdHeroLabel.text = "\(thief.powerDamage)"
//        wdHeroLabel.text = "\(thief.Weapondamage)"
//        scHeroLabel.text = "\(thief.Specialcapacity)"
//     default:
//     print("ERORR ?!$##%#$%^@$^@")
//    }
//    }
    
    
    
    @IBAction func rollDiceButton(_ sender: UIButton)
    {
        
        
       // description()
        
        
        
               

        
        
        
        
        
        
        
        
        
        
     //   boss1()
        
turnNumber += 1
print("Turn Number  \(turnNumber)")

diceLabel.text = "Dice = \(rollingDice())"
func rollingDice() -> Int
{
    
var dice: Int
dice = Int.random(in: 1...20)
print("Dice = \(dice)")
        
            
if dice == 1
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
print("\(boos2.lifePoint)")
//boos2.Weapondamage
boos2.lifePoint -= boos1.Weapondamage
case UIImage(named: myImages2[1]):
print("\(boos1.lifePoint)")
print("\(boos2.lifePoint)")
boos2.lifePoint -= boos1.Weapondamage
default:
print("Error")
}
//                boos2.Weapondamage
//                boos2.lifePoint += boos1.Weapondamage
}
else if dice == 2
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default:
print("Error")
}
}
else if dice == 3
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 4
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 5
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 6
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 7
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 8
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 9
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 10
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 11
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 12
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default:print("Error")
}
}
else if dice == 13
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 14
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default:
print("Error")
}
}
else if dice == 15
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 16
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 17
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 18
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 19
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default: print("Error")
}
}
else if dice == 20
{
switch bossImage.image
{
case UIImage(named: myImages2[0]):
print("\(boos1.lifePoint)")
case UIImage(named: myImages2[1]):
print("\(boos2.lifePoint)")
default:print("Error")
}
}
return dice
}
}

    @IBAction func toHeroesPage(_ sender: Any)
    {
        
        performSegue(withIdentifier: "fromVC1toVC2", sender: self)
    }
    
@IBAction func textFieldfromLP(segue:UIStoryboardSegue)
{
    
}
}


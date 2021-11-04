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
    
    @IBOutlet var lpHeroLabel: UILabel!
    @IBOutlet var dfHeroLabel: UILabel!
    @IBOutlet var pdHeroLabel: UILabel!
    @IBOutlet var wdHeroLabel: UILabel!
    @IBOutlet var scHeroLabel: UILabel!
    
    
    @IBOutlet var heroImageinVC1: UIImageView!
    @IBOutlet var bossImage: UIImageView!
    @IBOutlet var diceLabel: UILabel!
    
    override func viewDidLoad()
    {
    super.viewDidLoad()
        
       
        
        bossImage.image = UIImage(named: myImages2[Int.random(in: 0...1)])
        bossSwitch()
        // print("\(String(describing: bossImage))")
//
//        switch bossImage.image
//        {
//        case UIImage(named: myImages2[0]):
//            bossLP1.text = "\(boos1.lifePoint)"
//            bossDF1.text = "\(boos1.defense)"
//            bossPD1.text = "\(boos1.powerDamage)"
//            bossWD1.text = "\(boos1.Weapondamage)"
//            bossSC1.text = "\(boos1.Specialcapacity)"
//        case UIImage(named: myImages2[1]):
//            bossLP1.text = "\(boos2.lifePoint)"
//            bossDF1.text = "\(boos2.defense)"
//            bossPD1.text = "\(boos2.powerDamage)"
//            bossWD1.text = "\(boos2.Weapondamage)"
//            bossSC1.text = "\(boos2.Specialcapacity)"
//         default:
//         print("ERORR ?!$##%#$%^@$^@")
//        }

    
//        bossLP1.text = "\(boos1.lifePoint)"
//        bossLP1.text = "\(boos2.lifePoint)"
//    switch bossImage
//    {
//    case :
//    bossLP1.text = "\(boos1.lifePoint)"
//    bossDF1.text = "\(boos1.defense)"
//    bossPD1.text = "\(boos1.powerDamage)"
//    bossWD1.text = "\(boos1.Weapondamage)"
//    bossSC1.text = "\(boos1.Specialcapacity)"
//    case :
//    bossLP1.text = "\(boos2.lifePoint)"
//    bossDF1.text = "\(boos2.defense)"
//    bossPD1.text = "\(boos2.powerDamage)"
//    bossWD1.text = "\(boos2.Weapondamage)"
//    bossSC1.text = "\(boos2.Specialcapacity)"
//    default:
//    print("ERORR ?!$##%#$%^@$^@")
//    }
        
//        if myImages2[index] == myImages2[0]
//        {
//        let boss1LP1 = 250
//        bossLP1.text = "\(boss1LP1)"
//        let boss1DF1 = 30
//        bossDF1.text = "\(boss1DF1)"
//        }else{
//        let boss1LP2 = 170
//        bossLP1.text = "\(boss1LP2)"
//        let boss1DF2 = 25
//        bossDF1.text = "\(boss1DF2)"
//        }

    }
    
    
    @IBOutlet var bossLP1: UILabel!
    @IBOutlet var bossDF1: UILabel!
    @IBOutlet var bossPD1: UILabel!
    @IBOutlet var bossWD1: UILabel!
    @IBOutlet var bossSC1: UILabel!
    
    
    var boos1 = Boss1(name: "boss1", lifePoint: 250, defense: 30, powerDamage: 20, Weapondamage: 45, Specialcapacity: 110)
    var boos2 = Boss2(name: "boss2", lifePoint: 170, defense: 25, powerDamage: 15, Weapondamage: 30, Specialcapacity: 75)
    
//    var knight = Knight.init(name: "Knight", lifePoint: 60, defense: 20, powerDamage: 30, Weapondamage: 40, Specialcapacity: 100)
//    var wizard = Wizard.init(name: "Wizard", lifePoint: 90, defense: 15, powerDamage: 70, Weapondamage: 20, Specialcapacity: 50)
//    var thief = Thief.init(name: "Thief", lifePoint: 65, defense: 25, powerDamage: 15, Weapondamage: 30, Specialcapacity: 70)
//

//
//    {
//    case ["boss1"]:
//    bossLP1.text = "\(boos1.lifePoint)"
//    bossDF1.text = "\(boos1.defense)"
//    bossPD1.text = "\(boos1.powerDamage)"
//    bossWD1.text = "\(boos1.Weapondamage)"
//    bossSC1.text = "\(boos1.Specialcapacity)"
//    case ["boss2"]:
//    bossLP1.text = "\(boos2.lifePoint)"
//    bossDF1.text = "\(boos2.defense)"
//    bossPD1.text = "\(boos2.powerDamage)"
//    bossWD1.text = "\(boos2.Weapondamage)"
//    bossSC1.text = "\(boos2.Specialcapacity)"
//    default:
//    print("ERORR ?!$##%#$%^@$^@")
//    }
//    func boss()
//    {
//        for _ in myImages2
//        {
//        switch myImages2
//        {
//        case ["boss1"]:
//        let boss1LP1 = 250
//                bossLP1.text = "\(boss1LP1)"
//        let boss1DF1 = 30
//                bossDF1.text = "\(boss1DF1)"
//        break
//        case ["boss2"]:
//        let boss1LP1 = 170
//                    bossLP1.text = "\(boss1LP1)"
//        let boss1DF1 = 30
//                    bossDF1.text = "\(boss1DF1)"
//        break
//        default:
//            print("ERORR ?!$##%#$%^@$^@")
//        }
//        }

//func boss()
//    {
//    if myImages2[index] == myImages2[0]
//   {
//
//    else if myImages2[index] == myImages2[1]
//    {
//    let boss1LP2 = 170
//    bossLP1.text = "\(boss1LP2)"
//    let boss1DF2 = 25
//    bossDF1.text = "\(boss1DF2)"
//    print("1241235462562")
//
//    }
//    }
//    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  func boss1()
    {
    if myImages2[index] == myImages2[0]
        {
        bossLP1.text = "\(boos1.lifePoint)"
        bossDF1.text = "\(boos1.defense)"
    }
     else if myImages2[index] == myImages2[1]
     {
    bossLP1.text = "\(boos2.lifePoint)"
    bossDF1.text = "\(boos2.defense)"
     }
    }
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
    
    
    
    
    
    
    
    @IBAction func rollDiceButton(_ sender: UIButton)
    {
       // boss1()
        
    
        diceLabel.text = "Dice = \(rollingDice())"
        func rollingDice() -> Int
        {
            var dice: Int
            dice = Int.random(in: 1...20)
            print("Dice = \(dice)")
            
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


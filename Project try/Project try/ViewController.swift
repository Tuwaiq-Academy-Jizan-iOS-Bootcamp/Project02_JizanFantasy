import UIKit



class Hero{
    var Name:String
    var LifePoint:Int
    var Defense:Int
    var PowerDamage:Int
    var WeaponDamage:Int
   var Specialcapacity:Int
    init (Name:String , LifePont:Int, Defense:Int,PowerDamage:Int,WeaponDamage:Int,Specialcapacity:Int){
        self.Name = Name
    self.LifePoint = LifePont
    self.Defense = Defense
    self.PowerDamage = PowerDamage
    self.WeaponDamage = WeaponDamage
    self.Specialcapacity = Specialcapacity
    }
    }


    class Knight:Hero{
        
    }
class Wizard:Hero{

}
class Thief:Hero{
}


struct Boss{
    var Name:String
    var LifePoint:Int
    var Defense:Int
    var PowerDamage:Int
    var WeaponDamage:Int
    var SpecialCapacity:Int
}

    
    
class ViewController:UIViewController{
    
var knight=Knight(Name: "knight", LifePont: 60, Defense: 20, PowerDamage: 30, WeaponDamage: 40,Specialcapacity: 100)
var wizard = Wizard(Name: "wizard", LifePont: 90, Defense: 15, PowerDamage:70,WeaponDamage: 20,Specialcapacity: 50)
var thief=Thief(Name: "thif", LifePont: 65, Defense: 25, PowerDamage:15,WeaponDamage: 30,Specialcapacity: 75)
var boss1=Boss(Name:"boss1", LifePoint:250,Defense: 30, PowerDamage:20,WeaponDamage:45 ,SpecialCapacity:110)
var boss2 = Boss(Name: "boss2", LifePoint:170,Defense: 25, PowerDamage:15,WeaponDamage: 30 , SpecialCapacity:75)
    
@IBOutlet weak var DescraptionLabel: UILabel!
@IBOutlet weak var NumberDice: UILabel!
@IBOutlet weak var imageBoss: UIImageView!
@IBOutlet weak var LifePointBoss: UILabel!
@IBOutlet weak var DfinseBoss: UILabel!
@IBOutlet weak var powerDamgeBoss: UILabel!
@IBOutlet weak var weaponDamageBoss: UILabel!
@IBOutlet weak var specialCapacityBoss: UILabel!
    
    
@IBOutlet weak var Lp: UILabel!
    
    
@IBOutlet weak var DF: UILabel!
    
    
    
    @IBOutlet weak var PD: UILabel!
    
    
    @IBOutlet weak var WD: UILabel!
    
@IBOutlet weak var SC: UILabel!
   
@IBAction func Dice(_ sender: Any) {
    
Dice()
    
    
    
    
}
override func  viewDidLoad() {
super.viewDidLoad()
let Boss = Int.random(in: 1...2)
if Boss == 1{
imageBoss.image = UIImage(named:"boss1")
LifePointBoss.text = String(boss1.LifePoint)
DfinseBoss.text = String(boss1.Defense)
powerDamgeBoss.text = String(boss1.PowerDamage)
weaponDamageBoss.text = String(boss1.PowerDamage)
specialCapacityBoss.text = String(boss1.SpecialCapacity)
}else{
imageBoss.image = UIImage(named:"boss2")
LifePointBoss.text = String(boss2.LifePoint)
DfinseBoss.text = String(boss2.Defense)
powerDamgeBoss.text = String(boss2.PowerDamage)
weaponDamageBoss.text = String(boss2.PowerDamage)
specialCapacityBoss.text = String(boss2.SpecialCapacity)
        }
    }
func Dice(){
let value:Int = .random(in: 1...20)
switch value{
        case 1...9:
            NumberDice.text = String(value)
            DescraptionLabel.text = "power Damag"
            print("power Damage")
    
        case 10...19:
            NumberDice.text = String(value)
            DescraptionLabel.text = "weapon Demage"
            print("weapon Damage")
        case 20:
            NumberDice.text = String(value)
            DescraptionLabel.text = "special capacity"
            print("special capacity")
        default:
            print(" the end")
    }
    }
@IBAction func unmindToRootViewController(segue:UIStoryboardSegue){
}
}

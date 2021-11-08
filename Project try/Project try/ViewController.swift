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
    var flagTurn = false
    var turnNumber = 0
  // @IBOutlet weak var Descraption: UITextView!

    @IBOutlet weak var desc3: UILabel!
    @IBOutlet weak var desc2: UILabel!
    @IBOutlet weak var desc1: UILabel!
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
   
    var lph = Int(Lp.text!)!
    var lpb = Int(LifePointBoss.text!)!
    var dfh = Int(DF.text!)!
    var dfb = Int(DfinseBoss.text!)!
    var pdh = Int(PD.text!)!
    var pdb = Int(powerDamgeBoss.text!)!
    var wph = Int(WD.text!)!
    var wpb = Int(weaponDamageBoss.text!)!
    var sch = Int(SC.text!)!
    var scb = Int(specialCapacityBoss.text!)!
    if lph > 0 && lpb > 0 {
        turnNumber += 1
       desc1.text! = "turn \(turnNumber)\n "
    if flagTurn == true {
        
        
       
       
    // hero turn
let value:Int = .random(in: 1...20)
        
switch value{
        case 1...9:
            NumberDice.text = String(value)
    desc2.text = "The hero start with power damage  "
            print("power Damage")
    if pdh - dfb < 0{
      print("nothings")
    }else{
        lpb -= pdh - dfb
    }
   
    if lpb <= 0 {
        lpb = 0
    }
    LifePointBoss.text = String(lpb)
    desc3.text =  " life point of hero \(Lp.text!) \n life point of boss \(LifePointBoss.text!) "
  //  Descraption.text +=  " life point of boss \(LifePointBoss.text!)\n "
        case 10...19:
            NumberDice.text = String(value)
    desc2.text = "The hero start wit weapon damage  "
            print("weapon Damage")
    print(Lp.text!)
       print(LifePointBoss.text!)
    if wph - dfb < 0 {
        print("nothings")
    }else{
        lpb -= wph - dfb
    }
    if lpb <= 0 {
        lpb = 0
    }
   
    LifePointBoss.text = String(lpb)
    
    desc3.text =  " life point of hero \(Lp.text!) \n life point of boss \(LifePointBoss.text!) "
    //Descraption.text +=  "life point of hero \(Lp.text!)\n "
   // Descraption.text +=  " life point of boss \(LifePointBoss.text!) \n"
  
        case 20:
            NumberDice.text = String(value)
    desc2.text = "The hero start wit spceial capacity  "
           // Descraption.text += "special capacity \n"
            print("special capacity")
    if sch - dfb < 0 {
        print("nothings")
    }else{
        lpb -= sch - dfb
    }
   
    if lpb <= 0 {
        lpb = 0
    }
    LifePointBoss.text = String(lpb)
//    Descraption.text +=  "life point of hero \(Lp.text!)\n "
//    Descraption.text +=  "life point of boss \(LifePointBoss.text!)\n "
    
    desc3.text =  " life point of hero \(Lp.text!) \n life point of boss \(LifePointBoss.text!) "
        default:
            print(" the end")
    }
      flagTurn = false
        
    }
        else if flagTurn == false{
        
            // boss turn
    let dice2 :Int = .random(in: 1...20)
    switch dice2 {
    case 1...9 :
       desc2.text = "the  boss start with power Damag "

        NumberDice.text = String(dice2)
       //Descraption.text += "power Damag\n"
        print("power Damage")
        if pdb - dfh < 0{
        print("nothings")
        }else{
            lph -= pdb - dfh
        }

        
        if lph <= 0 {
            lph = 0
        }
        Lp.text = String(lph)
//        Descraption.text +=  "life point of hero \(Lp.text!)\n "
//        Descraption.text +=  "life point of boss \(LifePointBoss.text!)\n "
        desc3.text =  " life point of hero \(Lp.text!) \n life point of boss \(LifePointBoss.text!) "
    case 10...19 :
        desc2.text = " boss start with weapon Damag "

        NumberDice.text = String(dice2)
        //Descraption.text += "weapon Demage \n"
        print("weapon Damage")
        if wpb - dfh < 0 {
            print("nothings")
        }else{
            lph -= wpb - dfh
        }
      
        if lph <= 0 {
            lph = 0
        }
        Lp.text = String(lph)
//        Descraption.text +=  "life point of hero \(Lp.text!)\n "
//        Descraption.text +=  "life point of boss \(LifePointBoss.text!)\n "
        desc3.text =  " life point of hero \(Lp.text!) \n life point of boss \(LifePointBoss.text!) "
    case 20 :
        desc2.text = " boss start with special "
        NumberDice.text = String(dice2)
        //Descraption.text += "special capacity \n"
        print("special capacity")
        if scb - dfh < 0 {
            print("nothings")
        }else {
            lph -=  scb - dfh
        }
        if lph <= 0 {
            lph = 0
        }
        Lp.text = String(lph)
//        Descraption.text +=  "life point of hero \(Lp.text!)\n "
//        Descraption.text +=  "life point of boss \(LifePointBoss.text!)\n "
        desc3.text =  " life point of hero \(Lp.text!) \n life point of boss \(LifePointBoss.text!) "
    default:
        print("the end")
    }
        flagTurn = true
    }
        
    } else  if lph <= 0 {
        
        desc2.text = " The winner is Boss"
        
    }else if  lpb <= 0{
        
        desc2.text = " The winner is Hero "
        
    }
}
    
@IBAction func unmindToRootViewController(segue:UIStoryboardSegue){
    
    
}
  func restOfLife ()
    {
        if Lp.text! <= String(0) {
            Lp.text! = String(0)

            
        } else if LifePointBoss.text! <= "0" {
            
            LifePointBoss.text = "0"
            
        }
        
        
    }
    
    
    
}

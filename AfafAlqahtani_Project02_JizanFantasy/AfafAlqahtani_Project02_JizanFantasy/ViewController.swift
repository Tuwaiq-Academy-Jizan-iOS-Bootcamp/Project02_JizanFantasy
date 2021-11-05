//
//  ViewController.swift
//  AfafAlqahtani_Project02_JizanFantasy
//
//  Created by Afaf Yahya on 27/03/1443 AH.
//

import UIKit
class Herro {
    var name : String
    var lifePoint : Int
    var defencse : Int
    var powerDemage: Int
    var weponDemage: Int
    var specialDemage:Int
    
    init(name : String,lifePoint : Int, defencse : Int, powerDemage: Int,weponDemage: Int,specialDemage:Int){
            
        self.name = name
        self.lifePoint = lifePoint
        self.defencse = defencse
        self.powerDemage = powerDemage
        self.weponDemage = weponDemage
        self.specialDemage = specialDemage
        
//      }
    }
}

class Boss1: Herro{
}

class Boss2: Herro{
}

class Knigt: Herro{
    
}
class Wizard: Herro{
        
    }
 class Thief: Herro{
        
    }
    
class ViewController: UIViewController {

    var bosss1 = Boss1(name: "Boss1", lifePoint: 250, defencse: 30, powerDemage: 20, weponDemage: 45, specialDemage: 110)
    var bosss2 = Boss2(name: "Boss2", lifePoint: 170, defencse: 25, powerDemage: 15, weponDemage: 30, specialDemage: 75)
    var knigt = Knigt(name: "Knigt", lifePoint: 60, defencse: 20, powerDemage: 30, weponDemage: 40, specialDemage: 100)
    var wizard = Wizard(name: "Wizard", lifePoint: 90, defencse: 15, powerDemage: 70, weponDemage: 20, specialDemage: 50)
    var thief = Thief(name: "Thief", lifePoint: 65, defencse: 25, powerDemage: 15, weponDemage: 30, specialDemage: 75)
    
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBoss()
        // Do any additional setup after loading the view.
    }
    func randomBoss(){
        let bosses = Int.random(in: 1...2)
        switch bosses {
        case 1:
            boss1Name.text = ("boss1Name")
            boss1.image = UIImage(named: "Boss1")
            lfL.text = String (bosss1.lifePoint)
            dfL.text = String (bosss1.defencse)
            pdL.text = String (bosss1.powerDemage)
            wdL.text = String (bosss1.weponDemage)
            seL.text = String (bosss1.specialDemage)
        case 2:
            boss2Name.text = ("boss22Name")
            boss2.image = UIImage(named: "Boos2")
            lfL.text = String (bosss2.lifePoint)
            dfL.text = String (bosss2.defencse)
            pdL.text = String (bosss2.powerDemage)
            wdL.text = String (bosss2.weponDemage)
            seL.text = String (bosss2.specialDemage)
        default:
           print ("no number")
        }
    }
    
    @IBOutlet weak var boss1Name: UILabel!
    @IBOutlet weak var boss2Name: UILabel!
    @IBOutlet weak var boss1: UIImageView!
    @IBOutlet weak var boss2: UIImageView!
    @IBOutlet weak var lfR: UILabel!
    @IBOutlet weak var dfR: UILabel!
    @IBOutlet weak var pdR: UILabel!
    @IBOutlet weak var wdR: UILabel!
    @IBOutlet weak var seR: UILabel!
    @IBOutlet weak var lfL: UILabel!
    @IBOutlet weak var dfL: UILabel!
    @IBOutlet weak var pdL: UILabel!
    @IBOutlet weak var wdL: UILabel!
    @IBOutlet weak var seL: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var diceNumber: UILabel!
    @IBAction func rullDice(_ sender: Any) {
        
        var i = Int.random(in: 1...20)
        diceNumber.text = String (i)

    }
        func theDice(){
            let rullDice = Int.random(in: 1...20)
            switch rullDice{
            case 1...9:
                discriptionLabel.text = "Start of PowerDemage"
                print("0")
            case 10...19:
                discriptionLabel.text = "Start of WeaponDemage"
                printContent("")
            case 20:
                discriptionLabel.text = "Start of SpecialCapacity"
            default:
                print("NON")
            }
        }
    @IBAction func displayButton(_ sender: Any) {
        performSegue(withIdentifier: "goToVC2", sender: self)
        }
    
    @IBAction func rootViewController(segue: UIStoryboardSegue){
        print("Unwind to Root ViewController")
    }

}



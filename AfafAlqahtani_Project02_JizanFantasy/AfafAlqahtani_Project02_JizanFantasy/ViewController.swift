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

    var boss = Boss1(name: "Boss1", lifePoint: 250, defencse: 30, powerDemage: 20, weponDemage: 45, specialDemage: 110)
    var bosss2 = Boss2(name: "Boss2", lifePoint: 170, defencse: 25, powerDemage: 15, weponDemage: 30, specialDemage: 75)
    var knigt = Knigt(name: "Knigt", lifePoint: 60, defencse: 20, powerDemage: 30, weponDemage: 40, specialDemage: 100)
    var wizard = Wizard(name: "Wizard", lifePoint: 90, defencse: 15, powerDemage: 70, weponDemage: 20, specialDemage: 50)
    var thief = Thief(name: "Thief", lifePoint: 65, defencse: 25, powerDemage: 15, weponDemage: 30, specialDemage: 75)
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
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
    
    @IBAction func rullDice(_ sender: Any) {
        func rull() -> Int {
            var dice: Int
            dice = Int.random(in: 1...20)
            print("Dice = \(dice)")
            
            return dice
        }
        
        func theGame(){
            let rull = Int.random(in: 1...20)
            switch rull{
            case 1...9:
                discriptionLabel.text = "PowerDemage"
                print("0")
            case 10...19:
                discriptionLabel.text = "WeaponDemage"
                printContent("")
            case 20:
                discriptionLabel.text = "SpecialCapacity"
            default:
                print("No")
            }
        }
    }
    @IBAction func displayButton(_ sender: Any) {
        performSegue(withIdentifier: "goToVC2", sender: self)
        }
    
    
    @IBAction func rootViewController(segue: UIStoryboardSegue){
        print("Unwind to Root ViewController")
    }

}



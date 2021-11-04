//
//  ViewController.swift
//  DahmaJaber_TheBigProject_02
//
//  Created by dahma alwani on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageForPlayer1: UIImageView!
    @IBOutlet weak var imageForPlayer2: UIImageView!
    
    @IBOutlet weak var lifePoint1: UILabel!
    @IBOutlet weak var defancd1: UILabel!
    @IBOutlet weak var powerDamage1: UILabel!
    @IBOutlet weak var weaponDamage1: UILabel!
    @IBOutlet weak var specialEffect1: UILabel!
    
    @IBOutlet weak var lifePoint2: UILabel!
    @IBOutlet weak var defancd2: UILabel!
    @IBOutlet weak var powerDamage2: UILabel!
    @IBOutlet weak var weaponDamage2: UILabel!
    @IBOutlet weak var specialEffect2: UILabel!
    
    @IBOutlet weak var forWriteComment: UILabel!
    
    @IBAction func rollingDice(_ sender: Any) {
        //    FUNCTION FOR ROLLING THE DICE
        func rollingDice() -> Int {
        var dice: Int
        dice = Int.random(in: 1...20)
        print("Dice = \(dice)")
        return dice
        }
    }
    @IBAction func addButton(_ sender: Any) {
        performSegue(withIdentifier: "goTovc2", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
class Hero {
    var lifePoint : Int
    var defend : Int
    var powerDamage : Int
    var weaponDamage : Int
    var specialDamage : Int
//THIS STEP IS IMPORTAMT STEP "INITIALISION"
    init(lifePoint:Int ,defend:Int , powerDamage:Int , weaponDamage:Int ,specialDamage:Int) {
        self.lifePoint = lifePoint
        self.defend = defend
        self.powerDamage = powerDamage
        self.weaponDamage = weaponDamage
        self.specialDamage = specialDamage
    }
//CREATE FUNCTION FOR ALL
//    func all () {
//    }
//}

//    creat subclass for all 5
    class Boss1 : Hero {
    }
    class Boss2: Hero {
    }
    class Knight: Hero {
    }
    class Wizard: Hero {
    }
    class Thief: Hero {
    }
}


//creat variable



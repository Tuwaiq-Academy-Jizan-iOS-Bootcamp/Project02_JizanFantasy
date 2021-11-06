//
//  ViewControllerTwo.swift
//  BushraBarakat_Project02
//
//  Created by Bushra Barakat on 27/03/1443 AH.
//

import Foundation
import UIKit

struct Heroplayer {
    var name : String
    var lifePoint : Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var specialCapacity : Int
    var specialPd : Int
    var specialWd : Int
    var specialLp : Int
    
    
}

class ViewControllerTwo: UIViewController{
  
    @IBOutlet weak var textFiled1: UITextField!
    @IBOutlet weak var textFiled2: UITextField!
    @IBOutlet weak var textFiled3: UITextField!
    @IBOutlet weak var textFiled4: UITextField!
    @IBOutlet weak var textFiled5: UITextField!
    @IBOutlet weak var newChallenger: UIButton!
    @IBOutlet weak var newChallengeImage: UIImageView!
    @IBOutlet weak var newChallengerName: UILabel!
    @IBOutlet weak var point: UILabel!
    
//.............................
    var hero = Hero(name: "", lifePoint: 0, defense: 0, powerDamage: 0, weaponDamage: 0, specialCapacity: 0, specialPd: 0, specialWd: 0, specialLp: 0)
   
 //..............................
    var theHero = 0
    var num = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //......delegate..........
        textFiled1.delegate = self
        textFiled2.delegate = self
        textFiled3.delegate = self
        textFiled4.delegate = self
        textFiled5.delegate = self
        
        //.......image............
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       var sender = segue.destination as! ViewController
        sender.labelHero1.text = textFiled1.text
        sender.labelHero2.text = textFiled2.text
        sender.labelHero3.text = textFiled3.text
        sender.labelHero4.text = textFiled4.text
        sender.labelHero5.text = textFiled5.text
        sender.heroImage.image =
        newChallengeImage.image
        sender.nameHero.text =
        newChallengerName.text
    }
    //.........imagefunction..........
    @IBAction func newChallengerButton(_ sender: Any) {
        theHero += 1
        switch theHero {
        case 1 : newChallengeImage.image =  UIImage(named:"knight" )
            newChallengerName.text = "Knight"
            point.text = "250"
        case 2 : newChallengeImage.image = UIImage(named: "wizard")
            newChallengerName.text = "Wizerd"
            point.text = "245"
        case 3 : newChallengeImage.image = UIImage(named: "thief")
            newChallengerName.text = "Thief"
            point.text = "210"
        case 4 :
            theHero = 0
        default:
            print ("no hero")
        }
        
    }

    
}
extension ViewControllerTwo: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    
}



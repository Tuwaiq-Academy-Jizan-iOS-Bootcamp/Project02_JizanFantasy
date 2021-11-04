//
//  ViewControllerTwo.swift
//  Amal Jeli _ Project
//
//  Created by Amal Jeli on 28/03/1443 AH.
//

import Foundation
import UIKit
class HeroPlayer {
    
    var name: String
    var lifePoint: Int
    var defenase: Int
    var powerDamage: Int
    var weaponDamage: Int
    var specialCapacity: Int
    init(name:String ,lifepoint:Int , defenase:Int, powerDamage:Int , weaponDamage:Int,specialCapacity:Int) {
    self.name = name
    self.lifePoint = lifepoint
    self.defenase = defenase
    self.powerDamage = powerDamage
    self.weaponDamage = weaponDamage
    self.specialCapacity = specialCapacity
    
    }
       
    }
class ViewControllerTwo:UIViewController {
    var knight = Hero.init(name: "knight", lifepoint: 60, defenase: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100)
    var Wizard = Hero.init(name: "wizard", lifepoint: 90, defenase: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50)
    var Thief = Hero.init(name: "Thief", lifepoint: 65, defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelText: UITextField!
    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textFiled2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var labelSC: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.delegate = self
        textField1.delegate = self
        textFiled2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        
        

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
    if let backLabal = segue.destination as? ViewController {
        backLabal.labelHeroLP.text = textField1.text
        
        backLabal.labelHeroDF.text = textFiled2.text
        
        backLabal.labelHeroPD.text = textField3.text
        
        backLabal.LabelHeroWD.text = textField4.text
        
        backLabal.labelHeroSC.text = labelSC.text
      

    }
}

}

extension ViewControllerTwo:UITextFieldDelegate {
func textFieldShouldReturn(_ TextLabal: UITextField) -> Bool {
    TextLabal.resignFirstResponder()
    var nameOfHero  = labelText.text
    
    switch nameOfHero {
    case "knight":
        
        pointOf
    }
    
    
    return true

    
}
}

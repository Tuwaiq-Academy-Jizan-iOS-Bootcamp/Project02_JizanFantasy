//
//  ViewControllerTwo.swift
//  Amal Jeli _ Project
//
//  Created by Amal Jeli on 28/03/1443 AH.
//

import Foundation
import UIKit
//class Hero1 {
//
//    var name: String
//    var lifePoint: Int
//    var defenase: Int
//    var powerDamage: Int
//    var weaponDamage: Int
//    var specialCapacity: Int
//    init(name:String ,lifepoint:Int , defenase:Int, powerDamage:Int , weaponDamage:Int,specialCapacity:Int) {
//    self.name = name
//    self.lifePoint = lifepoint
//    self.defenase = defenase
//    self.powerDamage = powerDamage
//    self.weaponDamage = weaponDamage
//    self.specialCapacity = specialCapacity
//
//    }
//
//
//}
//class ViewControllerTwo:UIViewController {
//
//  var knight = Hero1.init(name: "knight", lifepoint: 60, defenase: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100 )
//
//    var Wizard = Hero1.init(name: "wizard", lifepoint: 90, defenase: 15, powerDamage: 70, weaponDamage: 30, specialCapacity: 75 )
//
//    var Thief = Hero1.init(name: "Thief", lifepoint: 65, defenase: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75 )
//
//
class ViewControllerTwo:UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelText: UITextField!
    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textFiled2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var labelSC: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    

    
    
    override func viewDidLoad() {
        
        labelText.delegate = self
        textField1.delegate = self
        textFiled2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        
        super.viewDidLoad()
        

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
         if let backLabel = segue.destination as? ViewController {
        backLabel.nameHero.text = labelText.text
        backLabel.labelHeroLP.text = textField1.text
        
        backLabel.labelHeroDF.text = textFiled2.text
        
        backLabel.labelHeroPD.text = textField3.text
        
        backLabel.LabelHeroWD.text = textField4.text
        
        backLabel.labelHeroSC.text = labelSC.text
//        backLabal.LabelHeroWD = playrSPD
//        backLabal.labelHeroPD = playrSWD
//
            var specialCapacityLPH = 0
             var specialCapacityPDH = 0
             var specialCapacityWDH = 0
    }
    
    }
        

      
    @IBAction func knightBu(_ sender: Any){
        
        labelText.text = "knight"
        textField1.text = "\(60)"
        textFiled2.text = "\(20)"
        textField3.text = "\(30)"
        textField4.text = "\(40)"
        labelSC.text = "\(100)"
      labelNumber.text = " 250 points to dispatch "
      labelName.text = "knight"
//        specialCapacityLPH = 5
//          specialCapacityPDH = 10
//         specialCapacityWDH = 0
    }
    
    @IBAction func wazardBu(_ sender: Any){
        labelText.text = "wizard"
          textField1.text = "\(90)"
          textFiled2.text = "\(15)"
          textField3.text = "\(70)"
          textField4.text = "\(20)"
        labelSC.text = "\(50)"
        labelNumber.text =  " 245 points to dispatch "
        labelName.text = "wizard"
//        specialCapacityLPH = 35
//          specialCapacityPDH = 10
//         specialCapacityWDH = 0
      }
    @IBAction func theifBu(_ sender: Any){
        labelText.text = "Thief"
        textField1.text = "\(65)"
        textFiled2.text = "\(25)"
        textField3.text = "\(15)"
        textField4.text = "\(30)"
        labelSC.text = "\(55)"
      labelNumber.text = " 212 points to dispatch "
      labelName.text = "Thief"
//        specialCapacityLPH = 5
//        specialCapacityPDH = 35
//         specialCapacityWDH = 0
     
    }
    }


extension ViewControllerTwo:UITextFieldDelegate {
func textFieldShouldReturn(_ TextLabal: UITextField) -> Bool {
    TextLabal.resignFirstResponder()
    var nameOfHero  = labelText.text
    
    return true

    
}
}

//
//  ViewControllerTwo.swift
//  ArwaAlattas_Project02_JizanFantasy
//
//  Created by Arwa Alattas on 27/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo:UIViewController{
    
    
    @IBOutlet weak var pointOfHero: UILabel!
    @IBOutlet weak var nameOfHero: UILabel!
//    @IBOutlet weak var lifePoint: UITextField!
//    @IBOutlet weak var defanseOfHero: UITextField!
//    @IBOutlet weak var powerDamageOfHero: UITextField!
//    @IBOutlet weak var weaponDamageOfHero: UITextField!
//    @IBOutlet weak var SpecialCapacityOfHero: UITextField!
    @IBOutlet weak var lifePointLable: UILabel!
    @IBOutlet weak var defaseLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var weaponLabel: UILabel!
    @IBOutlet weak var specialLabel: UILabel!
    
    @IBOutlet weak var storyOfHero: UILabel!
    
    @IBOutlet weak var imageOfHero: UIImageView!
    
//
//    @IBOutlet weak var maxOfDefanse: UILabel!
//
//    @IBOutlet weak var maxOfPower: UILabel!
//
//    @IBOutlet weak var maxOfWeapon: UILabel!
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let VC2 = segue.destination as! ViewController
//       VC2.nameOfHero.text = nameOfHero.text
//VC2.imageHero.image = imageOfHero.image
//        VC2.LifePointOfHero.text = lifePoint.text
//        VC2.defanseOfHero.text = defanseOfHero.text
//VC2.powerDamageOfHero.text = powerDamageOfHero.text
//VC2.weaponOfHero.text = weaponDamageOfHero.text
//VC2.specialCapacityOfHero.text = SpecialCapacityOfHero.text
//    }
    
@IBAction func stepperLP(_ sender: UIStepper) {
    lifePointLable.text = Int(sender.value).description
}

@IBAction func stepperDF(_ sender: UIStepper) {
    defaseLabel.text = Int(sender.value).description
}

@IBAction func stepperPD(_ sender: UIStepper) {
    powerLabel.text = Int(sender.value).description
}

@IBAction func stepperWD(_ sender: UIStepper) {
    weaponLabel.text = Int(sender.value).description
}

@IBAction func stepperSC(_ sender: UIStepper) {
    specialLabel.text = Int(sender.value).description
}

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let VC2 = segue.destination as! ViewController
   VC2.nameOfHero.text = nameOfHero.text
VC2.imageHero.image = imageOfHero.image
    VC2.LifePointOfHero.text = lifePointLable.text
    VC2.defanseOfHero.text = defaseLabel.text
    VC2.powerDamageOfHero.text = powerLabel.text
    VC2.weaponOfHero.text = weaponLabel.text
    VC2.specialCapacityOfHero.text = specialLabel.text

}
    
    
//    @IBAction func knightAction(_ sender: Any) {
//        pointOfHero.text = String(250)
//        imageOfHero.image = UIImage(named:"KnightImage")
//        storyOfHero.text = "The Knight have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
//        nameOfHero.text = "Knight"
//    }
     
    
//    @IBAction func wizardAction(_ sender: Any) {
//        pointOfHero.text = String(245)
//        imageOfHero.image = UIImage(named:"WizardImage")
//        storyOfHero.text = "The Wizard have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
//        nameOfHero.text = "Wizard"
//
//
//    }
    
    
//    @IBAction func thiefAction(_ sender: Any) {
//
//        pointOfHero.text = String(210)
//        imageOfHero.image = UIImage(named:"ThiefImage")
//        storyOfHero.text = "The Thief have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
//
//        nameOfHero.text = "Thief"
//
//    }
//

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageOfHero.image = UIImage(named:"KnightImage")
        storyOfHero.text = "The Knight have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
        nameOfHero.text = "Knight"
        // Do any additional setup after loading the view.
//        lifePoint.delegate = self
//        defanseOfHero.delegate = self
//        powerDamageOfHero.delegate = self
//        weaponDamageOfHero.delegate = self
//        SpecialCapacityOfHero.delegate = self
//       let toolBar = UIToolbar()
//        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
//        lifePoint.inputAccessoryView = toolBar
//        defanseOfHero.inputAccessoryView = toolBar
//        powerDamageOfHero.inputAccessoryView = toolBar
//        weaponDamageOfHero.inputAccessoryView = toolBar
//        SpecialCapacityOfHero.inputAccessoryView = toolBar
//
//        toolBar.setItems([doneButton], animated: false)
//        toolBar.sizeToFit()
//    }
//
//    @objc func doneClicked(){
//        view.endEditing(true)
//
}
    
    
    @IBAction func creatHero(_ sender: Any) {
        
       let alert = UIAlertController(title: "WARNING", message: "THE POINT OF THE HERO IS EMPTY", preferredStyle: UIAlertController.Style.alert)
        if lifePointLable.text!.isEmpty || defaseLabel.text!.isEmpty || powerLabel.text!.isEmpty || weaponLabel.text!.isEmpty || specialLabel.text!.isEmpty {
            self.present(alert, animated: true, completion: nil)

          }
//      if nameOfHero.text! == "Knight"{
//          if Int(defanseOfHero.text!)! > 20 {
//              defanseOfHero.text = ""
//              maxOfDefanse.text = "the max 20"
//          }else if Int(powerDamageOfHero.text!)! > 30 {
//              powerDamageOfHero.text = ""
//              maxOfPower.text = "the max 30"
//          }else if Int(weaponDamageOfHero.text!)! > 40{
//              weaponDamageOfHero.text = ""
//              maxOfWeapon.text = "the max 40"
//          }
//      }else if nameOfHero.text! == "Wizard"{
//
//          if Int(defanseOfHero.text!)! > 15{
//              defanseOfHero.text = ""
//              maxOfDefanse.text = "the max 15"
//          }else if Int(powerDamageOfHero.text!)! > 70 {
//              powerDamageOfHero.text = ""
//              maxOfPower.text = "the max 70"
//          }else if Int(weaponDamageOfHero.text!)! > 20{
//              weaponDamageOfHero.text = ""
//              maxOfWeapon.text = "the max 20"
//          }
//
//      }else if nameOfHero.text! == "Thief"{
//
//          if Int(defanseOfHero.text!)! > 25{
//              defanseOfHero.text = ""
//              maxOfDefanse.text = "the max 25"
//          }else if Int(powerDamageOfHero.text!)! > 15{
//              powerDamageOfHero.text = ""
//              maxOfPower.text = "the max 15"
//          }else if Int(weaponDamageOfHero.text!)! > 30{
//              weaponDamageOfHero.text = ""
//              maxOfWeapon.text = "the max 30"
//          }
//
        //
//
//      }
        
    }
    
    
}
//extension ViewControllerTwo:UITextFieldDelegate{
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        if textField.text! > {
//            textField.text = ""
//        }
//    }
    
//}

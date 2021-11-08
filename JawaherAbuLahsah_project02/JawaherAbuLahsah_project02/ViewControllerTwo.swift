//
//  ViewControllerTwo.swift
//  JawaherAbuLahsah_project02
//
//  Created by Jawaher Mohammad on 27/03/1443 AH.
//

import Foundation
import UIKit

class ViewControllerTwo:UIViewController{
    @IBOutlet weak var fieldName: UITextField!
    @IBOutlet weak var fieldLP: UITextField!
    @IBOutlet weak var fieldDF: UITextField!
    @IBOutlet weak var fieldPD: UITextField!
    @IBOutlet weak var fieldWD: UITextField!
    @IBOutlet weak var fieldSC: UITextField!
    
    @IBOutlet weak var playerPickerView: UIPickerView!
    @IBOutlet weak var wDWarning: UILabel!
    @IBOutlet weak var pDWarning: UILabel!
    @IBOutlet weak var dFWarning: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var lPLabel: UILabel!

    var playerArray = ["Knight","Wizard","Thief"]
    
    //here to choose on of three players
    var num = 0
  /*  @IBAction func playerChoice(_ sender: UIButton) {
        if sender.tag == 1 {
            lPLabel.text = "250"
            fieldLP.text = "60"
            fieldDF.text = "20"
            fieldPD.text = "30"
            fieldWD.text = "40"
            fieldSC.text = "100"
            fieldSC.isEnabled = false
            num = 1
            imageHero.image = UIImage(named: "hero1")
            storyLabel.text = "Hello, I Knight. I will try not to disappoint you 🦹🏻‍♂️⚔️. + 5 LP & + 10 WD"
            pDWarning.text = "Max:30"
            wDWarning.text = "Max:40"
            dFWarning.text = "Max:20"
            pDWarning.textColor = .purple
            wDWarning.textColor = .purple
            dFWarning.textColor = .purple
    }else if sender.tag == 2 {
            lPLabel.text = "245"
        fieldLP.text = "90"
        fieldDF.text = "15"
        fieldPD.text = "70"
        fieldWD.text = "20"
        fieldSC.text = "50"
        fieldSC.isEnabled = false
            num = 2
            imageHero.image = UIImage(named: "hero2")
            storyLabel.text = "Hello, I Wizard. I will fight with all my might 🦸🏻💪🏻. + 35 LP  & + 10 PD "
        pDWarning.text = "Max:70"
        wDWarning.text = "Max:20"
        dFWarning.text = "Max:15"
        pDWarning.textColor = .purple
        wDWarning.textColor = .purple
        dFWarning.textColor = .purple
        }else{
            lPLabel.text = "210"
            fieldLP.text = "65"
            fieldDF.text = "25"
            fieldPD.text = "15"
            fieldWD.text = "30"
            fieldSC.text = "65"
            fieldSC.isEnabled = false
            num = 3
            imageHero.image = UIImage(named: "hero3")
            storyLabel.text = "Hello, I a win Thief 🥷🏻💰. + 5 LP & + 35 WD"
            pDWarning.text = "Max:15"
            wDWarning.text = "Max:30"
            dFWarning.text = "Max:25"
            pDWarning.textColor = .purple
            wDWarning.textColor = .purple
            dFWarning.textColor = .purple
        }
    }*/
    //*************************
    
    
    //to send input to view one
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ViewController {
            destinationVC.nameplayer.text = fieldName.text
            destinationVC.lPP.text = fieldLP.text
            destinationVC.dFP.text = fieldDF.text
            destinationVC.pDP.text = fieldPD.text
            destinationVC.wDP.text = fieldWD.text
            destinationVC.sCP.text = fieldSC.text
            destinationVC.number = num
            destinationVC.imageHeroB.image = imageHero.image
        }
    }
    //*************************
    
    override func viewDidLoad() {
        //number only and done button
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicke))
        toolBar.setItems([doneButton], animated: false)
        
        fieldLP.inputAccessoryView = toolBar
        fieldDF.inputAccessoryView = toolBar
        fieldPD.inputAccessoryView = toolBar
        fieldWD.inputAccessoryView = toolBar
        fieldSC.inputAccessoryView = toolBar
}
    @objc func doneClicke(){
        view.endEditing(true)
    }
    //***********************************
    
    
    
    
    //button to check if field max or min ....
    @IBAction func createHeroButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "WARNING", message: "🛑🛑🛑🛑🛑🛑🛑🛑", preferredStyle: UIAlertController.Style.alert)
        
        if num == 1 {
            if Int(fieldDF.text!) ?? 0 > 21 || Int(fieldDF.text!) ?? 0 <= 0 {
                       fieldDF.text = ""
                       fieldDF.backgroundColor = .purple
               
                dFWarning.text = "Max:20"
                   }
            if Int(fieldPD.text!) ?? 0 > 31 || Int(fieldPD.text!) ?? 0 <= 0 {
                       fieldPD.text = ""
                       fieldPD.backgroundColor = .purple
               
                pDWarning.text = "Max:30"
                   }
            if Int(fieldWD.text!) ?? 0 > 41 || Int(fieldWD.text!) ?? 0 <= 0 {
                       fieldWD.text = ""
                       fieldWD.backgroundColor = .purple
               
                wDWarning.text = "Max:40"
            }
            pointCheck()
               }
        if num == 2 {
            if Int(fieldDF.text!) ?? 0 > 16 || Int(fieldDF.text!) ?? 0 <= 0 {
                       fieldDF.text = ""
                       fieldDF.backgroundColor = .purple
               
                dFWarning.text = "Max:15"
                   }
            if Int(fieldPD.text!) ?? 0 > 70 || Int(fieldPD.text!) ?? 0 <= 0 {
                       fieldPD.text = ""
                       fieldPD.backgroundColor = .purple
                
                pDWarning.text = "Max:70"
                   }
            if Int(fieldWD.text!) ?? 0 > 20 || Int(fieldWD.text!) ?? 0 <= 0 {
                       fieldWD.text = ""
                       fieldWD.backgroundColor = .purple
               
                wDWarning.text = "Max:20"
                   }
            pointCheck()
               }
        if num == 3 {
            if Int(fieldDF.text!) ?? 0 > 26 || Int(fieldDF.text!) ?? 0 <= 0 {
                       fieldDF.text = ""
                       fieldDF.backgroundColor = .purple
                
                dFWarning.text = "Max:25"
                   }
            if Int(fieldPD.text!) ?? 0 > 16 || Int(fieldPD.text!) ?? 0 <= 0 {
                       fieldPD.text = ""
                       fieldPD.backgroundColor = .purple
                
                pDWarning.text = "Max:15"
                   }
            if Int(fieldWD.text!) ?? 0 > 31 || Int(fieldWD.text!) ?? 0 <= 0 {
                       fieldWD.text = ""
                       fieldWD.backgroundColor = .purple
                
                wDWarning.text = "Max:30"
                   }
            pointCheck()
        }
            
        
        //***********************************
        //message if field empty
        
        if (fieldName.text?.isEmpty)! ||  (fieldLP.text?.isEmpty)! ||  (fieldDF.text?.isEmpty)! ||  (fieldPD.text?.isEmpty)! ||  (fieldWD.text?.isEmpty)! ||  (fieldSC.text?.isEmpty)!  {
         //   alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            warningLabel.text = "Text field is empty🛑"
            self.present(alert, animated: true, completion: nil)
              }
        //************************************
    }
    func pointCheck(){
        let a = Int(fieldLP.text!) ?? 0
        let b = Int(fieldDF.text!) ?? 0
        let c = Int(fieldPD.text!) ?? 0
        let d = Int(fieldWD.text!) ?? 0
        let f = Int(fieldSC.text!) ?? 0
        var x = Int(lPLabel.text!) ?? 0
        x = a - b - c - d - f
        if Int(lPLabel.text!) ?? 0 < x {
        storyLabel.text = "The total of the point inside the text field \(x) is not equal the player's points \(lPLabel.text!) "
            fieldLP.text = ""
            fieldDF.text = ""
            fieldPD.text = ""
            fieldWD.text = ""
        }
    }
    @IBAction func resetButton(_ sender: Any) {
        fieldLP.text = ""
        fieldDF.text = ""
        fieldPD.text = ""
        fieldWD.text = ""
        fieldSC.text = ""
        fieldName.text = ""
        fieldDF.backgroundColor = .white
        fieldWD.backgroundColor = .white
        fieldPD.backgroundColor = .white
        lPLabel.text = ""
        dFWarning.text = ""
        pDWarning.text = ""
        wDWarning.text = ""
        warningLabel.text = ""
    }
}
//***********************************
    
    





extension ViewControllerTwo:UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        textField.resignFirstResponder()
        return true
    }
}
extension ViewControllerTwo:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return playerArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return playerArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let namePlayer = playerArray[pickerView.selectedRow(inComponent: 0)]
        if namePlayer == "Knight" {
            lPLabel.text = "250"
            fieldLP.text = "60"
            fieldDF.text = "20"
            fieldPD.text = "30"
            fieldWD.text = "40"
            fieldSC.text = "100"
            fieldSC.isEnabled = false
            num = 1
            imageHero.image = UIImage(named: "hero1")
            storyLabel.text = "Hello, I Knight. I will try not to disappoint you 🦹🏻‍♂️⚔️. + 5 LP & + 10 WD"
            pDWarning.text = "Max:30"
            wDWarning.text = "Max:40"
            dFWarning.text = "Max:20"
            pDWarning.textColor = .purple
            wDWarning.textColor = .purple
            dFWarning.textColor = .purple
    }else if namePlayer == "Wizard" {
            lPLabel.text = "245"
        fieldLP.text = "90"
        fieldDF.text = "15"
        fieldPD.text = "70"
        fieldWD.text = "20"
        fieldSC.text = "50"
        fieldSC.isEnabled = false
            num = 2
            imageHero.image = UIImage(named: "hero2")
            storyLabel.text = "Hello, I Wizard. I will fight with all my might 🦸🏻💪🏻. + 35 LP  & + 10 PD "
        pDWarning.text = "Max:70"
        wDWarning.text = "Max:20"
        dFWarning.text = "Max:15"
        pDWarning.textColor = .purple
        wDWarning.textColor = .purple
        dFWarning.textColor = .purple
        }else{
            lPLabel.text = "210"
            fieldLP.text = "65"
            fieldDF.text = "25"
            fieldPD.text = "15"
            fieldWD.text = "30"
            fieldSC.text = "65"
            fieldSC.isEnabled = false
            num = 3
            imageHero.image = UIImage(named: "hero3")
            storyLabel.text = "Hello, I a win Thief 🥷🏻💰. + 5 LP & + 35 WD"
            pDWarning.text = "Max:15"
            wDWarning.text = "Max:30"
            dFWarning.text = "Max:25"
            pDWarning.textColor = .purple
            wDWarning.textColor = .purple
            dFWarning.textColor = .purple
        }
    }
    
}

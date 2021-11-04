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
    
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var lPLabel: UILabel!

    
    
    //here to choose on of three players
    var num = 0
    @IBAction func playerChoice(_ sender: UIButton) {
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
            storyLabel.text = "Hello, I Knight."
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
            storyLabel.text = "Hello, I Wizard."
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
            storyLabel.text = "Hello, I Thief."
        }
    }
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
        if num == 1 {
            if Int(fieldDF.text!) ?? 0 > 21 || Int(fieldDF.text!) ?? 0 <= 0 {
                       fieldDF.text = ""
                       fieldDF.backgroundColor = .purple
                   }
            if Int(fieldPD.text!) ?? 0 > 31 || Int(fieldPD.text!) ?? 0 <= 0 {
                       fieldPD.text = ""
                       fieldPD.backgroundColor = .purple
                   }
            if Int(fieldWD.text!) ?? 0 > 41 || Int(fieldWD.text!) ?? 0 <= 0 {
                       fieldWD.text = ""
                       fieldWD.backgroundColor = .purple
            }
         
               }
        if num == 2 {
            if Int(fieldDF.text!) ?? 0 > 16 || Int(fieldDF.text!) ?? 0 <= 0 {
                       fieldDF.text = ""
                       fieldDF.backgroundColor = .purple
                   }
            if Int(fieldPD.text!) ?? 0 > 70 || Int(fieldPD.text!) ?? 0 <= 0 {
                       fieldPD.text = ""
                       fieldPD.backgroundColor = .purple
                   }
            if Int(fieldWD.text!) ?? 0 > 20 || Int(fieldWD.text!) ?? 0 <= 0 {
                       fieldWD.text = ""
                       fieldWD.backgroundColor = .purple
                   }
           
               }
        if num == 3 {
            if Int(fieldDF.text!) ?? 0 > 26 || Int(fieldDF.text!) ?? 0 <= 0 {
                       fieldDF.text = ""
                       fieldDF.backgroundColor = .purple
                   }
            if Int(fieldPD.text!) ?? 0 > 16 || Int(fieldPD.text!) ?? 0 <= 0 {
                       fieldPD.text = ""
                       fieldPD.backgroundColor = .purple
                   }
            if Int(fieldWD.text!) ?? 0 > 30 || Int(fieldWD.text!) ?? 0 <= 0 {
                       fieldWD.text = ""
                       fieldWD.backgroundColor = .purple
                   }
        
               }
        //***********************************
        
        
        
        //message if field empty
        let alert = UIAlertController(title: "WARNING", message: "THE TEXT FIELD IS EMPTY", preferredStyle: UIAlertController.Style.alert)
        if (fieldName.text?.isEmpty)! ||  (fieldLP.text?.isEmpty)! ||  (fieldDF.text?.isEmpty)! ||  (fieldPD.text?.isEmpty)! ||  (fieldWD.text?.isEmpty)! ||  (fieldSC.text?.isEmpty)!  {
         //   alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
              }
        //************************************
    }
    
    
    //Not work yet :(
    func pointCheck(){
        let a = Int(fieldLP.text!) ?? 0
        let b = Int(fieldDF.text!) ?? 0
        let c = Int(fieldPD.text!) ?? 0
        let d = Int(fieldWD.text!) ?? 0
        let f = Int(fieldSC.text!) ?? 0
        var x = Int(lPLabel.text!) ?? 0
        x = a - b - c - d - f
        if x < 0 {
            storyLabel.text = "the point ofer \(lPLabel.text!) \(x)"
            fieldLP.text = ""
        }
    }
    }
//***********************************
    
    





extension ViewControllerTwo:UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        textField.resignFirstResponder()
        return true
    }
}

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
    
    
    
    
    
    //override func viewWillAppear(_ animated: Bool) {
     //   createButton.isEnabled = !fieldLP.text!.isEmpty
   // }
    
    
    
    var num = 0
    @IBAction func playerChoice(_ sender: UIButton) {
        
        if sender.tag == 1 {
            lPLabel.text = "250"
            num = 1
            imageHero.image = UIImage(named: "hero1")
            storyLabel.text = "Hello, I Knight."
       // fieldLP.textRange(from: <#T##UITextPosition#>, to: <#T##UITextPosition#>)
          /* if fieldLP.text! < "31" {
            fieldLP.backgroundColor = .red
             createButton.isUserInteractionEnabled = false
            }else{
             createButton.isUserInteractionEnabled = true
           }*/
    }else if sender.tag == 2 {
            lPLabel.text = "245"
            num = 2
            imageHero.image = UIImage(named: "hero2")
            storyLabel.text = "Hello, I Wizard."
        
        }else{
            lPLabel.text = "210"
            num = 3
            imageHero.image = UIImage(named: "hero3")
            storyLabel.text = "Hello, I Thief."
        }
    }
    
     
    
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
    override func viewDidLoad() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicke))
        toolBar.setItems([doneButton], animated: false)
        
        fieldLP.inputAccessoryView = toolBar
        fieldDF.inputAccessoryView = toolBar
        fieldPD.inputAccessoryView = toolBar
        fieldWD.inputAccessoryView = toolBar
        fieldSC.inputAccessoryView = toolBar
        
        /*
        */
        
        
        
       /* fieldLP.text = nil
        if (fieldLP.text == nil) {
                        createButton.isUserInteractionEnabled = false
                       }else{
                           createButton.isUserInteractionEnabled = true
                       }*/
      //createButton.isUserInteractionEnabled = false
        
       //
       // createButton.isUserInteractionEnabled = false
        /*       if fieldName.text!.isEmpty &&  fieldLP.text!.isEmpty &&  fieldDF.text!.isEmpty &&  fieldPD.text!.isEmpty &&  fieldWD.text!.isEmpty &&  fieldSC.text!.isEmpty == true {
            
        } else {
            createButton.isEnabled = true
            createButton.alpha = 1.0
        }8
         
         createButton.isUserInteractionEnabled = !fieldName.text!.isEmpty
         createButton.isUserInteractionEnabled = !fieldLP.text!.isEmpty
         createButton.isUserInteractionEnabled = !fieldDF.text!.isEmpty
         createButton.isUserInteractionEnabled = !fieldPD.text!.isEmpty
         createButton.isUserInteractionEnabled = !fieldWD.text!.isEmpty
         createButton.isUserInteractionEnabled = !fieldSC.text!.isEmpty*******/
     // createButton.isUserInteractionEnabled = false
       // createButton.alpha = 0.5
        
         
        //ابغى انقص من الرقم اللي يطلع فوق علي حسب القيمه اللي تدخل في التكست فيل
        //ابفي التكست فيل يقبل ارقام فقط ولازم ميكون فاضي
        //ابغي ينفذ الشرط انه مايكون اكثر من المطلوب لك بطل 
                }
    @objc func doneClicke(){
        view.endEditing(true)
    }
    /*
     اذا فاضي
     @IBAction func checkTextFeild(_ sender: Any) {
       if let text = textField.text, text.isEmpty {
          resultLabel.text = "Text field is empty"
       } else {
          resultLabel.text = "Text Field is not empty"
       }
    }*/
    
    }

extension ViewControllerTwo:UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        textField.resignFirstResponder()
        return true
    }
   /* func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newText = (textField.text! as NSString).replacingCharacters(in: range, with: string) as String
        if let num = Int(newText), num >= 0 && num <= 30 {
            return true
        } else {
            return false
        }
    }
    
    
    */
    
    
    /*func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        // Handle backspace/delete
        guard !string.isEmpty else {

            // Backspace detected, allow text change, no need to process the text any further
            /*       return true
        }

        // Input Validation
        // Prevent invalid character input, if keyboard is numberpad
        if textField.keyboardType == .numberPad {

            // Check for invalid input characters
            if CharacterSet(charactersIn: "0123456789").isSuperset(of: CharacterSet(charactersIn: string)) {

                // Present alert so the user knows what went wrong
               // presentAlert("This field accepts only numeric entries.")

                // Invalid characters detected, disallow text change
                return false
            }
        }
    }
    
     func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
    // let text = (textField.text! as NSString).replacingCharacters(in: range, with: string)
         //   let text2 = (fieldLP.text! as NSString).replacingCharacters(in: range, with: string)
          //  let text3 = (fieldDF.text! as NSString).replacingCharacters(in: range, with: string)
         //   let text4 = (fieldPD.text! as NSString).replacingCharacters(in: range, with: string)
          //  let text5 = (fieldWD.text! as NSString).replacingCharacters(in: range, with: string)
         //   let text6 = (fieldSC.text! as NSString).replacingCharacters(in: range, with: string)
          //  if text.isEmpty &&  text2.isEmpty &&  text3.isEmpty &&  text4.isEmpty &&  text5.isEmpty &&  text6.isEmpty {
        if let text = textField.text, text.isEmpty{
       // if text.isEmpty{
            //make isUserInteractionEnabled = true
            createButton.isUserInteractionEnabled = true
        } else {
            //make isUserInteractionEnabled = false
            createButton.isUserInteractionEnabled = false
        }

        return true
    }
   
          func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       
            createButton.isEnabled = false
            createButton.alpha = 0.5
        } else {
            createButton.isEnabled = true
            createButton.alpha = 1.0
        }
        let text2 = (fieldLP.text! as NSString).replacingCharacters(in: range, with: "hi")
          if text2.isEmpty {
            createButton.isEnabled = false
            createButton.alpha = 0.5
        } else {
            createButton.isEnabled = true
            createButton.alpha = 1.0
        }
        let text3 = (fieldDF.text! as NSString).replacingCharacters(in: range, with: "hi")
        if text3.isEmpty {
            createButton.isEnabled = false
            createButton.alpha = 0.5
        } else {
            createButton.isEnabled = true
            createButton.alpha = 1.0
        }
        let text4 = (fieldPD.text! as NSString).replacingCharacters(in: range, with: "hi")
        if text4.isEmpty {
            createButton.isEnabled = false
            createButton.alpha = 0.5
        } else {
            createButton.isEnabled = true
            createButton.alpha = 1.0
        }
        let text5 = (fieldWD.text! as NSString).replacingCharacters(in: range, with: "hi")
        if text5.isEmpty {
            createButton.isEnabled = false
            createButton.alpha = 0.5
        } else {
            createButton.isEnabled = true
            createButton.alpha = 1.0
        }
        let text6 = (fieldSC.text! as NSString).replacingCharacters(in: range, with: "hi")
        if text6.isEmpty {
            createButton.isEnabled = false
            createButton.alpha = 0.5
        } else {
            createButton.isEnabled = true
            createButton.alpha = 1.0
        }
        return true
    }*/*/
          
}

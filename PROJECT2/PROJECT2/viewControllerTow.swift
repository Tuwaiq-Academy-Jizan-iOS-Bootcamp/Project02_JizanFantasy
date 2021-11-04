//
//  viewControllerTow.swift
//  PROJECT2
//
//  Created by زهور حسين on 28/03/1443 AH.
//

import Foundation
import UIKit


class viewControllerTow: UIViewController{
    
    @IBOutlet weak var textField1: UITextField!

    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    
    @IBOutlet weak var textField4: UITextField!
    
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var textField6: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendBack = segue.destination as!ViewController
        sendBack.label1.text = textField2.text
        sendBack.label2.text = textField3.text
        sendBack.label3.text = textField4.text
        sendBack.label4.text = textField5.text
    }
    
}
    
extension viewControllerTow: UITextFieldDelegate{
      func textFieldShoulderReturn(_ textField: UITextField)-> Bool {
          textField.resignFirstResponder()
          return true
      }
}

    


 


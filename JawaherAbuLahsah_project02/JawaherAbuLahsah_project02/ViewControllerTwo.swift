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
    
    @IBOutlet weak var lPLabel: UILabel!
    override func viewDidLoad() {
    }
 //  let playerOne = Boss2(name: nil , lifePoint: nil, defense: nil, powerDamage: nil, weaponDamage: nil, specialCapacity: nil)
    var num:Int = 0
    @IBAction func playerChoice(_ sender: UIButton) {
    
        if sender.tag == 1 {
            lPLabel.text = "250"
            num = 1
        }else if sender.tag == 2 {
            lPLabel.text = "245"
            num = 2
        }else{
            lPLabel.text = "210"
            num = 3
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
        }
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
    
}

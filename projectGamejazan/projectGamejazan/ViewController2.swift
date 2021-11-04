//
//  ViewController2.swift
//  projectGamejazan
//
//  Created by grand ahmad on 28/03/1443 AH.
//

import Foundation
import UIKit

//desccribtion.LP.text = FieldLP.text

class ViewController2: UIViewController{
//   اربطهم كل واحد بروحه
    override func viewDidLoad() {
        
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let controlsSegue = segue.destination as? ViewCntroller {
//            controlsSegue.LP.text = fieldLP.text
//
//    }
//}
}
extension ViewController2: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("0")
//        if textField.tag == 2{
//            let num = Int(textField.text)!
        }
    }
//}

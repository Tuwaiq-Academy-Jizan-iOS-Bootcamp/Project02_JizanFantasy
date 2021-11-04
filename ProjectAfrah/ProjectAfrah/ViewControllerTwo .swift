//
//  ViewControllerTwo .swift
//  ProjectAfrah
//
//  Created by Afrah Omar on 27/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo: UIViewController {
    @IBOutlet weak var nametextFiled: UITextField!
    @IBOutlet weak var textFiledLP: UITextField!
    @IBOutlet weak var textFiledDF: UITextField!
    @IBOutlet weak var textFiledPD: UITextField!
    @IBOutlet weak var textFiledWD: UITextField!
    @IBOutlet weak var textFiledEffectPD: UITextField!
    @IBOutlet weak var labelStory: UILabel!
    override func viewDidLoad() {
        nametextFiled.delegate = self
        textFiledLP.delegate = self
        textFiledDF.delegate = self
        textFiledPD.delegate = self
        textFiledWD.delegate = self
        textFiledEffectPD.delegate = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let backVC = segue.destination as! ViewController
//    backVC.llabelName.text = nametextFiled.text
        backVC.labelHeroLP.text = textFiledLP.text
        backVC.labelHeroDF.text = textFiledDF.text
        backVC.labelHeroPD.text = textFiledPD.text
        backVC.labelHeroWD.text = textFiledWD.text
        backVC.labelHeroSC.text = textFiledEffectPD.text
    
}
    
}
extension ViewControllerTwo:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

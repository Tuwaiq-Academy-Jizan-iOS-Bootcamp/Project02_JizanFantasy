//
//  ViewThief.swift
//  DahmaProject02
//
//  Created by dahma alwani on 02/04/1443 AH.
//

import Foundation
import UIKit
 
class ViewThief : UIViewController {
    
    @IBOutlet weak var labelLp: UILabel!
    @IBAction func stepperLp(_ sender: UIStepper) {
        labelLp.text = String (Int(sender.value))
    }
    
    
    @IBOutlet weak var labelDf: UILabel!
    @IBAction func stepperDf(_ sender: UIStepper) {
        labelDf.text = String (Int(sender.value))
    }
    
    @IBOutlet weak var labelPd: UILabel!
    @IBAction func stepperPd(_ sender: UIStepper) {
        labelPd.text = String (Int(sender.value))
    }
    
    @IBOutlet weak var labelWd: UILabel!
    @IBAction func stepperWd(_ sender: UIStepper) {
        labelWd.text = String (Int(sender.value))
    }
    
    @IBOutlet weak var labelSc: UILabel!
    @IBAction func stepperSc(_ sender: UIStepper) {
        labelSc.text = String (Int(sender.value))
    }
//    @IBAction func buttonCreateChallenger(_ sender: UIStoryboardSegue) {       performSegue(withIdentifier: "creatSegue2", sender: sender)
        
@IBAction func buttonCreateChallenger(_ sender: UIStoryboardSegue) {
        performSegue(withIdentifier: "creatSegue2", sender: sender)
}
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destrinationVC = segue.destination as? ViewSpaceOfPlay {
        destrinationVC.lifePoint = labelLp.text ?? ""
        destrinationVC.defend = labelDf.text ?? ""
        destrinationVC.powerDamage = labelPd.text ?? ""
        destrinationVC.weaponDamage = labelWd.text ?? ""
        destrinationVC.specialEffect = labelSc.text ?? ""
}

}
}

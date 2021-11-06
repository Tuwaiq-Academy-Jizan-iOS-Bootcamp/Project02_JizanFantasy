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
        labelLp.text = String (sender.value)
    }
    
    @IBOutlet weak var labelDf: UILabel!
    @IBAction func stepperDf(_ sender: UIStepper) {
        labelDf.text = String (sender.value)
    }
    
    @IBOutlet weak var labelPd: UILabel!
    @IBAction func stepperPd(_ sender: UIStepper) {
        labelPd.text = String (sender.value)
    }
    
    @IBOutlet weak var labelWd: UILabel!
    @IBAction func stepperWd(_ sender: UIStepper) {
        labelWd.text = String (sender.value)
    }
    
    @IBOutlet weak var labelSc: UILabel!
    @IBAction func stepperSc(_ sender: UIStepper) {
        labelSc.text = String (sender.value)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let rootCV = segue.destination as! ViewController
    
    }
    
//    func preformSegue (withIdentifier: "goToCV" , sender: self )
    
}

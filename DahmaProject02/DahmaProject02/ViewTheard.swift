//
//  ViewTheard.swift
//  DahmaProject02
//
//  Created by dahma alwani on 02/04/1443 AH.
//

import Foundation
import UIKit

class ViewTheard : UIViewController {
    
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
    @IBAction func createChallenge(_ sender: Any) {
        performSegue(withIdentifier: "goTovc4", sender: self)
            }
    
    
    @IBAction func rootViewController (segue: UIStoryboardSegue){
        print ("d")
    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//      let user = segue.destination as! ViewTheard
    }
        



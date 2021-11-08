//
//  ViewControllerThree.swift
//  Project
//
//  Created by Yasir Hakami on 04/11/2021.
//

import Foundation
import UIKit

class ViewControllerThree : UIViewController {
    
    @IBOutlet weak var txLfW: UITextField!
    @IBOutlet weak var txDfW: UITextField!
    @IBOutlet weak var txPdW: UITextField!
    @IBOutlet weak var txWdW: UITextField!
    @IBOutlet weak var scWizard: UILabel!
    @IBOutlet weak var theWizard: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        txLfW.text = "90"
        
        txDfW.delegate = self
        txPdW.delegate = self
        txWdW.delegate = self
    }
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trDataW = segue.destination as! ViewController
        
        trDataW.lpHero.text = txLfW.text
        trDataW.lpDf.text = txDfW.text
        trDataW.lpPd.text = txPdW.text
        trDataW.lpWd.text = txWdW.text
        trDataW.sc.text = scWizard.text
        trDataW.heroName.text = theWizard.text
        
}
    }


extension ViewControllerThree : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if theWizard.text == "wizard" {
            if Int(textField.text!)! > 90 {
                txLfW.text = "\(Int(90))"
            if Int(textField.text!)! > 15 {
                txDfW.text = "\(Int(15))"
                if Int(textField.text!)! > 70 {
                    txPdW.text = "\(Int(70))"
                    if Int(textField.text!)! > 20 {
                        txWdW.text = "\(Int(20))"
                        }
                        
                    }
                }
            }
        }
    }
}

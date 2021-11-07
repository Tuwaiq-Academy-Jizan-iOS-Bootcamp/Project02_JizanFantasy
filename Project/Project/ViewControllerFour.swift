//
//  ViewControllerFour.swift
//  Project
//
//  Created by Yasir Hakami on 04/11/2021.
//

import Foundation
import UIKit

class ViewControllerFour : UIViewController {
    
    @IBOutlet weak var txLft: UITextField!
    @IBOutlet weak var txDft: UITextField!
    @IBOutlet weak var txPdt: UITextField!
    @IBOutlet weak var txWdt: UITextField!
    @IBOutlet weak var scThief: UILabel!
    @IBOutlet weak var theThief: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        txLft.text = "65"
    
        txDft.delegate = self
        txPdt.delegate = self
        txWdt.delegate = self
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trDatatT = segue.destination as! ViewController
        trDatatT.lpHero.text = txLft.text!
        trDatatT.lpDf.text = txDft.text!
        trDatatT.lpPd.text = txPdt.text!
        trDatatT.lpWd.text = txWdt.text!
        trDatatT.sc.text = scThief.text
        trDatatT.heroName.text = theThief.text

        
        
}
    
}

extension ViewControllerFour: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if theThief.text == "Thief" {
            if Int(textField.text!)! > 65 {
                txLft.text = "\(Int(65))"
            if Int(textField.text!)! > 25 {
                txDft.text = "\(Int(25))"
                if Int(textField.text!)! > 15 {
                    txPdt.text = "\(Int(15))"
                    if Int(textField.text!)! > 30 {
                        txWdt.text = "\(Int(30))"
                        }
                        
                    }
                }
            }
        }
    
}
}

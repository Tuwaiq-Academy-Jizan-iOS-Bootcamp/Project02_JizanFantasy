//
//  ViewControllerTwo.swift
//  Project
//
//  Created by Yasir Hakami on 03/11/2021.
//

import Foundation
import UIKit


class ViewControllerTwo : UIViewController {
   
    @IBOutlet weak var txLf: UITextField!
    @IBOutlet weak var txDf: UITextField!
    @IBOutlet weak var txPd: UITextField!
    @IBOutlet weak var txWd: UITextField!
    @IBOutlet weak var scKnight: UILabel!
    
    @IBOutlet weak var theKnight: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        txLf.text = "60"
        
        txDf.delegate = self
        txPd.delegate = self
        txWd.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trData = segue.destination as! ViewController
        trData.lpHero.text = txLf.text
        trData.lpDf.text = txDf.text
        trData.lpPd.text = txPd.text
        trData.lpWd.text = txWd.text
        trData.sc.text = scKnight.text
        trData.heroName.text = theKnight.text
    }
        
    @IBAction func crButten(_ sender: Any) {
        
    }
    
    
}


extension ViewControllerTwo : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
        func textFieldDidEndEditing(_ textField: UITextField) {
            if theKnight.text == "Knight" {
                if Int(textField.text!)! > 60 {
                    txLf.text = "\(Int(60))"
                if Int(textField.text!)! > 20 {
                    txDf.text = "\(Int(20))"
                    if Int(textField.text!)! > 30 {
                        txPd.text = "\(Int(30))"
                        if Int(textField.text!)! > 40 {
                            txWd.text = "\(Int(40))"
                            }
                        }
                    }
                }
            }
        }
    }


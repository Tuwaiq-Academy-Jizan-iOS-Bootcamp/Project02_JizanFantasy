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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        txDfW.delegate = self
        txPdW.delegate = self
        txWdW.delegate = self
    }
    
    @IBAction func roll(_ sender: Any) {
        
        performSegue(withIdentifier: "GoToW", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trData = segue.destination as! ViewController
        trData.lpHero.text = txLfW.text
        trData.lpDf.text = txDfW.text
        trData.lpPd.text = txPdW.text
        trData.lpWd.text = txWdW.text
}
}
extension ViewControllerThree : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

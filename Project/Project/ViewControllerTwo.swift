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
        txLf.text = "60"
        
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
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//
//
//
//       return true
//    }

}

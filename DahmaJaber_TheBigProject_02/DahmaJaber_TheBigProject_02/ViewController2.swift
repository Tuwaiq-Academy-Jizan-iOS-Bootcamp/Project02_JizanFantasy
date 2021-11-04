//
//  ViewController2.swift
//  DahmaJaber_TheBigProject_02
//
//  Created by dahma alwani on 28/03/1443 AH.
//

import Foundation
import UIKit


class ViewController2 : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var imageForNewPlayer: UIImageView!
    
    @IBOutlet weak var textFieldName: UITextField!
    override func viewDidLoad() {
        textFieldName.delegate = self
    }
//    override func prepare ( for segue : UIStoryboardSegue, sender : Any?) {
//        let root = segue.destination as! ViewController1
//    }
//
//        theRoot.text = textFieldName.text
//    }
//}
//
//extension ViewController2 :UITextFieldDelegate {
//
//    func textFieldShouldReturn (_ textField : UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
    
    @IBOutlet weak var PointCanDistribute: UILabel!
    
    @IBOutlet weak var lifeLp: UILabel!
    @IBOutlet weak var deDf: UILabel!
    @IBOutlet weak var poWd: UILabel!
    @IBOutlet weak var weaWd: UILabel!
    @IBOutlet weak var spePd: UILabel!
    
    
    @IBOutlet weak var textFieldLp: UITextField!
    @IBOutlet weak var textFieldDf: UITextField!
    @IBOutlet weak var textFieldWd: UITextField!
    @IBOutlet weak var textFieldwWp: UITextField!
    @IBOutlet weak var textFieldPd: UITextField!
    
    @IBOutlet weak var storyTheNewChalaaenger: UILabel!
    
    @IBAction func createNewChallenger(_ sender: Any) {
    }
}

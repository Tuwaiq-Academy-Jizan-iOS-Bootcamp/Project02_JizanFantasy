//
//  ViewControllerTwo.swift
//  Fatan Alfifi Project2
//
//  Created by Faten Abdullh salem on 27/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo: UIViewController{

    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    @IBOutlet weak var TextField3: UITextField!
    @IBOutlet weak var TextField4: UITextField!
    @IBOutlet weak var TextField5: UITextField!
    @IBOutlet weak var TextField6: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
let sendBack1 = segue.destination as! ViewController
sendBack1.labelLP2.text = TextField1.text
    
    let sendBack2 = segue.destination as! ViewController
    sendBack2.labelDF2.text = TextField2.text
    
    let sendBack3 = segue.destination as! ViewController
    sendBack3.labelPD2.text = TextField2.text
    let sendBack4 = segue.destination as! ViewController
    sendBack4.labelSC2.text = TextField2.text
}
}

extension ViewControllerTwo: UITextViewDelegate{
    func textFieldShouldReturn( textField1: UITextField) -> Bool {
        TextField1.resignFirstResponder()
        return true
    }
}


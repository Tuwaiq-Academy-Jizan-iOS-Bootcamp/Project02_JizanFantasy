//
//  ViewControllerTwo.swift
//  Fatan Alfifi Project2
//
//  Created by Faten Abdullh salem on 27/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo: UIViewController{
    
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    @IBOutlet weak var TextField3: UITextField!
    @IBOutlet weak var TextField4: UITextField!
    @IBOutlet weak var TextField5: UITextField!
    @IBOutlet weak var TextField6: UITextField!
    @IBOutlet weak var Labe2: UILabel!
    
@IBOutlet weak var pickHero: UIPickerView!
var arrayName = ["Knight","wizard","thief"]
    
    
    
override func viewDidLoad() {
super.viewDidLoad()
pickHero.delegate = self
pickHero.dataSource = self
}
    
override func prepare(for segue:
UIStoryboardSegue, sender: Any?) {
let Abb = segue.destination as!ViewController
Abb.labelName2.text = TextField1.text
Abb.labelLP2.text = TextField2.text
Abb.labelDF2.text = TextField3.text
Abb.labelPD2.text = TextField4.text
Abb.labelWD2.text = TextField5.text
Abb.labelSC2.text = TextField6.text
Abb.imageHero.image = imageHero.image
}
}
extension ViewControllerTwo: UITextViewDelegate{
func textFieldShouldReturn( textField: UITextField) -> Bool {
textField.resignFirstResponder()
return true
}
}
    
extension ViewControllerTwo: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return arrayName.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayName[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("\(arrayName[row])")
        TextField1.text = arrayName[row]
    }
}



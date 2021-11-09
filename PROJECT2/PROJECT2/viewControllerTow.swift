//
//  viewControllerTow.swift
//  PROJECT2
//
//  Created by زهور حسين on 28/03/1443 AH.
//

import Foundation
import UIKit


class viewControllerTow: UIViewController{
    
    var Heros = 0

    @IBOutlet weak var labelPoint: UILabel!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var viewplayer: UIImageView!
    @IBOutlet weak var PickerView: UIPickerView!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var Named: UILabel!
    
    @IBOutlet weak var textField4: UITextField!
    
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var textField6: UITextField!
    
    var arrayOfString = ["Knight","Wizard","Thief"]
    override func viewDidLoad() {
    
        PickerView.delegate = self
        PickerView.dataSource = self
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendBack = segue.destination as!ViewController
        sendBack.label1.text = textField2.text
        sendBack.label2.text = textField3.text
        sendBack.label3.text = textField4.text
        sendBack.label4.text = textField5.text
        sendBack.Total2.text = textField6.text
        sendBack.Playerimage.image = viewplayer.image
    }

   
       
   /*     Heros = 1
        switch Heros {
        case Knight : viewplayer.image = UIImage(named: "image1")
            Named.text = "Knight"
            labelPoint.text = "250"
        case 2 : viewplayer.image = UIImage(named: "image2")
            Named.text = "Wizard"
            labelPoint.text = "245"
        case 3 :viewplayer.image = UIImage(named: "image3")
            Named.text = "Thief"
            labelPoint.text = "210"
        case 4 :
            Heros = 0
        default:
            print ("no Hero")
       
    }*/
}

extension viewControllerTow: UITextFieldDelegate{
      func textFieldShoulderReturn(_ textField: UITextField)-> Bool {
          textField.resignFirstResponder()
          return true
      }
}
extension viewControllerTow: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView:UIPickerView) -> Int{
            return 1
        }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfString.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayOfString[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      
        let playerName = arrayOfString[pickerView.selectedRow(inComponent: 0)]
        switch playerName {
        case "Knight" : viewplayer.image = UIImage(named: "image1")
            Named.text = "Knight"
            labelPoint.text = "250"
        case "Wizard" : viewplayer.image = UIImage(named: "image2")
            Named.text = "Wizard"
            labelPoint.text = "245"
        case "Thief" :viewplayer.image = UIImage(named: "image3")
            Named.text = "Thief"
            labelPoint.text = "210"
        default:
            print ("no Hero")
       
    }

    }
}


 


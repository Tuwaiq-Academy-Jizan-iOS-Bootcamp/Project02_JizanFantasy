//
//  ViewControllerManue.swift
//  Project
//
//  Created by Yasir Hakami on 08/11/2021.
//

import Foundation
import UIKit

class ViewControllerManue : UIViewController {
    @IBOutlet var myPickerView: UIPickerView!
    
    var fighter = ["Knight","wizard","Thief"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
    }
    
}

extension ViewControllerManue: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fighter.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return fighter[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if myPickerView.selectedRow(inComponent: 0) == 0 {
            performSegue(withIdentifier: "FK", sender: self)
        } else if myPickerView.selectedRow(inComponent: 0) == 1 {
            performSegue(withIdentifier: "FW", sender: self)
        } else if myPickerView.selectedRow(inComponent: 0) == 2 {
            performSegue(withIdentifier: "FT", sender: self)
        }
    }
    
    
}

//
//  viewControllerCoise.swift
//  ArwaAlattas_Project02_JizanFantasy
//
//  Created by Arwa Alattas on 03/04/1443 AH.
//

import Foundation
import UIKit
class viewControllerChoice : UIViewController {
    @IBOutlet weak var choiceHeroPickerView: UIPickerView!
    var hero = ["Knight","Wizard","Thief"]
    override func viewDidLoad() {
        choiceHeroPickerView.delegate = self
        choiceHeroPickerView.dataSource = self
    }
    
    
    
    
}
extension viewControllerChoice : UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        hero[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
                performSegue(withIdentifier: "goToKnight", sender: self)
                
        }else  if row == 1
        {
                performSegue(withIdentifier: "goToWizard", sender: self)
        }else{
                performSegue(withIdentifier: "goToThief", sender: self)

        }
    }
    
    
    
    
    
    
    
}






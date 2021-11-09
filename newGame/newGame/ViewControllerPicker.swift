//
//  ViewControllerPicker.swift
//  newGame
//
//  Created by Abdulrhman Abuhyyh on 03/04/1443 AH.
//

import UIKit

class ViewControllerPicker: UIViewController {
    
  
    @IBOutlet weak var pickerPlayers: UIPickerView!
    
    var arrayPlayer = ["Wizard","Knight","Thife"]
    @IBOutlet weak var lableName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerPlayers.delegate = self
        pickerPlayers.dataSource = self
    }
}

extension ViewControllerPicker: UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPlayer.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayPlayer[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
    @IBAction func pickerActionOfPlayer(_ sender: UIButton) {
        lableName.text = arrayPlayer[pickerPlayers.selectedRow(inComponent: 0)]
 }
}
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
      

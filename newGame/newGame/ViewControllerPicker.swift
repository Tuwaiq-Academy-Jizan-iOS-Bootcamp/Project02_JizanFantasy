//
//  ViewControllerPicker.swift
//  newGame
//
//  Created by Abdulrhman Abuhyyh on 03/04/1443 AH.
//

import UIKit

class ViewControllerPicker: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var arrayPlayer = ["Wizard","Knight","Thife"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return arrayPlayer.count
        }else{
            return arrayPlayer.count
        }
    }
    

    @IBOutlet weak var pickerPlayer: UIPickerView!
    
    @IBOutlet weak var lableName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerPlayer.delegate = self
        pickerPlayer.dataSource = self
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayPlayer[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let player1 = pickerView.selectedRow(inComponent: 0)
    }
    @IBAction func pickerActionOfPlayer(_ sender: UIButton) {
        lableName.text = arrayPlayer[pickerPlayer.selectedRow(inComponent: 0)]
        
        
            
        }
    }

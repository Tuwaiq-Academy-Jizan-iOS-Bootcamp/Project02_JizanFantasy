//
//  ViewSecond.swift
//  DahmaProject02
//
//  Created by dahma alwani on 02/04/1443 AH.
//

import Foundation
import UIKit


class ViewSecond: UIViewController {
   
    //Outlets//
//    @IBOutlet weak var knightButton: UIButton!
//    @IBOutlet weak var wizardButton: UIButton!
//    @IBOutlet weak var thiefButton: UIButton!
    //Override//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        knightButton.layer.cornerRadius = 40
//        wizardButton.layer.cornerRadius = 40
//        thiefButton.layer.cornerRadius = 40
//    }

    @IBOutlet weak var pickerForHero: UIPickerView!
    
    var hero = ["wizard", "knight", "thief"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerForHero.delegate = self
        pickerForHero.dataSource = self
    }
}

extension ViewSecond: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return hero.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return hero[row]
}
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("\(hero[row])")
        
        if row == 0 { //`knight
            performSegue(withIdentifier: "segKnight", sender: self)
            
        }
        
        
        
    }
    
    
}



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
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var Named: UILabel!
    
    @IBOutlet weak var textField4: UITextField!
    
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var textField6: UITextField!
    
    
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendBack = segue.destination as!ViewController
        sendBack.label1.text = textField2.text
        sendBack.label2.text = textField3.text
        sendBack.label3.text = textField4.text
        sendBack.label4.text = textField5.text
        sendBack.Total2.text = textField6.text
    }

    @IBAction func imageChanges(_ sender: Any) {
       
        Heros += 1
        switch Heros {
        case 1 : viewplayer.image =
            UIImage(named: "image1")
            viewplayer.text = "Knight"
            labelPoint.text = "250"
        case 2 : viewplayer.image = UIImage(named: "image2")
            viewplayer.text = "Wizard"
            labelPoint.text = "245"
        case 3 :viewplayer.image = UIImage(named: "image3")
            viewplayer.text = "thief"
            labelPoint.text = "210"
        case 4 :
            Heros = 0
        default:
            print ("no Hero")
       
    }
}

extension viewControllerTow: UITextFieldDelegate{
      func textFieldShoulderReturn(_ textField: UITextField)-> Bool {
          textField.resignFirstResponder()
          return true
      }
}
}
    


 


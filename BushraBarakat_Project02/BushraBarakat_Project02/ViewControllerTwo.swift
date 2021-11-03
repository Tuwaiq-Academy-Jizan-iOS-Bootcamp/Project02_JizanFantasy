//
//  ViewControllerTwo.swift
//  BushraBarakat_Project02
//
//  Created by Bushra Barakat on 27/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo: UIViewController{
    @IBOutlet weak var textFiled5: UITextField!
    @IBOutlet weak var textFiled4: UITextField!
    @IBOutlet weak var textFiled3: UITextField!
    @IBOutlet weak var textFiled2: UITextField!
    @IBOutlet weak var textFiled1: UITextField!
    @IBOutlet weak var newChallenger: UIButton!
    @IBOutlet weak var newChallengeImage: UIImageView!
    @IBOutlet weak var newChallengName: UILabel!
    
//pictur array
    var heroImage = ["kinght", "wizard", "thief"]
    
    
    override func viewDidLoad() {
        //......delegate..........
        textFiled1.delegate = self
        textFiled2.delegate = self
        textFiled3.delegate = self
        textFiled4.delegate = self
        textFiled5.delegate = self
        //.......image............
        newChallengName.text = ("\(heroImage)")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let text = segue.destination as! ViewController
        text.labelHero1.text = textFiled1.text
        text.labelHero2.text = textFiled2.text
        text.labelHero3.text = textFiled3.text
        text.labelHero4.text = textFiled4.text
        text.labelHero5.text = textFiled5.text
    }
    //.........imagefunction..........
    @IBAction func newChallengerButton(_ sender: Any) {
            
        
    }
    
    
}
extension ViewControllerTwo: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
   
    
    
}



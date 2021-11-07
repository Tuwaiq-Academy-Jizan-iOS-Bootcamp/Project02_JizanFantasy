//
//  ViewController2.swift
//  AfafAlqahtani_Project02_JizanFantasy
//
//  Created by Afaf Yahya on 28/03/1443 AH.
//

import Foundation
import UIKit
class viewController2: UIViewController {
    
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var herroName: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var lfVc2: UITextField!
    @IBOutlet weak var dfVc2: UITextField!
    @IBOutlet weak var pdVc2: UITextField!
    @IBOutlet weak var wdVc2: UITextField!
    @IBOutlet weak var seVc2: UITextField!
    @IBOutlet weak var storryTheChallenger: UILabel!
    var herro = 0
    
    @IBAction func chooseButton(_ sender: Any) {
        herro += 1
        switch herro {
        case 1: imageHero.image = UIImage(named: "Knight")
            herroName.text = "Knight"
            pointLabel.text = "250"
            storryTheChallenger.text = "Kinght is a herro who faces the boss  "
        case 2: imageHero.image = UIImage(named: "Wizard")
            herroName.text = "wizard"
            pointLabel.text = "245"
            storryTheChallenger.text = "Wizard is a herro who faces the boss"
        case 3: imageHero.image = UIImage(named: "Thief")
            herroName.text = "Thief"
            pointLabel.text = "220"
            storryTheChallenger.text = "Thief is a herro who faces the boss"
        case 4:
            herro = 0
        default:
            print ("NON")
        }
        
    }
   
    
    
   override func viewDidLoad() {
    super.viewDidLoad()
       
}
    override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let rootViewController = segue.destination  as! ViewController
    rootViewController.lfR.text = lfVc2.text
    rootViewController.dfR.text = dfVc2.text
    rootViewController.pdR.text = pdVc2.text
    rootViewController.wdR.text = wdVc2.text
    rootViewController.seR.text = seVc2.text
    rootViewController.boss2.image=imageHero.image
    rootViewController.boss2Name.text = herroName.text
    }
}

    extension viewController2:UITextViewDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }

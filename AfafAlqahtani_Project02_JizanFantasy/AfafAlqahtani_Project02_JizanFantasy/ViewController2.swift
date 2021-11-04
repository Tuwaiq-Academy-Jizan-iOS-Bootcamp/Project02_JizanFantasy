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
    
    @IBOutlet weak var nameHerro: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var lfVc2: UITextField!
    @IBOutlet weak var dfVc2: UITextField!
    @IBOutlet weak var pdVc2: UITextField!
    @IBOutlet weak var wdVc2: UITextField!
    @IBOutlet weak var seVc2: UITextField!
    @IBOutlet weak var storryTheChallenger: UILabel!
    
   override func viewDidLoad() {
    super.viewDidLoad()
       
}
    override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let rootViewController = segue.destination  as! ViewController
    rootViewController.lfR.text = lfVc2.text
    rootViewController.dfR.text = dfVc2.text
    rootViewController.pdR.text = dfVc2.text
    rootViewController.wdR.text = wdVc2.text
    rootViewController.seR.text = seVc2.text
    }
}

    extension viewController2:UITextViewDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }

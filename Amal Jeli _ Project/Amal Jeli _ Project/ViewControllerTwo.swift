//
//  ViewControllerTwo.swift
//  Amal Jeli _ Project
//
//  Created by Amal Jeli on 28/03/1443 AH.
//

import Foundation
import UIKit

class ViewControllerTwo:UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var TextLabal: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TextLabal.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let backLabal = segue.destination as? ViewController {
        backLabal.DesplayYourName.text = TextLabal.text
    }

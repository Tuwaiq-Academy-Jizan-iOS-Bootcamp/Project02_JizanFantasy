//
//  TwoViewController.swift
//  Project02
//
//  Created by NoON .. on 28/03/1443 AH.
//

import UIKit

class TwoViewController: UIViewController {
    @IBOutlet weak var NameText: UITextField!
    @IBOutlet weak var pointName: UILabel!
    @IBOutlet weak var textLP: UITextField!
    @IBOutlet weak var textDF: UITextField!
    @IBOutlet weak var textPD: UITextField!
    @IBOutlet weak var textWD: UITextField!
    @IBOutlet weak var textSC: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let playr1 = segue.destination as! ViewController
           playr1.PlayerLP2.text = textLP.text
        let playr2 = segue.destination as! ViewController
        playr2.PlayerDF2.text = textDF.text
        let playr3 = segue.destination as! ViewController
        playr3.PlayerPD2.text = textPD.text
        let playr4 = segue.destination as! ViewController
        playr4.PlayerWD2.text = textWD.text
        let playr5 = segue.destination as! ViewController
        playr5.PlayerSC2.text = textSC.text
    }
    

}

extension TwoViewController: UITextFieldDelegate{
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         textField.resignFirstResponder()
         return true
     }
 }
 

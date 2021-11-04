//
//  ViewControllerTwo.swift
//  Project try
//
//  Created by layla hakami on 28/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo: UIViewController
{
    
    
    @IBOutlet weak var playerK: UIButton!
    @IBOutlet weak var imagePlayers: UIImageView!
    
    @IBOutlet weak var playerW: UIButton!
    
    @IBOutlet weak var playerTh: UIButton!
    
    
    @IBOutlet weak var textFalidLD: UITextField!
    
    
    @IBOutlet weak var textFalidDF: UITextField!
    
    @IBOutlet weak var textFalidPD: UITextField!
    
    
@IBOutlet weak var textFalidWD: UITextField!
   
    @IBOutlet weak var textFalidSE: UITextField!
    
    @IBOutlet weak var namelabel: UILabel!
    
    @IBAction func ActionKnight(_ sender: Any) {
        imagePlayers.image = UIImage(named:"Knight")
        namelabel.text = "Knight"
    }
    
    @IBAction func ActionWizard(_ sender: Any) {
        imagePlayers.image = UIImage(named:"wizard-1")
        namelabel.text = "wizard-1"
        
    }
    
    
    @IBAction func ActionThif(_ sender: Any) {
        
        
        imagePlayers.image = UIImage(named:"Thief")
        namelabel.text = "Thief"
    }
    
    
    
    
    override func viewDidLoad() {
        textFalidPD.delegate = self
        textFalidSE.delegate = self
        textFalidWD.delegate = self
        textFalidDF.delegate = self
        textFalidLD.delegate = self
        
    super.viewDidLoad()
}
    
    
    
    
    
    
    
    
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?)
{

let UP1 = segue.destination as! ViewController
    
UP1.Lp.text = textFalidLD.text
    
let UP2 = segue.destination as! ViewController
    
UP2.DF.text = textFalidDF.text
    
let UP3 = segue.destination as! ViewController
    
UP3.WD.text = textFalidWD.text
    
let UP4 = segue.destination as! ViewController
    
UP4.SC.text = textFalidSE.text
    
    
    
    let UP5 = segue.destination as! ViewController
        
    UP5.PD.text = textFalidPD.text
    
}
}

extension ViewControllerTwo:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {    textField.resignFirstResponder()
        return true
    
}

}


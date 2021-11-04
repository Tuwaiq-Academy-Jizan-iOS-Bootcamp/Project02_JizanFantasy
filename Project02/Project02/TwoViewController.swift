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
    @IBOutlet weak var imagePlayer: UIImageView!
    @IBAction func stepperDF(_ sender: UIStepper) {
        textDF.text = String(sender.value)
    }
    
    @IBAction func Name1(_ sender: Any) {
        NameText.text = String("knight")
        pointName.text = String(250)
        imagePlayer.image = UIImage(named: "knight")
    }
    
    @IBAction func name2(_ sender: Any) {
        NameText.text = String("wizard")
        pointName.text = String(245)
        imagePlayer.image = UIImage(named: "wizard")
    }
    
    @IBAction func name3(_ sender: Any) {
        NameText.text = String("thief")
        pointName.text = String(210)
        imagePlayer.image = UIImage(named: "thief")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let name = segue.destination as! ViewController
        name.player2.text = NameText.text
        let playr01 = segue.destination as! ViewController
           playr01.PlayerLP2.text = textLP.text
        let playr02 = segue.destination as! ViewController
        playr02.PlayerDF2.text = textDF.text
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

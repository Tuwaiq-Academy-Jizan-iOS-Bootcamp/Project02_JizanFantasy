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
    @IBOutlet weak var pointName2: UILabel!
    @IBOutlet weak var pointName3: UILabel!
    @IBOutlet weak var textLP: UITextField!
    @IBOutlet weak var textDF: UITextField!
    @IBOutlet weak var textPD: UITextField!
    @IBOutlet weak var textWD: UITextField!
    @IBOutlet weak var textSC: UITextField!
    @IBOutlet weak var imagePlayer: UIImageView!
    // ربط pick
    @IBOutlet weak var pickName: UIPickerView!
    var arrayName = ["knight","wizard","thief"]
    //
    @IBAction func stepperDF(_ sender: UIStepper) {
        textDF.text = String(sender.value)
    }
    @IBAction func stepperPDK(_ sender: UIStepper) {
        textPD.text = String(sender.value)
    }
    @IBAction func stepperWDK(_ sender: UIStepper) {
        textWD.text = String(sender.value)
    }
    @IBAction func stepperDFW(_ sender: UIStepper) {
        textDF.text = String(sender.value)
    }
    @IBAction func stepperPDW(_ sender: UIStepper) {
        textPD.text = String(sender.value)
    }
    @IBAction func stepperWDW(_ sender: UIStepper) {
        textWD.text = String(sender.value)
    }
    @IBAction func stepperDFT(_ sender: UIStepper) {
        textDF.text = String(sender.value)
    }
    @IBAction func stepperPDT(_ sender: UIStepper) {
        textPD.text = String(sender.value)
    }
    @IBAction func stepperWDT(_ sender: UIStepper) {
        textWD.text = String(sender.value)
    }
    @IBAction func steepperSCK(_ sender: UIStepper) {
        textSC.text = String(sender.value)
    }
    @IBAction func steepperSCW(_ sender: UIStepper) {
        textSC.text = String(sender.value)
    }
    @IBAction func steepperSCT(_ sender: UIStepper) {
        textSC.text = String(sender.value)
    }
//    @IBAction func Name1(_ sender: Any) {
//        NameText.text = String("knight")
//        pointName.text = String(250)
//        imagePlayer.image = UIImage(named: "knight")
//    }
//    @IBAction func name2(_ sender: Any) {
//       NameText.text = String("wizard")
//        pointName2.text = String(245)
//        imagePlayer.image = UIImage(named: "wizard")
//    }
//    @IBAction func name3(_ sender: Any) {
//        NameText.text = String("thief")
//     pointName3.text = String(210)
//        imagePlayer.image = UIImage(named: "thief")
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        pickName.delegate = self
        pickName.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let image = segue.destination as! ViewController
        image.imagePlayer2.image = imagePlayer.image
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
extension TwoViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayName.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayName[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            NameText.text = String("knight")
            pointName.text = String(250)
            imagePlayer.image = UIImage(named: "knight")
        }else if row == 1 {
            NameText.text = String("wizard")
             pointName2.text = String(245)
             imagePlayer.image = UIImage(named: "wizard")
        }else{
            NameText.text = String("thief")
         pointName3.text = String(210)
            imagePlayer.image = UIImage(named: "thief")
        }
    }
}

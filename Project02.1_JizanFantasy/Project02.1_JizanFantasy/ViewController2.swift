//
//  ViewController2.swift
//  Project02.1_JizanFantasy
//
//  Created by حمد الحريصي on 03/11/2021.
//

import UIKit

class ViewController2: UIViewController
{
var index: Int = 0
var myImages = ["Wizard","Thief","Knight"]
    
    @IBOutlet var PickerView: UIPickerView!
    @IBOutlet var lpLabel: UILabel!
//    @IBOutlet var dfTextField: UITextField!
//    @IBOutlet var pdTextField: UITextField!
//    @IBOutlet var wdTextField: UITextField!
//    @IBOutlet var scTextField: UITextField!
    @IBOutlet var pdLabel: UILabel!
    @IBOutlet var wdLabel: UILabel!
    @IBOutlet var dfLabel: UILabel!
    @IBOutlet var scLabel: UILabel!
    
    
   // @IBOutlet var viewImage: UIImageView!
    @IBOutlet var heroNameLabel: UILabel!
    
    

 override func viewDidLoad()
 {
        super.viewDidLoad()
     PickerView.delegate = self
     PickerView.dataSource = self
     
     
     
   //  switchLP()
 }
    
    // button that link with VC1
    @IBAction func gatewayToBattle(_ sender: Any)
    {
        


    }
override func prepare(for segue: UIStoryboardSegue, sender: Any?)
{
// let gatewayToBattle = segue.destination as! ViewController
 //       gatewayToBattle.heroImageinVC1.image = viewImage.image
let gatewayToBattle19 = segue.destination as! ViewController
gatewayToBattle19.playerNameLabel.text = heroNameLabel.text

 let gatewayToBattle1 = segue.destination as! ViewController
        gatewayToBattle1.lpHeroLabel.text = lpLabel.text
        
 let gatewayToBattle2 = segue.destination as! ViewController
        gatewayToBattle2.dfHeroLabel.text = dfLabel.text
        
 let gatewayToBattle3 = segue.destination as! ViewController
        gatewayToBattle3.pdHeroLabel.text = pdLabel.text
        
 let gatewayToBattle4 = segue.destination as! ViewController
        gatewayToBattle4.wdHeroLabel.text = wdLabel.text
        
    let gatewayToBattle5 = segue.destination as! ViewController
    gatewayToBattle5.scHeroLabel.text = scLabel.text
}
// back button
  //  @IBAction func backHero(_ sender: Any)
  //  {
//        swit()
//
//        if index > 0
//        {
//        index -= 1
//        }
//        else
//        {
//        index = myImages.count - 1
//        }
//        viewImage.image = UIImage(named: myImages[index] )
//        heroNameLabel.text = myImages[index]
//
//         lpLabel.text = heroNameLabel.text
//
//        switchLP()
//
//    }
//    // next button
//    @IBAction func nextHero(_ sender: Any)
//    {
//        if index < myImages.count - 1
//        {
//        index += 1
//        }
//        else
//        {
//        index = myImages.count - 1
//        }
//        viewImage.image = UIImage(named: myImages[index] )
//        heroNameLabel.text = myImages[index]
//        switchLP()
//    }
    // func for switch Energies between Wizard and Thief and Knight
//    func switchLP()
//    {
//    if myImages[0] == heroNameLabel.text
//      {
//        wdLabel.text = "20"
//        scLabel.text = "50"
//        dfLabel.text = "15"
//        pdLabel.text = "70"
//        lpLabel.text = "90"
//    }else if myImages[1] == heroNameLabel.text
//    {
//        wdLabel.text = "30"
//        scLabel.text = "70"
//        dfLabel.text = "25"
//        pdLabel.text = "15"
//        lpLabel.text = "65"
//    }
//      else if myImages[2] == heroNameLabel.text
//      {
//      wdLabel.text = "40"
//      scLabel.text = "100"
//      dfLabel.text = "20"
//      pdLabel.text = "30"
//      lpLabel.text = "60"
//      }
//    }

}
extension ViewController2: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
//        dfTextField.resignFirstResponder()
//        pdTextField.resignFirstResponder()
//        wdTextField.resignFirstResponder()
//        scTextField.resignFirstResponder()
        return true
    }
}
extension ViewController2: UIPickerViewDelegate , UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
    return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return myImages.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
            return myImages[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
     //  let selectedGender = myImages.selectedRow(inComponent: 0)
            
            
        heroNameLabel.text = myImages[row]
        
    }
        
}

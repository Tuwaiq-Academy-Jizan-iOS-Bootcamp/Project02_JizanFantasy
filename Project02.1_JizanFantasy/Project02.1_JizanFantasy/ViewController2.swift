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
   
    @IBOutlet var lpTextField: UITextField!
    @IBOutlet var dfTextField: UITextField!
    @IBOutlet var pdTextField: UITextField!
    @IBOutlet var wdTextField: UITextField!
    @IBOutlet var scTextField: UITextField!
    
    
    @IBOutlet var viewImage: UIImageView!
    @IBOutlet var heroNameLabel: UILabel!
    
    

 override func viewDidLoad()
 {
        super.viewDidLoad()
        viewImage.image = UIImage(named: myImages[0] )
        heroNameLabel.text = myImages[0]
 }
    

    @IBAction func gatewayToBattle(_ sender: Any)
    {
//        func send()
//        {
//
//            if lpTextField.text >= 40
//        {
//
//        }
//            
//        }
    }
override func prepare(for segue: UIStoryboardSegue, sender: Any?)
{
 let gatewayToBattle = segue.destination as! ViewController
        gatewayToBattle.heroImageinVC1.image = viewImage.image
        
 let gatewayToBattle1 = segue.destination as! ViewController
        gatewayToBattle1.lpHeroLabel.text = lpTextField.text
        
 let gatewayToBattle2 = segue.destination as! ViewController
        gatewayToBattle2.dfHeroLabel.text = dfTextField.text
        
 let gatewayToBattle3 = segue.destination as! ViewController
        gatewayToBattle3.pdHeroLabel.text = pdTextField.text
        
 let gatewayToBattle4 = segue.destination as! ViewController
        gatewayToBattle4.wdHeroLabel.text = wdTextField.text
        
    let gatewayToBattle5 = segue.destination as! ViewController
    gatewayToBattle5.scHeroLabel.text = scTextField.text
}
    
    @IBAction func backHero(_ sender: Any)
    {
        if index > 0
        {
        index -= 1
        }
        else
        {
        index = myImages.count - 1
        }
        viewImage.image = UIImage(named: myImages[index] )
        heroNameLabel.text = myImages[index]
    }
    
    @IBAction func nextHero(_ sender: Any)
    {
        if index < myImages.count - 1
        {
        index += 1
        }
        else
        {
        index = myImages.count - 1
        }
        viewImage.image = UIImage(named: myImages[index] )
        heroNameLabel.text = myImages[index]
    }
    
}
extension ViewController2: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
      //  textFieldfromLP.resignFirstResponder()
        return true
    }
}

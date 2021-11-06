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
    
    @IBOutlet var lpLabel: UILabel!
    @IBOutlet var dfTextField: UITextField!
    @IBOutlet var pdTextField: UITextField!
    @IBOutlet var wdTextField: UITextField!
    @IBOutlet var scTextField: UITextField!
    
//    var dfTextField = ""
//    var pdTextField = ""
//    var wdTextField = ""
//    var scTextField = ""
    
    @IBOutlet var viewImage: UIImageView!
    @IBOutlet var heroNameLabel: UILabel!
    
    

 override func viewDidLoad()
 {
        super.viewDidLoad()
//     let lpOfHero = ["250","170","250"]
//
//
//     switch lpOfHero[index]
//     {
//     case :
//
//    lpLabel.text = "\(lpOfHero[1])"
//     case :
//    lpLabel.text = "\(lpOfHero[2])"
//
//     default:
//         print("eroor")
     
   //  lpLabel.text = "\(lpOfHero)"
     
          
//     if "\(String(describing: viewImage))" == myImages[0]
//     {
//         lpLabel.text = lpOfHero[0]
//     }
//     else if "\(String(describing: viewImage))" == myImages[1]
//     {
//         lpLabel.text = lpOfHero[1]
//     }
//     else if "\(String(describing: viewImage))" == myImages[2]
//     {
//         lpLabel.text = lpOfHero[2]
//     }
//
     
     
        viewImage.image = UIImage(named: myImages[0] )
        heroNameLabel.text = myImages[0]
     
     func swit()
     {
     let waz = 250
     if heroNameLabel.text == myImages[0]
     {
     lpLabel.text = "\(waz)"
     }
     else if  heroNameLabel.text == myImages[1]
     {
     lpLabel.text = "\(waz)"
     }
 }
     
     func textfeild()
     {
         if myImages[index] == myImages[0]
         {
         dfTextField.text = "250"
         }
     }
 }
    
//    func swit()
//    {
//    var myImages = ["Wizard","Thief","Knight"]
//
//    if heroNameLabel.text == UIImage(named: myImages2[0])
//    {
//    lpLabel.text = "\(250)"
//    }
//    else if  heroNameLabel == UIImage(named: myImages2[1])    {
//    lpLabel.text = "\(250)"
//    }
//    else if heroNameLabel == UIImage(named: myImages2[2])
//    {
//    lpLabel.text = "\(250)"
//    }
//    }
    
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
        gatewayToBattle1.lpHeroLabel.text = lpLabel.text
        
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
//        swit()
        
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
        
            
        
        
        //lpLabel.text = myImages[0]
    
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
    
//    func heroSwitch()
//    {
//        if nextHero(Any) == myImages[0]
//        {
//
//       }
//    }

}
extension ViewController2: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
      //  textFieldfromLP.resignFirstResponder()
        return true
    }
}


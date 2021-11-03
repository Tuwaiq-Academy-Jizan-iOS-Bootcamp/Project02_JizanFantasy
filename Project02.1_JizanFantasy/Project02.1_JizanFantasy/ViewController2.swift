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
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let gatewayToBattle = segue.destination as! ViewController
        
        gatewayToBattle.heroImageinVC1.image = viewImage.image
        
//
//         saveName.myLabel.text = textFieldfromLP.text
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

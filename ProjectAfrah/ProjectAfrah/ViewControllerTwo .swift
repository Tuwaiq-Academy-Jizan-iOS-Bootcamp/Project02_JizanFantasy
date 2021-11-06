//
//  ViewControllerTwo .swift
//  ProjectAfrah
//
//  Created by Afrah Omar on 27/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo: UIViewController {
   
    var theHero = 0
    @IBOutlet weak var textFiledLP: UITextField!
    @IBOutlet weak var imageHero: UIImageView!
   
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var textFiledDF: UITextField!
    @IBOutlet weak var textFiledPD: UITextField!
    @IBOutlet weak var textFiledWD: UITextField!
    @IBOutlet weak var textFiledEffectPD: UITextField!
    @IBOutlet weak var labelStory: UILabel!
    @IBOutlet weak var point: UILabel!
    override func viewDidLoad() {
        
        textFiledLP.delegate = self
        textFiledDF.delegate = self
        textFiledPD.delegate = self
        textFiledWD.delegate = self
        textFiledEffectPD.delegate = self
        nameText.delegate = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let backVC = segue.destination as! ViewController
        backVC.labelHeroLP.text = textFiledLP.text
        backVC.labelHeroDF.text = textFiledDF.text
        backVC.labelHeroPD.text = textFiledPD.text
        backVC.labelHeroWD.text = textFiledWD.text
        backVC.labelHeroSC.text = textFiledEffectPD.text
        backVC.nameHero.text = nameText.text
        backVC.imageHero.image = imageHero.image
        backVC.number = num
    
}
    var num = 0
//   هذي تاقات اسندتها لكل بطل مع الخصائص حقهم
    @IBAction func players(_ sender: UIButton) {
        if sender.tag == 1 {
            nameText.text = "Knight"
            point.text = "250"
            textFiledLP.text = "60"
            textFiledDF.text = "20"
            textFiledPD.text = "30"
            textFiledWD.text = "40"
            textFiledEffectPD.text = "100"
            textFiledEffectPD.isEnabled = false
            num = 1
            imageHero.image = UIImage(named: "knight")
            labelStory.text = "Hello, I Knight. I will try not to disappoint you 🦹🏻‍♂️⚔️"
        } else if sender.tag == 2 {
            nameText.text = "Wizard"
                point.text = "245"
                textFiledLP.text = "90"
                textFiledDF.text = "15"
                textFiledPD.text = "70"
                textFiledWD.text = "20"
                textFiledEffectPD.text = "50"
                textFiledEffectPD.isEnabled = false
                num = 2
                imageHero.image = UIImage(named: "wizard")
                labelStory.text = "Hello, I Wizard. I will fight with all my might 🦸🏻💪🏻"
            }else{
                if sender.tag == 3 {
                    nameText.text = "Thief"
                    point.text = "210"
                    textFiledLP.text = "65"
                    textFiledDF.text = "25"
                    textFiledPD.text = "15"
                    textFiledWD.text = "30"
                    textFiledEffectPD.text = "75"
                    textFiledEffectPD.isEnabled = false
                    num = 3
                    imageHero.image = UIImage(named: "thief")
                    labelStory.text = "Hello, I a win Thief 🥷🏻💰 "
            }
    
        
//        theHero += 1
//        switch theHero {
//    case 1 : imageHero.image = UIImage(named: "knight")
//            point.text = "250"
//            nameText.text = "knight"
//        case 2 : imageHero.image = UIImage(named: "wizard")
//                point.text = "245"
//            nameText.text = "wizard"
//        case 3 : imageHero.image = UIImage(named: "thief")
//                point.text = "210"
//            nameText.text = "thief"
//
//        case 4 :
//            theHero = 0
//
//        default:
//            print ("Error")
        }
    }
}
extension ViewControllerTwo:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

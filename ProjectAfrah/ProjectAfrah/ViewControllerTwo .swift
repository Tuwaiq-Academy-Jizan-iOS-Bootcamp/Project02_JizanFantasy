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
    
}
    
    @IBAction func buttonhero(_ sender: Any) {
        theHero += 1
        switch theHero {
    case 1 : imageHero.image = UIImage(named: "knight")
            point.text = "250"
            nameText.text = "knight"
        case 2 : imageHero.image = UIImage(named: "wizard")
                point.text = "245"
            nameText.text = "wizard"
        case 3 : imageHero.image = UIImage(named: "thief")
                point.text = "210"
            nameText.text = "thief"

        case 4 :
            theHero = 0
       
        default:
            print ("Error")
        }
    }
    
}

extension ViewControllerTwo:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//
//  ViewControllerTwo.swift
//  ArwaAlattas_Project02_JizanFantasy
//
//  Created by Arwa Alattas on 27/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerTwo:UIViewController{
    
    
    @IBOutlet weak var pointOfHero: UILabel!
    @IBOutlet weak var nameOfHero: UILabel!
    @IBOutlet weak var lifePoint: UITextField!
    @IBOutlet weak var defanseOfHero: UITextField!
    @IBOutlet weak var powerDamageOfHero: UITextField!
    @IBOutlet weak var weaponDamageOfHero: UITextField!
    @IBOutlet weak var SpecialCapacityOfHero: UITextField!
    
    @IBOutlet weak var storyOfHero: UILabel!
    
    @IBOutlet weak var imageOfHero: UIImageView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VC2 = segue.destination as! ViewController
       VC2.nameOfHero.text = nameOfHero.text
VC2.imageHero.image = imageOfHero.image
        VC2.LifePointOfHero.text = lifePoint.text
        VC2.defanseOfHero.text = defanseOfHero.text
VC2.powerDamageOfHero.text = powerDamageOfHero.text
VC2.weaponOfHero.text = weaponDamageOfHero.text
VC2.specialCapacityOfHero.text = SpecialCapacityOfHero.text
    }
    
    
    
    
    @IBAction func knightAction(_ sender: Any) {
        pointOfHero.text = String(250)
        imageOfHero.image = UIImage(named:"KnightImage")
        storyOfHero.text = "The Knight have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
        nameOfHero.text = "Knight"
    }
    
    
    @IBAction func wizardAction(_ sender: Any) {
        pointOfHero.text = String(245)
        imageOfHero.image = UIImage(named:"WizardImage")
        storyOfHero.text = "The Wizard have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
        nameOfHero.text = "Wizard"
        
        
    }
    
    
    @IBAction func thiefAction(_ sender: Any) {
        
        pointOfHero.text = String(210)
        imageOfHero.image = UIImage(named:"ThiefImage")
        storyOfHero.text = "The Thief have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
        
        nameOfHero.text = "Thief"
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lifePoint.delegate = self
        defanseOfHero.delegate = self
        powerDamageOfHero.delegate = self
        weaponDamageOfHero.delegate = self
        SpecialCapacityOfHero.delegate = self
        
        
    }
}


extension ViewControllerTwo:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

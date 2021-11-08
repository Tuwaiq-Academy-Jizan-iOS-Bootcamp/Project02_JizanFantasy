//
//  ViewControllerThree.swift
//  ArwaAlattas_Project02_JizanFantasy
//
//  Created by Arwa Alattas on 30/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerThree:UIViewController{
    @IBOutlet weak var pointOfHero: UILabel!
    @IBOutlet weak var lifePointLable: UILabel!
    @IBOutlet weak var defaseLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var weaponLabel: UILabel!
    @IBOutlet weak var specialLabel: UILabel!
    @IBOutlet weak var nameOfHero: UILabel!
    @IBOutlet weak var imageOfHero: UIImageView!
    
    @IBOutlet weak var storyOfHero: UILabel!
    override func viewDidLoad() {
        nameOfHero.text = "Wizard"
        imageOfHero.image = UIImage(named:"WizardImage")
        storyOfHero.text = "The Wizard have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
        pointOfHero.text = "245"
    }
    
    
    
    @IBAction func slaiderLP(_ sender: UISlider) {
        lifePointLable.text = String(Int(sender.value))
    }
 
    @IBAction func slaiderDF(_ sender: UISlider) {
        defaseLabel.text = String(Int(sender.value))
    }
    

    @IBAction func slaiderPD(_ sender: UISlider) {
        powerLabel.text = String(Int(sender.value))
    }
    

    @IBAction func slaiderWD(_ sender: UISlider) {
        weaponLabel.text = String(Int(sender.value))
    }
    

    @IBAction func slaiderSC(_ sender: UISlider) {
        specialLabel.text = String(Int(sender.value))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VC2 = segue.destination as! ViewController
       VC2.nameOfHero.text = nameOfHero.text
VC2.imageHero.image = imageOfHero.image
        VC2.LifePointOfHero.text = lifePointLable.text
        VC2.defanseOfHero.text = defaseLabel.text
        VC2.powerDamageOfHero.text = powerLabel.text
        VC2.weaponOfHero.text = weaponLabel.text
        VC2.specialCapacityOfHero.text = specialLabel.text
    
}
    
    
    @IBAction func creatHero(_ sender: Any) {
        let lp = Int(lifePointLable.text!)
        let df = Int(defaseLabel.text!)
        let pd = Int(powerLabel.text!)
        let wd = Int(weaponLabel.text!)
        let sc = Int(specialLabel.text!)
        let sum = lp! + df! + pd! + wd! + sc!
        let alert2 = UIAlertController(title: "WARNING", message: "THE POINT OF THE HERO IS greater than specified point ", preferredStyle: UIAlertController.Style.alert)
    let alert = UIAlertController(title: "WARNING", message: "THE POINT OF THE HERO IS EMPTY", preferredStyle: UIAlertController.Style.alert)
     if lifePointLable.text!.isEmpty || defaseLabel.text!.isEmpty || powerLabel.text!.isEmpty || weaponLabel.text!.isEmpty || specialLabel.text!.isEmpty {
         self.present(alert, animated: true, completion: nil)

       }
        
        if lifePointLable.text == "0" || defaseLabel.text == "0" || powerLabel.text == "0" ||  weaponLabel.text == "0" || specialLabel.text == "0" {
            self.present(alert, animated: true, completion: nil)

          }
        if sum != Int( pointOfHero.text!)! {
    
            self.present(alert2, animated: true, completion: nil)
        }
    }
    
    
}

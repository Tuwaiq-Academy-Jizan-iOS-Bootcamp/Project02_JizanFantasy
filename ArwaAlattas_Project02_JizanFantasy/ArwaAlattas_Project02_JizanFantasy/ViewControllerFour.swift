//
//  ViewControllerFour.swift
//  ArwaAlattas_Project02_JizanFantasy
//
//  Created by Arwa Alattas on 30/03/1443 AH.
//

import Foundation
import UIKit
class ViewControllerFour:UIViewController{
    
    
    
    
    @IBOutlet weak var lifePointLable: UILabel!
    @IBOutlet weak var defaseLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var weaponLabel: UILabel!
    @IBOutlet weak var specialLabel: UILabel!
    @IBOutlet weak var nameOfHero: UILabel!
    @IBOutlet weak var imageOfHero: UIImageView!
    
    @IBOutlet weak var storyOfHero: UILabel!
    override func viewDidLoad() {
        imageOfHero.image = UIImage(named:"ThiefImage")
        storyOfHero.text = "The Thief have 250 point and he has big power and powerful weapon and strong defanse you won't regret choosing it "
    }
    
    
    
    @IBAction func stepperLP(_ sender: UIStepper) {
        lifePointLable.text = Int(sender.value).description
    }
    
    @IBAction func stepperDF(_ sender: UIStepper) {
        defaseLabel.text = Int(sender.value).description
    }
    
    @IBAction func stepperPD(_ sender: UIStepper) {
        powerLabel.text = Int(sender.value).description
    }
    
    @IBAction func stepperWD(_ sender: UIStepper) {
        weaponLabel.text = Int(sender.value).description
    }
    
    @IBAction func stepperSC(_ sender: UIStepper) {
        specialLabel.text = Int(sender.value).description
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
}
    
    
    


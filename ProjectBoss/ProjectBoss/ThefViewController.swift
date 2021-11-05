//
//  ThefViewController.swift
//  ProjectBoss
//
//  Created by يوسف جابر المالكي on 28/03/1443 AH.
//

import UIKit

class ThefViewController: UIViewController {

    
//    .....................skil label
//    var skillPointPlayer = 0
//stepper
    @IBOutlet weak var skillPoint: UILabel!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var defensLabel: UILabel!
    @IBOutlet weak var powerDamgeLable: UILabel!
    @IBOutlet weak var weaponDamageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    STEPPER FUNCTION.......

    @IBAction func stepperLifePoint(_ sender: UIStepper) {
//        let stepperInt = Int(sender.value)
                labelStepper.text = String(Int(sender.value))
        skillPoint.text = labelStepper.text
        
    }
        @IBAction func stepperDefans(_ sender: UIStepper) {
            defensLabel.text = String(Int(sender.value))
            skillPoint.text = defensLabel.text
    }
    @IBAction func stepperPowerDamge(_ sender: UIStepper) {
        
        powerDamgeLable.text = String(Int(sender.value))
        skillPoint.text = powerDamgeLable.text
    }
    
    @IBAction func stepperWeponDamge(_ sender: UIStepper) {
        weaponDamageLabel.text = String(Int(sender.value))
        skillPoint.text = weaponDamageLabel.text
    }
}

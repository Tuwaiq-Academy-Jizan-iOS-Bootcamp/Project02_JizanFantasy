//
//  ViewControllerNewPlayerThree.swift
//  newGame
//
//  Created by Abdulrhman Abuhyyh on 01/04/1443 AH.
//

import UIKit
class ViewControllerNewPlayerThree: UIViewController {
    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var LPValue: UIStepper!
    @IBOutlet weak var LPLable: UILabel!
    @IBOutlet weak var DFValue: UIStepper!
    @IBOutlet weak var DFLable: UILabel!
    @IBOutlet weak var PDValue: UIStepper!
    @IBOutlet weak var PDLable: UILabel!
    @IBOutlet weak var WDValue: UIStepper!
    @IBOutlet weak var WDLable: UILabel!
    @IBOutlet weak var nameOfPlayer: UILabel!
    @IBOutlet weak var thiefImage: UIImageView!
    var sCDamage = 100
    var sCHeal = 5
    var sCWD = 10
    var sCPD = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func LPAction(_ sender: UIStepper) {
        LPLable.text = String(Int(sender.value))
    }
    @IBAction func DFAction(_ sender: UIStepper) {
        DFLable.text = String(Int(sender.value))
    }
    @IBAction func PDActoin(_ sender: UIStepper) {
        PDLable.text = String(Int(sender.value))
    }
    @IBAction func WDAction(_ sender: UIStepper) {
        WDLable.text = String(Int(sender.value))
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendData = segue.destination as! ViewControllerMatch
        sendData.imageHero.image = thiefImage.image
        sendData.textName1.text = playerName.text
        sendData.lifepoint1.text = LPLable.text
        sendData.defense1.text = DFLable.text
        sendData.powerdamge1.text = PDLable.text
        sendData.weaponDamge1.text = WDLable.text
    }
    @IBAction func PlayThree(segue: UIStoryboardSegue){
    }
}

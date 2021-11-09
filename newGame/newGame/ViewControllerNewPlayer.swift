//
//  ViewControllerNewPlayer.swift
//  newGame
//
//  Created by Abdulrhman Abuhyyh on 29/03/1443 AH.
//

import UIKit
class ViewControllerNewPlayer: UIViewController {
//    var playerImage = 1
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
    
    @IBOutlet weak var knightImage: UIImageView!
    
    var SCDamage = 100
    var SCHeal = 5
    var SCWD = 10
    var SCPD = 0
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
        sendData.textName1.text = nameOfPlayer.text
        sendData.lifepoint1.text = LPLable.text
        sendData.defense1.text = DFLable.text
        sendData.powerdamge1.text = PDLable.text
        sendData.weaponDamge1.text = WDLable.text
        sendData.imageHero.image = knightImage.image
    }
    @IBAction func PlayOne(segue: UIStoryboardSegue){
    }
}

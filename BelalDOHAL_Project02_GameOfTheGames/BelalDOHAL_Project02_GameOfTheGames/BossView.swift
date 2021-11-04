//
//  BossView.swift
//  BelalDOHAL_Project02_GameOfTheGames
//
//  Created by Belal Dohal on 28/03/1443 AH.
//

import UIKit
class BossView: UIViewController {
    //Outlet Go Button//
    @IBOutlet weak var challengMeMortal: UIButton!
    //Images//
    var uiBossImage = Int.random(in: 1...2)
    //Player Info//
    var playerNL = ""
    var playerImage = 0
    var specialCValue = ""
    var weaponDValue = 0
    var powerDValue = 0
    var defenseValue = 0
    var lifePValue = 0
    //Override//
    override func viewDidLoad() {
        super.viewDidLoad()
        challengMeMortal.layer.cornerRadius = 20
    }
    //Send Function//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendInfo = segue.destination as? FightView
        sendInfo?.playerImage = playerImage
        sendInfo?.specialCValue = specialCValue
        sendInfo?.weaponDValue = weaponDValue
        sendInfo?.powerDValue = powerDValue
        sendInfo?.defenseValue = defenseValue
        sendInfo?.lifePValue = lifePValue
        sendInfo?.playerNL = playerNL
    }
}

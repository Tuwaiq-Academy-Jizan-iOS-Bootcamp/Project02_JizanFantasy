//
//  ViewController.swift
//  ProjectBoss
//
//  Created by يوسف جابر المالكي on 28/03/1443 AH.
//

import UIKit
struct Players {
    var Name:String
    var lifePoints:Int
    var defense:Int
    var powerDamage:Int
    var weaponDamage:Int
    var specialCapacity:Int
    var specialCBonusPD:Int
    var specialCBonusWD:Int
    var specialCBonusLP:Int
}
class ViewController : UIViewController {
    @IBOutlet weak var fightDes: UITextView!
    @IBOutlet weak var diceLable: UILabel!
    @IBOutlet weak var rollDiceButton: UIButton!
    //Player Info... ((((SEGUE))))............
    @IBOutlet weak var playerUImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerLifePoint: UILabel!
    @IBOutlet weak var playerDefenc: UILabel!
    @IBOutlet weak var playerPoewrDamage: UILabel!
    @IBOutlet weak var playerWeaponDamage: UILabel!
    @IBOutlet weak var playerSpicalCabasity: UILabel!
    var pLPoints = 0
    var pDefense = 0
    var pPDamage = 0
    var pWDamage = 0
    var pSCDamage = 0
    var pSCBonusLP = 0
    var pSCBonusPD = 0
    var pSCBonusWD = 0
    //Boss Info.........................
    let randomBoss = Int.random(in: 1...2)
    var boss1 = Players(Name: "First Boss Name", lifePoints: 250, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110, specialCBonusPD: 0, specialCBonusWD: 22, specialCBonusLP: 5)
    var boss2 = Players(Name: "Second Boss Name", lifePoints: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75, specialCBonusPD: 32, specialCBonusWD: 0, specialCBonusLP: 5)
    var bossFName = ""
    var bossFLP = 0
    var bossFDF = 0
    var bossFPD = 0
    var bossFWD = 0
    var bossFSC = 0
    var bossFSCPB = 0
    var bossFSCWB = 0
    var bossFSCLPB = 0
    @IBOutlet weak var bossImage: UIImageView!
    @IBOutlet weak var bossName: UILabel!
    @IBOutlet weak var bossLifePoint: UILabel!
    @IBOutlet weak var bossDefenc: UILabel!
    @IBOutlet weak var bossPowerDamage: UILabel!
    @IBOutlet weak var bossWeaponDamge: UILabel!
    @IBOutlet weak var bossSpichalCabasity: UILabel!
    //To Show First...........
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDiceButton.isEnabled = false
        if randomBoss == 1 {
            bossImage.image = UIImage(named: "pass2")
            bossName.text = boss1.Name
            bossLifePoint.text = "\(boss1.lifePoints)"
            bossDefenc.text = "\(boss1.defense)"
            bossPowerDamage.text = "\(boss1.powerDamage)"
            bossWeaponDamge.text = "\(boss1.weaponDamage)"
            bossSpichalCabasity.text = "\(boss1.specialCapacity)Damage / +\(boss1.specialCBonusWD)WD / +\(boss1.specialCBonusPD)PD / +\(boss1.specialCBonusLP)LP"
            bossFName = boss1.Name
            bossFLP = boss1.lifePoints
            bossFDF = boss1.defense
            bossFPD = boss1.powerDamage
            bossFWD = boss1.weaponDamage
            bossFSC = boss1.specialCapacity
            bossFSCPB = boss1.specialCBonusPD
            bossFSCWB = boss1.specialCBonusWD
            bossFSCLPB = boss1.specialCBonusLP
        }else {
            bossImage.image = UIImage(named: "knight")
            bossName.text = boss2.Name
            bossLifePoint.text = "\(boss2.lifePoints)"
            bossDefenc.text = "\(boss2.defense)"
            bossPowerDamage.text = "\(boss2.powerDamage)"
            bossWeaponDamge.text = "\(boss2.weaponDamage)"
            bossSpichalCabasity.text = "\(boss2.specialCapacity)Damage / +\(boss2.specialCBonusWD)WD / +\(boss2.specialCBonusPD)PD / +\(boss2.specialCBonusLP)LP"
            bossFName = boss2.Name
            bossFLP = boss2.lifePoints
            bossFDF = boss2.defense
            bossFPD = boss2.powerDamage
            bossFWD = boss2.weaponDamage
            bossFSC = boss2.specialCapacity
            bossFSCPB = boss2.specialCBonusPD
            bossFSCWB = boss2.specialCBonusWD
            bossFSCLPB = boss2.specialCBonusLP
        }
    }
    var turn = true
    @IBAction func rollTheDise2(_ sender: Any) {
        let rollDice = Int.random(in: 1...20)
        diceLable.text = "Dice Roll is : \(rollDice)"
        if rollDice >= 1 && rollDice <= 9 && turn == true {
            turn = false
            var damageOnBoss = pPDamage - bossFDF
            if damageOnBoss < 0 {
                bossFLP -= 0
            }else {
                bossFLP -= damageOnBoss
                deadLine()
                bossLifePoint.text = "\(bossFLP)"
            }
            if damageOnBoss < 0 {
                damageOnBoss = 0
            }
            fightDes.text += "  \(playerName.text!) use his power to damage \(bossName.text!) by \(damageOnBoss)"
            print("Player")
        }else if rollDice >= 10 && rollDice <= 19 && turn == true {
            turn = false
            var damageOnBoss = pWDamage - bossFDF
            if damageOnBoss < 0 {
                bossFLP -= 0
            }else {
                bossFLP -= damageOnBoss
                deadLine()
                bossLifePoint.text = "\(bossFLP)"
            }
            if damageOnBoss < 0 {
                damageOnBoss = 0
            }
            fightDes.text += "  \(playerName.text!) use his weapon to damage \(bossName.text!) by \(damageOnBoss)"
            print("Player")
        }else if rollDice == 20 && turn == true {
            turn = false
            var damageOnBoss = pSCDamage - bossFDF
            if damageOnBoss < 0 {
                bossFLP -= 0
            }else {
                bossFLP -= damageOnBoss
                deadLine()
                bossLifePoint.text = "\(bossFLP)"
            }
            if damageOnBoss < 0 {
                damageOnBoss = 0
            }
            pLPoints += pSCBonusLP
            pPDamage += pSCBonusPD
            pWDamage += pSCBonusWD
            playerLifePoint.text = "\(pLPoints)"
            playerPoewrDamage.text = "\(pPDamage)"
            playerWeaponDamage.text = "\(pWDamage)"
            fightDes.text += "  \(playerName.text!) use his Special Capacity to damage \(bossName.text!) by \(damageOnBoss) and recover \(pSCBonusLP)LP and increase his weapon Damage by \(pSCBonusWD)WD also his power damage by \(pSCBonusPD)PD"
            print("Player")
        }else if rollDice >= 1 && rollDice <= 9 && turn == false {
            turn = true
            var damageOnPlayer = bossFPD - pDefense
            if damageOnPlayer < 0 {
                pLPoints -= 0
            }else {
                pLPoints -= damageOnPlayer
                deadLine()
                playerLifePoint.text = "\(pLPoints)"
            }
            if damageOnPlayer < 0 {
                damageOnPlayer = 0
            }
            fightDes.text += "  \(bossName.text!) use his power to damage \(playerName.text!) by \(damageOnPlayer)"
            print("Boss")
        }else if rollDice >= 10 && rollDice <= 19 && turn == false {
            turn = true
            var damageOnPlayer = bossFWD - pDefense
            if damageOnPlayer < 0 {
                pLPoints -= 0
            }else {
                pLPoints -= damageOnPlayer
                deadLine()
                playerLifePoint.text = "\(pLPoints)"
            }
            if damageOnPlayer < 0 {
                damageOnPlayer = 0
            }
            fightDes.text += "  \(bossName.text!) use his weapon to damage \(playerName.text!) by \(damageOnPlayer)"
            print("Boss")
        }else if rollDice == 20 && turn == false {
            turn = true
            var damageOnPlayer = bossFSC - pDefense
            if damageOnPlayer < 0 {
                pLPoints -= 0
            }else {
                pLPoints -= damageOnPlayer
                deadLine()
                playerLifePoint.text = "\(pLPoints)"
            }
            if damageOnPlayer < 0 {
                damageOnPlayer = 0
            }
            bossFLP += bossFSCLPB
            bossFLP += bossFSCLPB
            bossFWD += bossFSCWB
            bossLifePoint.text = "\(bossFLP)"
            bossPowerDamage.text = "\(bossFPD)"
            bossWeaponDamge.text = "\(bossFWD)"
            fightDes.text += "  \(bossName.text!) use his Special Capacity to damage \( playerName.text!) by \(damageOnPlayer) and recover \(boss1.specialCBonusLP)LP and increase his weapon Damage by \(boss1.specialCBonusWD)WD also his power damage by \(boss1.specialCBonusPD)PD"
            print("Boss")
        }
    }
    func deadLine() {
        if pLPoints <= 0 {
            pLPoints = 0
            rollDiceButton.isEnabled = false
            diceLable.text = "YOU LOST.."
        }else if bossFLP <= 0 {
            bossFLP = 0
            rollDiceButton.isEnabled = false
            diceLable.text = "YOU WIN !"
        }
    }
    @IBAction func choosePlayer(_ sender: Any) {
        rollDiceButton.isEnabled = true
    }
    //Unwine....
    @IBAction func getBack(segue:UIStoryboardSegue){
    }
}


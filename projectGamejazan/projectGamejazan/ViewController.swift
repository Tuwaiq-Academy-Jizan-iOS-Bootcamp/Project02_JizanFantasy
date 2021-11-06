//
//  ViewController.swift
//  projectGamejazan
//
//  Created by grand ahmad on 28/03/1443 AH.
//

import UIKit

protocol Hero {
    var name: String {get set}
    var lifePoint: Int {get}
    var scLifePoint: Int {get set}
    var defense: Int {get set}
    var maxDefense: Int {get set}
    var powerDamage: Int {get set}
    var maxPowerDamage: Int {get set}
    var scPowerDamage: Int {get set}
    var weaponDamage: Int {get set}
    var maxWeaponDamage: Int {get set}
    var scWeaponDamage: Int {get set}
    var specialCapacity: Int {get set}
    var points: Int {get set}
    var imageName: String {get set}
    var scActivated: Bool { get set }
}
class Boss: Hero {
    var name: String
    var lifePoint: Int
    var scLifePoint: Int
    var defense: Int
    var maxDefense: Int
    var powerDamage: Int
    var maxPowerDamage: Int
    var scPowerDamage: Int
    var weaponDamage: Int
    var maxWeaponDamage: Int
    var scWeaponDamage: Int
    
    var specialCapacity: Int
    var points: Int
    var imageName: String
    var scActivated: Bool = false
    
    init(name: String, lifePoint: Int, scLifePoint: Int, defense: Int, maxDefense: Int = 0, powerDamage: Int, maxPowerDamage: Int = 0, scPowerDamage: Int, weaponDamage: Int, maxWeaponDamage: Int = 0, scWeaponDamage: Int, specialCapacity: Int, points: Int = 0, imageName: String) {
        self.name = name
        self.lifePoint = lifePoint
        self.scLifePoint = scLifePoint
        self.defense = defense
        self.maxDefense = maxDefense
        self.powerDamage = powerDamage
        self.maxPowerDamage = maxPowerDamage
        self.scPowerDamage = scPowerDamage
        self.weaponDamage = weaponDamage
        self.maxWeaponDamage = maxWeaponDamage
        self.scWeaponDamage = scWeaponDamage
        self.specialCapacity = specialCapacity
        self.points = points
        self.imageName = imageName
    }
}
let knight = Boss(name: "knight", lifePoint: 60, scLifePoint: 5, defense: 20, maxDefense: 20, powerDamage: 30, maxPowerDamage: 30, scPowerDamage: 0, weaponDamage: 40, maxWeaponDamage: 40, scWeaponDamage: 10, specialCapacity: 100, points: 250, imageName: "knight1")
let wizard = Boss(name: "wizard", lifePoint: 90, scLifePoint: 35, defense: 15, maxDefense: 15, powerDamage: 70, maxPowerDamage: 70, scPowerDamage: 10, weaponDamage: 20, maxWeaponDamage: 20, scWeaponDamage: 0, specialCapacity: 50, points: 245, imageName: "wiz100")
let thief = Boss(name: "thief", lifePoint: 65, scLifePoint: 5, defense: 25, maxDefense: 25, powerDamage: 15, maxPowerDamage: 15, scPowerDamage: 0, weaponDamage: 30, maxWeaponDamage: 30, scWeaponDamage: 35, specialCapacity: 75, points: 210, imageName: "thief1")

let bossOne = Boss(name: "Boss1", lifePoint: 250, scLifePoint: 5, defense: 30, powerDamage: 20, scPowerDamage: 0, weaponDamage: 45, scWeaponDamage: 22, specialCapacity: 110, imageName: "imageOne")
let bossTwo = Boss(name: "Boss2", lifePoint: 170, scLifePoint: 5, defense: 25, powerDamage: 15, scPowerDamage: 32, weaponDamage: 30, scWeaponDamage: 0, specialCapacity: 75, imageName: "imageTwo")

class ViewController: UIViewController {
    var playerTurn: Bool = false
    var round: Int = 0
    
    var debugCurrent: Int = 0
    var debugResults: [Int] = [20, 15, 20, 5, 15]
    
    var boss: Boss!
    var hero: Boss!
    //    names
    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var namePlayer2: UILabel!
    //    images
    @IBOutlet weak var bossImage: UIImageView!
    @IBOutlet weak var playerImage: UIImageView!
    //    Booses
    @IBOutlet weak var bossPointLabel: UILabel!
    @IBOutlet weak var bossDFLabel: UILabel!
    @IBOutlet weak var bossPDLabel: UILabel!
    @IBOutlet weak var bossWdLabel: UILabel!
    @IBOutlet weak var bossSCLabel: UILabel!
    //   Player
    @IBOutlet weak var playerLPLabel: UILabel!
    @IBOutlet weak var playerDFLabel: UILabel!
    @IBOutlet weak var playerPDLabel: UILabel!
    @IBOutlet weak var playerWDLabel: UILabel!
    @IBOutlet weak var playerSCLabel: UILabel!
    //    Label
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var rollDiceButton: UIButton!
    @IBOutlet weak var rolling: UILabel!
    @IBAction func sequeController(seque: UIStoryboardSegue){

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBoss()
    }
    
    func rollDice() {
        
        let result: Int = .random(in: 1...20)
        
        //let result = debugResults[debugCurrent]
        //debugCurrent += 1
        
        switch result {
        case 1...9:
            fight(power: true)
        case 10...19:
            fight(power: false)
        case 20:
            specialCapacity()
        default: print("Good Luck 😂🦦!")
        }
        if playerTurn {
            round += 1
        }
        rolling.text = "\(result)"
        updateLabels()
    }
    @IBAction func roolingDice(_ sender: Any) {
        rollDice()
    }
    
    func loadBoss() {
        let randomInt: Int = .random(in: 0...1)
        boss = randomInt == 0 ? bossOne : bossTwo
        namePlayer.text = boss.name
        bossImage.image = UIImage(named: boss.imageName)
        bossPointLabel.text = "\(boss.lifePoint)"
        bossDFLabel.text = "\(boss.defense)"
        bossPDLabel.text = "\(boss.powerDamage)"
        bossWdLabel.text = "\(boss.weaponDamage)"
        bossSCLabel.text = "\(boss.specialCapacity)"
    }
    
    func fight(power: Bool) {
        if playerTurn {
            // hero attack
            if power {
                // power damage
                boss.lifePoint -= (hero.powerDamage - boss.defense)
                descriptionTextView.text.append("Hero Power Damage \((hero.powerDamage - boss.defense))\n")
            } else {
                // weapon damage
                boss.lifePoint -= (hero.weaponDamage - boss.defense)
                descriptionTextView.text.append("Hero Weapon Damage \((hero.weaponDamage - boss.defense))\n")
            }
        } else {
            // boss attack
            if power {
                // power damage
                hero.lifePoint -= (boss.powerDamage - hero.defense)
                descriptionTextView.text.append("Boss Power Damage \((boss.powerDamage - hero.defense))\n")
            } else {
                // weapon damage
                hero.lifePoint -= (boss.weaponDamage - hero.defense)
                descriptionTextView.text.append("Boss Weapon Damage \((boss.weaponDamage - hero.defense))\n")
            }
        }
        playerTurn.toggle()
    }
    
    func specialCapacity() {
        if playerTurn {
            // hero special capacity
            if !hero.scActivated {
                hero.scActivated = true
                descriptionTextView.text.append("Hero Special Capacity activated for next round!\n")
            } else {
                hero.lifePoint += hero.scLifePoint
                hero.powerDamage += hero.scPowerDamage
                hero.weaponDamage += hero.scWeaponDamage
                hero.scActivated = false
                descriptionTextView.text.append("Hero life point increased \(hero.scLifePoint) from Special Capacity\n")
                if hero.scPowerDamage != 0 {
                    playerSCLabel.text = "+\(hero.scLifePoint) LP / +\(hero.scPowerDamage) PD"
                    descriptionTextView.text.append("Hero Power Damage increased \(hero.scPowerDamage) from Special Capacity\n")
                }
                if hero.scWeaponDamage != 0 {
                    playerSCLabel.text = "+\(hero.scLifePoint) LP / +\(hero.scWeaponDamage) WD"
                    descriptionTextView.text.append("Hero Weapon Damage increased \(hero.scLifePoint) from Special Capacity\n")
                }
            }
        } else {
            // boss special capacity
            if !boss.scActivated {
                boss.scActivated = true
                descriptionTextView.text.append("Boss Special Capacity activated for next round!\n")
            } else {
                boss.lifePoint += boss.scLifePoint
                boss.powerDamage += boss.scPowerDamage
                boss.weaponDamage += boss.scWeaponDamage
                boss.scActivated = false
                descriptionTextView.text.append("Boss life point increased \(hero.scLifePoint) from Special Capacity\n")
                if boss.scPowerDamage != 0 {
                    bossSCLabel.text = "+\(boss.scLifePoint) LP / +\(boss.scPowerDamage) PD"
                    descriptionTextView.text.append("Boss Power Damage increased \(hero.scPowerDamage) from Special Capacity\n")
                }
                if boss.scWeaponDamage != 0 {
                    bossSCLabel.text = "+\(boss.scLifePoint) LP / +\(boss.scWeaponDamage) WD"
                    descriptionTextView.text.append("Boss Weapon Damage increased \(hero.scLifePoint) from Special Capacity\n")
                }
            }
        }
        playerTurn.toggle()
    }
    
    func updateLabels() {
        bossPointLabel.text = "\(boss.lifePoint)"
        bossDFLabel.text = "\(boss.defense)"
        bossPDLabel.text = "\(boss.powerDamage)"
        bossWdLabel.text = "\(boss.weaponDamage)"
        
        playerLPLabel.text = "\(hero.lifePoint)"
        playerDFLabel.text = "\(hero.defense)"
        playerPDLabel.text = "\(hero.powerDamage)"
        playerWDLabel.text = "\(hero.weaponDamage)"
        let range = NSMakeRange(descriptionTextView.text.count - 1, 0)
        descriptionTextView.scrollRangeToVisible(range)
    }
}

//
//  ViewController.swift
//  Project02
//
//  Created by NoON .. on 28/03/1443 AH.
//

import UIKit
struct Player {
    var name: String
    var LifePoint: String
    var Defense:String
    var PowerDamage:String
    var WeaponDamage:String
    var SpecialCapacity:String
    var specialLP: String
    var specialWD: String
    var specialPD: String
}
class ViewController: UIViewController{
 // boss
    let randomB = Int.random(in: 1...2)
    var boss1 = Player(name: "boss1", LifePoint: "250", Defense: "30", PowerDamage: "20", WeaponDamage: "45", SpecialCapacity: "110", specialLP: "0", specialWD: "22", specialPD: "5")
    var boss2 = Player(name: "boss2", LifePoint: "170", Defense: "25", PowerDamage: "15", WeaponDamage: "30", SpecialCapacity: "75", specialLP: "32", specialWD: "0", specialPD: "5")
    @IBOutlet weak var Player1: UILabel!
    @IBOutlet weak var PlayerLP1: UILabel!
    @IBOutlet weak var PlayerDF1: UILabel!
    @IBOutlet weak var PlayerPD1: UILabel!
    @IBOutlet weak var PlayerWD1: UILabel!
    @IBOutlet weak var PlayerSC1: UILabel!
    // players
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var PlayerLP2: UILabel!
    @IBOutlet weak var PlayerDF2: UILabel!
    @IBOutlet weak var PlayerPD2: UILabel!
    @IBOutlet weak var PlayerWD2: UILabel!
    @IBOutlet weak var PlayerSC2: UILabel!
    var sC2 = ""
    var specialLP2 = "0"
    var specialWD2 = "0"
    var specialPD2 = "0"
    // description
    @IBOutlet weak var Description: UILabel!
// button
    @IBOutlet weak var resultDice: UILabel!
    // image Boss
    @IBOutlet weak var ImageBoss: UIImageView!
    // image players
    @IBOutlet weak var imagePlayer2: UIImageView!
    var ImageP = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    roll()
    }
       var turnH = true
    @IBAction func RollingDice(_ sender: Any) {
        let random =  Int.random(in: 1...20)
        resultDice.text = "\(random)"
        // Hero
        if random >= 1 && random <= 9 && turnH == true {
        turnH = false
            if let a = Int(PlayerPD2.text!), let b = Int(PlayerDF1.text!){
            var bossDM = a - b
            if bossDM < 0 {
                PlayerLP1.text = "\(Int(PlayerLP1.text!)! - 0)"
            }else {
                PlayerLP1.text = "\(Int(PlayerLP1.text!)! - bossDM)"
            }
            if bossDM < 0 {
                bossDM = 0
            }
            Description.text = " \(player2.text!)  use his power to damage\(Player1.text!) by \(bossDM)"
            print("power Damage")
            }
        }else if random >= 10 && random <= 19 && turnH == true {
            turnH = false
            if let a = Int(PlayerWD2.text!), let b = Int(PlayerDF1.text!){
           var bossDM = a - b
            if bossDM < 0 {
                PlayerLP1.text = "\(Int(PlayerLP1.text!)! - 0)"
            } else {
                PlayerLP1.text = "\(Int(PlayerLP1.text!)! - bossDM)"
            }
            if bossDM < 0 {
                bossDM = 0
            }
            Description.text = " \(Player1.text!) use his weapon to damage \(player2.text!) by \(bossDM)"
            print("weapon Damage")
            }
        }else if random == 20 && turnH == true {
            turnH = false
            if let a = Int(PlayerSC2.text!), let b = Int(PlayerDF1.text!){
            var bossDM = a - b
            if bossDM < 0 {
                PlayerLP1.text = "\(Int(PlayerLP1.text!)! - 0)"
            } else {
                PlayerLP1.text = "\(Int(PlayerLP1.text!)! - bossDM)"
            }
            if bossDM < 0 {
                bossDM = 0
            }
            PlayerLP2.text = "\(Int(PlayerLP2.text!)! + Int(specialLP2)!)"
            PlayerPD2.text = "\(Int(PlayerPD2.text!)! + Int(specialPD2)!)"
            PlayerWD2.text = "\(Int(PlayerWD2.text!)! + Int(specialWD2)!)"
            print("special Capacity")
            }
            // Boss
        }else  if random >= 1 && random <= 9 && turnH == false {
            turnH = true
            if let a = Int(PlayerPD1.text!), let b = Int(PlayerDF2.text!) {
            var bossDM = a - b
            if bossDM < 0 {
                PlayerLP2.text = "\(Int(PlayerLP2.text!)! - 0)"
            } else {
                PlayerLP2.text = "\(Int(PlayerLP2.text!)! - bossDM)"
            }
            if bossDM < 0 {
                bossDM = 0
            }
            Description.text = " \(Player1.text!) use his power to damage \(player2.text!) by \(bossDM)"
            print("power Damage🤏🏻")
        }
        }else if random >= 10 && random <= 19 && turnH == false {
            turnH = false
            if let a = Int(PlayerWD1.text!), let b = Int(PlayerDF2.text!){
            var bossDM = a - b
            if bossDM < 0 {
                PlayerLP2.text = "\(Int(PlayerLP2.text!)! - 0)"
            }else {
                PlayerLP2.text = "\(Int(PlayerLP2.text!)! - bossDM)"
            }
            if bossDM < 0 {
                bossDM = 0
            }
            Description.text = " \(player2.text!) use his weapon to damage \(player2.text!) by \(bossDM)"
            print("weapon Damage⚔️")
            }
    }else  if random == 20 && turnH == false && random == 1 {
        turnH = true
        if let a = Int(boss1.SpecialCapacity), let b = Int(PlayerDF2.text!){
        var bossDM = a - b
        if bossDM < 0 {
            PlayerLP2.text = "\(Int(PlayerLP2.text!)! - 0)"
        } else {
            PlayerLP2.text = "\(Int(PlayerLP2.text!)! - bossDM)"
        }
        if bossDM < 0 {
            bossDM = 0
       }
        }
        PlayerLP1.text = "\(Int(PlayerLP1.text!)! + Int(boss1.specialLP)!)"
        PlayerPD1.text = "\(Int(PlayerPD1.text!)! + Int(boss1.specialPD)!)"
        PlayerWD1.text = "\(Int(PlayerWD1.text!)! + Int(boss1.specialWD)!)"
    }else if random == 20 && turnH == false && randomB == 2 {
        turnH = true
        if let a = Int(boss2.SpecialCapacity), let b = Int(PlayerDF2.text!){
        var bossDM = a - b
        if bossDM < 0 {
            PlayerLP2.text = "\(Int(PlayerLP2.text!)! - 0)"
        }else {
            PlayerLP2.text = "\(Int(PlayerLP2.text!)! - bossDM)"
        }
        if bossDM < 0 {
            bossDM = 0
        }
        }
        PlayerLP1.text = "\(Int(PlayerLP1.text!)! + Int(boss2.specialLP)!)"
        PlayerPD1.text = "\(Int(PlayerPD1.text!)! + Int(boss2.specialPD)!)"
        PlayerWD1.text = "\(Int(PlayerWD1.text!)! + Int(boss2.specialWD)!)"
        print("special Capacity💣")
    }
}
    // func Boss
    func roll() {
        let randomB = Int.random(in: 1...2)
        if ImageP == 1 {
                    imagePlayer2.image = UIImage(named: "knight")
                }else if ImageP == 2{
                    imagePlayer2.image = UIImage(named: "wizard")
                }else{
                    imagePlayer2.image = UIImage(named: "thief")
                }
                 if randomB == 1 {
                switch randomB {
                case 1:
                    ImageBoss.image = UIImage(named: "boss1")
                    Player1.text = boss1.name
                    PlayerLP1.text = boss1.LifePoint
                    PlayerDF1.text = boss1.Defense
                    PlayerPD1.text = boss1.PowerDamage
                    PlayerWD1.text = boss1.WeaponDamage
                    PlayerSC1.text = boss2.SpecialCapacity
                case 2:
                    ImageBoss.image = UIImage(named: "boss2")
                    Player1.text = boss2.name
                    PlayerLP1.text = boss2.LifePoint
                    PlayerDF1.text = boss2.Defense
                    PlayerPD1.text = boss2.PowerDamage
                    PlayerWD1.text = boss2.WeaponDamage
                    PlayerSC1.text = boss2.SpecialCapacity
                default:
                    print("ERROR")
                }
         }
    }
    @IBAction func unwindToRootViewController(segue: UIStoryboardSegue){      print("Unwind to Root View Controller")
    }
}

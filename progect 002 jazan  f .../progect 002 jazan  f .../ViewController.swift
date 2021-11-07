import UIKit
struct Players {
    var Name:String
    var lifePoints:String
    var defense:String
    var powerDamage:String
    var weaponDamage:String
    var specialCapacity:String
    var specialCBonusPD:String
    var specialCBonusWD:String
    var specialCBonusLP:String
}
class ViewController: UIViewController {
    @IBOutlet weak var fightDecreption: UITextView!
    @IBOutlet weak var diceLable: UILabel!
    //Player Info... ((((SEGUE))))............
    var pImage = 0
    @IBOutlet weak var pUImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var pLPLable: UILabel!
    @IBOutlet weak var pDFLable: UILabel!
    @IBOutlet weak var pPDLable: UILabel!
    @IBOutlet weak var pWDLable: UILabel!
    @IBOutlet weak var pSCLable: UILabel!
    var pSCDamage = ""
    var pSCBonusLP = ""
    var pSCBonusPD = ""
    var pSCBonusWD = ""
    //Boss Info.........................
    let randomBoss = Int.random(in: 1...2)
    var boss1 = Players(Name: "BOSS1", lifePoints: "250", defense: "30", powerDamage: "20", weaponDamage: "45", specialCapacity: "110", specialCBonusPD: "0", specialCBonusWD: "22", specialCBonusLP: "5")
    var boss2 = Players(Name: "BOSS2", lifePoints: "170", defense: "25", powerDamage: "15", weaponDamage: "30", specialCapacity: "75", specialCBonusPD: "32", specialCBonusWD: "0", specialCBonusLP: "5")
    @IBOutlet weak var bossImage: UIImageView!
    @IBOutlet weak var bossName: UILabel!
    @IBOutlet weak var bossLP: UILabel!
    @IBOutlet weak var bossDF: UILabel!
    @IBOutlet weak var bossPD: UILabel!
    @IBOutlet weak var bossWD: UILabel!
    @IBOutlet weak var bossSC: UILabel!
    //To Show First...........
    override func viewDidLoad() {
        super.viewDidLoad()
        if pImage == 1 {
            pUImage.image = UIImage(named: "knight")
        }else if pImage == 2 {
            pUImage.image = UIImage(named: "thief")
        }else{
            pUImage.image = UIImage(named: "wizard")
        }
        if randomBoss == 1 {
            bossImage.image = UIImage(named: "boss1")
            bossName.text = boss1.Name
            bossLP.text = boss1.lifePoints
            bossDF.text = boss1.defense
            bossPD.text = boss1.powerDamage
            bossWD.text = boss1.weaponDamage
            bossSC.text = "\(boss1.specialCapacity)Damage / +\(boss1.specialCBonusWD)WD / +\(boss1.specialCBonusPD)PD / +\(boss1.specialCBonusLP)LP"
        }else {
            bossImage.image = UIImage(named: "boss2")
            bossName.text = boss2.Name
            bossLP.text = boss2.lifePoints
            bossDF.text = boss2.defense
            bossPD.text = boss2.powerDamage
            bossWD.text = boss2.weaponDamage
            bossSC.text = "\(boss2.specialCapacity) Damage / +\(boss2.specialCBonusWD)WD / +\(boss2.specialCBonusPD)PD / +\(boss2.specialCBonusLP)LP"
        }
    }
    var rollDice = Int.random(in: 1...20)
    var turn = true
    @IBAction func theGame(_ sender: Any) {
        diceLable.text = "Dice Roll is : \(rollDice)"
        if rollDice >= 1 && rollDice <= 9 && turn == true {
            turn = false
            var damageOnBoss = Int(pPDLable.text!)! - Int(bossDF.text!)!
            if damageOnBoss < 0 {
                bossLP.text = "\(Int(bossLP.text!)! - 0)"
            }else {
                bossLP.text = "\(Int(bossLP.text!)! - damageOnBoss)"
            }
            if damageOnBoss < 0 {
                damageOnBoss = 0
            }
            fightDecreption.text += "  \(playerName.text!) use his power to damage \(bossName.text!) by \(damageOnBoss)"
            print("Player")
        }else if rollDice >= 10 && rollDice <= 19 && turn == true {
            turn = false
            var damageOnBoss = Int(pWDLable.text!)! - Int(bossDF.text!)!
            if damageOnBoss < 0 {
                bossLP.text = "\(Int(bossLP.text!)! - 0)"
            }else {
                bossLP.text = "\(Int(bossLP.text!)! - damageOnBoss)"
            }
            if damageOnBoss < 0 {
                damageOnBoss = 0
            }
            fightDecreption.text += "  \(playerName.text!) use his weapon to damage \(bossName.text!) by \(damageOnBoss)"
            print("Player")
        }else if rollDice == 20 && turn == true {
            turn = false
            var damageOnBoss = Int(pSCLable.text!)! - Int(bossDF.text!)!
            if damageOnBoss < 0 {
                bossLP.text = "\(Int(bossLP.text!)! - 0)"
            }else {
                bossLP.text = "\(Int(bossLP.text!)! - damageOnBoss)"
            }
            if damageOnBoss < 0 {
                damageOnBoss = 0
            }
            fightDecreption.text += "  \(playerName.text!) use his Special Capacity to damage \(bossName.text!) by \(damageOnBoss) and recover \(pSCBonusLP)LP and increase his weapon Damage by \(pSCBonusWD)WD also his power damage by \(pSCBonusPD)PD"
            pLPLable.text = "\(Int(pLPLable.text!)! + Int(pSCBonusLP)!)"
            pPDLable.text = "\(Int(pPDLable.text!)! + Int(pSCBonusPD)!)"
            pWDLable.text = "\(Int(pWDLable.text!)! + Int(pSCBonusWD)!)"
            print("Player")
        }else if rollDice >= 1 && rollDice <= 9 && turn == false {
            turn = true
            var damageOnPlayer = Int(bossPD.text!)! - Int(pDFLable.text!)!
            if damageOnPlayer < 0 {
                pLPLable.text = "\(Int(pLPLable.text!)! - 0)"
            }else {
                pLPLable.text = "\(Int(pLPLable.text!)! - damageOnPlayer)"
            }
            if damageOnPlayer < 0 {
                damageOnPlayer = 0
            }
            fightDecreption.text += "  \(bossName.text!) use his power to damage \(playerName.text!) by \(damageOnPlayer)"
            print("Boss")
        }else if rollDice >= 10 && rollDice <= 19 && turn == false {
            turn = true
            var damageOnPlayer = Int(bossWD.text!)! - Int(pDFLable.text!)!
            if damageOnPlayer < 0 {
                pLPLable.text = "\(Int(pLPLable.text!)! - 0)"
            }else {
                pLPLable.text = "\(Int(pLPLable.text!)! - damageOnPlayer)"
            }
            if damageOnPlayer < 0 {
                damageOnPlayer = 0
            }
            fightDecreption.text += "  \(bossName.text!) use his weapon to damage \(playerName.text!) by \(damageOnPlayer)"
            print("Boss")
        }else if rollDice == 20 && turn == false && randomBoss == 1 {
            turn = true
            var damageOnPlayer = Int(boss1.specialCapacity)! - Int(pDFLable.text!)!
            if damageOnPlayer < 0 {
                pLPLable.text = "\(Int(pLPLable.text!)! - 0)"
            }else {
                pLPLable.text = "\(Int(pLPLable.text!)! - damageOnPlayer)"
            }
            if damageOnPlayer < 0 {
                damageOnPlayer = 0
            }
            fightDecreption.text += "  \(bossName.text!) use his Special Capacity to damage \( playerName.text!) by \(damageOnPlayer) and recover \(boss1.specialCBonusLP)LP and increase his weapon Damage by \(boss1.specialCBonusWD)WD also his power damage by \(boss1.specialCBonusPD)PD"
            bossLP.text = "\(Int(bossLP.text!)! + Int(boss1.specialCBonusLP)!)"
            bossPD.text = "\(Int(bossPD.text!)! + Int(boss1.specialCBonusPD)!)"
            bossWD.text = "\(Int(bossWD.text!)! + Int(boss1.specialCBonusWD)!)"
            print("Boss")
        }else if rollDice == 20 && turn == false && randomBoss == 2 {
            turn = true
            var damageOnPlayer = Int(boss2.specialCapacity)! - Int(pDFLable.text!)!
            if damageOnPlayer < 0 {
                pLPLable.text = "\(Int(pLPLable.text!)! - 0)"
            }else {
                pLPLable.text = "\(Int(pLPLable.text!)! - damageOnPlayer)"
            }
            if damageOnPlayer < 0 {
                damageOnPlayer = 0
            }
            fightDecreption.text += "  \(bossName.text!) use his Special Capacity to damage \( playerName.text!) by \(damageOnPlayer) and recover \(boss2.specialCBonusLP)LP and increase his weapon Damage by \(boss2.specialCBonusWD)WD also his power damage by \(boss2.specialCBonusPD)PD"
            bossLP.text = "\(Int(bossLP.text!)! + Int(boss2.specialCBonusLP)!)"
            bossPD.text = "\(Int(bossPD.text!)! + Int(boss2.specialCBonusPD)!)"
            bossWD.text = "\(Int(bossWD.text!)! + Int(boss2.specialCBonusWD)!)"
            print("Boss")
        }
    }
    

    //Unwine....
    @IBAction func getBack(segue:UIStoryboardSegue){
    }
}

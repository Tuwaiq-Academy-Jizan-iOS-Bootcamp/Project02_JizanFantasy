import UIKit

class FightView: UIViewController {
    @IBOutlet weak var diceLable: UILabel!
    //----------Player Things//
    @IBOutlet weak var playerUIImage: UIImageView!
    @IBOutlet weak var playerNameLable: UILabel!
    var playerNL = ""
    var pImage = 0
    @IBOutlet weak var specialCLable: UILabel!
    var specialCText = ""
    var sCValue = 0
    var sCBonusWD = 0
    var sCBonusPD = 0
    var sCBonusLP = 0
    @IBOutlet weak var weaponDLable: UILabel!
    var weaponDValue = 0
    @IBOutlet weak var poweDLable: UILabel!
    var powerDValue = 0
    @IBOutlet weak var defenseLable: UILabel!
    var defenseValue = 0
    @IBOutlet weak var lifePLable: UILabel!
    var lifePValue = 0
    //Dice Thing//
    @IBOutlet weak var rulleTheDice: UIButton!
    //Turn Text Things//
    @IBOutlet weak var turnWhat: UILabel!
    @IBOutlet weak var fightDescreption: UILabel!
    //----------Boss Things//
    @IBOutlet weak var bossUIImage: UIImageView!
    var bossImage = 0
    @IBOutlet weak var bossLable: UILabel!
    var bossName = ""
    @IBOutlet weak var bossLP: UILabel!
    var bStateLP = 0
    @IBOutlet weak var bossDEF: UILabel!
    var bStateDEF = 0
    @IBOutlet weak var bossPD: UILabel!
    var bStatePD = 0
    @IBOutlet weak var bossWD: UILabel!
    var bStateWD = 0
    @IBOutlet weak var bossSC: UILabel!
    var btextSC = ""
    var bStateSCD = 0
    var bStateSCWD = 0
    var bStateSCPD = 0
    var bStateSCLP = 0
    //Override//
    override func viewDidLoad() {
        super.viewDidLoad()
        diceLable.text = "Start The Game"
        fightDescreption.layer.cornerRadius = 40
        rulleTheDice.layer.cornerRadius = 20
        if pImage == 1 {
            playerUIImage.image = UIImage(named: "Warrior")
        }else if pImage == 2 {
            playerUIImage.image = UIImage(named: "Mage")
        }else {
            playerUIImage.image = UIImage(named: "Rouge")
        }
        playerNameLable.text = playerNL
        specialCLable.text = specialCText
        weaponDLable.text = "\(weaponDValue)"
        poweDLable.text = "\(powerDValue)"
        defenseLable.text = "\(defenseValue)"
        lifePLable.text = "\(lifePValue)"
        //Boss//
        if bossImage == 1 {
            bossUIImage.image = UIImage(named: "Ravana")
            bossLable.text = bossName
            bossLP.text = "\(bStateLP)"
            bossPD.text = "\(bStatePD)"
            bossSC.text = btextSC
            bossWD.text = "\(bStateWD)"
            bossDEF.text = "\(bStateDEF)"
        }else {
            bossUIImage.image = UIImage(named: "Dragon")
            bossLable.text = bossName
            bossLP.text = "\(bStateLP)"
            bossPD.text = "\(bStatePD)"
            bossSC.text = btextSC
            bossWD.text = "\(bStateWD)"
            bossDEF.text = "\(bStateDEF)"
        }
    }
    //Play The Game//
    var turnNumber = 0
    var turnHow = true
    @IBAction func rulleTheDice(_ sender: Any) {
        //turnNumber += 1
        let rD = Int.random(in: 1...20)
        diceLable.text = "\(rD)"
        if turnHow == true {
            switch rD {
            case 1...9:
                turnAndComment()
                turnHow = false
                var pDCal = powerDValue - bStateDEF
                if pDCal <= 0 {
                    bStateLP -= 0
                }else {
                    bStateLP -= pDCal
                }
                deadLine()
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                if pDCal < 0 {
                    pDCal = 0
                }
                fightDescreption.text = """
                \(playerNL) use his power to Damage \(bossName)
                 by \(pDCal)
                """
            case 10...19:
                turnAndComment()
                turnHow = false
                var wDCal = weaponDValue - bStateDEF
                if wDCal <= 0 {
                    bStateLP -= 0
                }else {
                    bStateLP -= wDCal
                }
                deadLine()
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                if wDCal < 0 {
                    wDCal = 0
                }
                fightDescreption.text = """
                \(playerNL) use his weapon to Damage \(bossName)
                 by \(wDCal)
                """
            case 20:
                turnAndComment()
                turnHow = false
                var sCDcal = sCValue - bStateDEF
                if sCDcal <= 0 {
                    bStateLP -= 0
                }else {
                    bStateLP -= sCDcal
                }
                deadLine()
                lifePValue += sCBonusLP
                powerDValue += sCBonusPD
                weaponDValue += sCBonusWD
                poweDLable.text = "\(powerDValue)"
                weaponDLable.text = "\(weaponDValue)"
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                if sCDcal < 0 {
                    sCDcal = 0
                }
                fightDescreption.text = """
                \(playerNL) use his Special Capacity to hit \(bossName) and do \(sCDcal) Damage to him also recover \(sCBonusLP) L.P and empower his W.D by \(sCBonusWD) and his P.D by \(sCBonusPD)
                """
            default: print("ERROR")
            }
        }else {
            switch rD {
            case 1...9:
                turnHow = true
                var bPDCal = bStatePD - defenseValue
                if bPDCal <= 0 {
                    lifePValue -= 0
                }else {
                    lifePValue -= bPDCal
                }
                deadLine()
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                if bPDCal < 0 {
                    bPDCal = 0
                }
                fightDescreption.text = """
                \(bossName) use his power to hit \(playerNL) and do \(bPDCal) Damage to you
                """
            case 10...19:
                turnHow = true
                var bWDCal = bStateWD - defenseValue
                if bWDCal <= 0 {
                    lifePValue -= 0
                }else {
                    lifePValue -= bWDCal
                }
                deadLine()
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                if bWDCal < 0 {
                    bWDCal = 0
                }
                fightDescreption.text = """
                \(bossName) use his weapon to hit \(playerNL) and do \(bWDCal) Damage to you
                """
            case 20:
                turnHow = true
                var bSCDcal = bStateSCD - defenseValue
                if bSCDcal <= 0 {
                    lifePValue -= 0
                }else {
                    lifePValue -= bSCDcal
                }
                deadLine()
                bStateLP += bStateSCLP
                bStatePD += bStateSCPD
                bStateWD += bStateSCWD
                bossPD.text = "\(bStatePD)"
                bossWD.text = "\(bStateWD)"
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                if bSCDcal < 0 {
                    bSCDcal = 0
                }
                fightDescreption.text = """
\(bossName) use his Special Capacity to hit \(playerNL) and do \(bSCDcal) Damage to him also recover \(bStateSCLP) L.P and empower his W.D by \(bStateSCWD) and his P.D by \(bStateSCPD)
"""
            default: print("ERROR")
            }
        }
    }
    func deadLine() {
        if lifePValue <= 0 {
            lifePValue = 0
            rulleTheDice.isEnabled = false
            diceLable.text = "YOU LOST.."
        }else if bStateLP <= 0 {
            bStateLP = 0
            rulleTheDice.isEnabled = false
            diceLable.text = "YOU WIN !"
        }
    }
    func turnAndComment(){
        if turnHow == true {
            turnNumber += 1
            turnWhat.text = "Turn number: //\(turnNumber)//"
        }
    }
}

import UIKit

class FightView: UIViewController {
    @IBOutlet weak var diceLable: UILabel!
    //----------Player Things//
    @IBOutlet weak var playerUIImage: UIImageView!
    @IBOutlet weak var playerNameLable: UILabel!
    var playerNL = ""
    var playerImage = 0
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
    @IBOutlet weak var fightFeald: UILabel!
    //Turn Text Things//
    @IBOutlet weak var turnText: UILabel!
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
        rulleTheDice.layer.cornerRadius = 20
        if playerImage == 1 {
            playerUIImage.image = UIImage(named: "Warrior")
        }else if playerImage == 2 {
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
        let rD = Int.random(in: 1...20)
        if turnHow == true {
        switch rD {
            // SEE THE TURN WHAT //
        case 1...9: turnHow = false
            turnText.text = turnWhat()
            bStateLP -= (powerDValue - bStateDEF)
            bossLP.text = "\(bStateLP)"
            lifePLable.text = "\(lifePValue)"
            fightFeald.text = usePower()
        case 10...19: turnHow = false
            turnText.text = turnWhat()
            bStateLP -= (weaponDValue - bStateDEF)
            bossLP.text = "\(bStateLP)"
            lifePLable.text = "\(lifePValue)"
            fightFeald.text = useWeapon()
        case 20: turnHow = false
            turnText.text = turnWhat()
            bStateLP -= (sCValue - bStateDEF)
            lifePValue += sCBonusLP
            weaponDValue += sCBonusWD
            powerDValue += sCBonusPD
            poweDLable.text = "\(powerDValue)"
            weaponDLable.text = "\(weaponDValue)"
            bossLP.text = "\(bStateLP)"
            lifePLable.text = "\(lifePValue)"
            fightFeald.text = useSC()
            default: print("ERROR")
        }
        }else {
            switch rD {
            case 1...9: turnHow = true
                lifePValue -= (bStatePD - defenseValue)
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                fightFeald.text = usePower()
                turnText.text = turnWhat()
            case 10...19: turnHow = true
                lifePValue -= (bStateWD - defenseValue)
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                fightFeald.text = useWeapon()
                turnText.text = turnWhat()
            case 20: turnHow = true
                lifePValue -= (bStateSCD - defenseValue)
                bStateLP += bStateSCLP
                bStateWD += bStateSCWD
                bStatePD += bStateSCPD
                bossPD.text = "\(bStatePD)"
                bossWD.text = "\(bStateWD)"
                bossLP.text = "\(bStateLP)"
                lifePLable.text = "\(lifePValue)"
                fightFeald.text = useSC()
                turnText.text = turnWhat()
            default: print("ERROR")
            }
        }
    }
    //Turn Func//
    func turnWhat() -> String {
        if turnHow == true {
           return "Turn number //\(turnNumber)//"
        }else {
           return "End of the turn number //\(turnNumber)//"
        }
    }
    //Power Fighting Lable//
    func usePower() -> String{
        if turnHow == true {
           return """
\(playerNL)
use his power on \(bossName)
\(playerNL) Life points remain \(lifePValue)
\(bossName) Life points remain \(bStateLP)
"""
        }else {
           return """
\(bossName)
use his power on \(playerNL)
\(bossName) Life points remain \(bStateLP)
\(playerNL) Life points remain \(lifePValue)
"""
        }
    }
    func useWeapon() -> String {
        if turnHow == true {
           return """
\(playerNL)
use his weapon on \(bossName)
\(playerNL) Life points remain \(lifePValue)
\(bossName) Life points remain \(bStateLP)
"""
        }else {
           return """
\(bossName)
use his weapon on \(playerNL)
\(bossName) Life points remain \(bStateLP)
\(playerNL) Life points remain \(lifePValue)
"""
        }
    }
    func useSC() -> String {
        if turnHow == true {
           return """
\(playerNL)
use Fell Cleave on \(bossName)
and get bunos weapon damage and revover some health
\(playerNL) Life points remain \(lifePValue)
\(bossName) Life points remain \(bStateLP)
"""
        }else {
           return """
\(bossName)
use boss attack on \(playerNL)
and get bunos damage and revover some health
\(bossName) Life points remain \(bStateLP)
\(playerNL) Life points remain \(lifePValue)
"""
        }
    }
}


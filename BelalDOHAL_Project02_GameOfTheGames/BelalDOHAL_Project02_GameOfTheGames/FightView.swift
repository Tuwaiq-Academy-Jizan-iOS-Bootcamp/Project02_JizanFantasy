import UIKit

class FightView: UIViewController {
    @IBOutlet weak var diceLable: UILabel!
    //----------Player Things//
    @IBOutlet weak var playerUIImage: UIImageView!
    @IBOutlet weak var playerNameLable: UILabel!
    var playerNL = ""
    var playerImage = 0
    @IBOutlet weak var specialCLable: UILabel!
    var specialCValue = ""
    @IBOutlet weak var weaponDLable: UILabel!
    var weaponDValue = 0
    @IBOutlet weak var poweDLable: UILabel!
    var powerDValue = 0
    @IBOutlet weak var defenseLable: UILabel!
    var defenseValue = 0
    @IBOutlet weak var lifePLable: UILabel!
    var lifePValue = 0
    @IBOutlet weak var rulleTheDice: UIButton!
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
    var bStateSC = 0
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
        specialCLable.text = "\(specialCValue)"
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
    var turnHow = true
    @IBAction func rulleTheDice(_ sender: Any) {
        let rD = Int.random(in: 1...20)
        if turnHow == true {
        switch rD {
        case 1...9: turnHow = false
        case 10...19: turnHow = false
        case 20: turnHow = false
        default: print("ERROR")
        }
        }else {
            switch rD {
            case 1...9: turnHow = true
            case 10...19: turnHow = true
            case 20: turnHow = true
            default: print("ERROR")
            }
        }
    }
}


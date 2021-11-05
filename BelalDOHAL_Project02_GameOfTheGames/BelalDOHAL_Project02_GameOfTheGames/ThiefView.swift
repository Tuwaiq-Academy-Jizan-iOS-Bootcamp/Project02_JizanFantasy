import UIKit

class ThiefView: UIViewController {
    //Image//
    var pImage = 3
    //Text Field//
    @IBOutlet weak var playerTextField: UITextField!
    //Skill Points//
    @IBOutlet weak var playerSP: UILabel!
    var stateSP = 135
    //----State----//
    //SC//
    var sCValue = 75
    var sCBonusWD = 35
    var sCBonusPD = 0
    var sCBonusLP = 5
    //DEF//
    @IBOutlet weak var plusDEF: UIButton!
    @IBOutlet weak var minusDEF: UIButton!
    @IBOutlet weak var playerDEF: UILabel!
    var stateDEF = 0
    //WD//
    @IBOutlet weak var plusWD: UIButton!
    @IBOutlet weak var minusWD: UIButton!
    @IBOutlet weak var playerWD: UILabel!
    var stateWD = 0
    //PW//
    @IBOutlet weak var plusPD: UIButton!
    @IBOutlet weak var minusPD: UIButton!
    @IBOutlet weak var playerPD: UILabel!
    var statePD = 0
    //LP//
    @IBOutlet weak var pluseLP: UIButton!
    @IBOutlet weak var minusLP: UIButton!
    @IBOutlet weak var playerLP: UILabel!
    var stateLP = 0
    //Save//
    @IBOutlet weak var warriorSaveButton: UIButton!
//Override//------------
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTextField.delegate = self
        warriorSaveButton.layer.cornerRadius = 20
        playerSP.text = "\(stateSP)"
        minusLP.isEnabled = false
        minusDEF.isEnabled = false
        minusPD.isEnabled = false
        minusWD.isEnabled = false
    }
    //Send Function//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendInfo = segue.destination as? BossView
        sendInfo?.sCValue = sCValue
        sendInfo?.sCBonusWD = sCBonusWD
        sendInfo?.sCBonusPD = sCBonusPD
        sendInfo?.sCBonusLP = sCBonusLP
        sendInfo?.powerDValue = statePD
        sendInfo?.defenseValue = stateDEF
        sendInfo?.weaponDValue = stateWD
        sendInfo?.lifePValue = stateLP
        sendInfo?.pImage = pImage
        sendInfo?.playerNL = playerTextField.text!
        sendInfo?.specialCText = "75 Damage / +5(LP) / +35(WD)"
    }
    //LP Actions//
    //Plus//
    @IBAction func lifePointsActionPlus(_ sender: Any) {
        if stateSP > 0 {
            minusLP.isEnabled = true
            stateSP -= 1
            stateLP += 1
            playerSP.text = "\(stateSP)"
            playerLP.text = "\(stateLP)"
        }else if stateSP == 0 {
            pluseLP.isEnabled = false
        }
    }
    //Minus//
    @IBAction func lifePointsActionMinus(_ sender: Any) {
        if stateLP > 0 {
            pluseLP.isEnabled = true
            plusPD.isEnabled = true
            plusWD.isEnabled = true
            plusDEF.isEnabled = true
            stateLP -= 1
            stateSP += 1
            playerSP.text = "\(stateSP)"
            playerLP.text = "\(stateLP)"
        }else if stateLP == 0 {
            minusLP.isEnabled = false
        }
    }
    //Defense Action//
    //Plus//
    @IBAction func defencePLUS(_ sender: Any) {
        if stateSP > 0 && stateDEF < 25 {
            minusDEF.isEnabled = true
            stateSP -= 1
            stateDEF += 1
            playerSP.text = "\(stateSP)"
            playerDEF.text = "\(stateDEF)"
        }else if stateDEF == 25 || stateSP == 0 {
            plusDEF.isEnabled = false
        }
    }
    //Minus//
    @IBAction func defenseMINUS(_ sender: Any) {
        if stateDEF > 0 {
            pluseLP.isEnabled = true
            plusPD.isEnabled = true
            plusWD.isEnabled = true
            plusDEF.isEnabled = true
            stateSP += 1
            stateDEF -= 1
            playerSP.text = "\(stateSP)"
            playerDEF.text = "\(stateDEF)"
        }else if stateDEF == 0 {
            minusDEF.isEnabled = false
        }
    }
    //Power Actions//
    //Plus//
    @IBAction func powerPLUS(_ sender: Any) {
        if stateSP > 0 && statePD < 15 {
            minusPD.isEnabled = true
            stateSP -= 1
            statePD += 1
            playerSP.text = "\(stateSP)"
            playerPD.text = "\(statePD)"
        }else if statePD == 15 || stateSP == 0 {
            plusPD.isEnabled = false
        }
    }
    //Minus//
    @IBAction func powerMINUS(_ sender: Any) {
        if statePD > 0 {
            pluseLP.isEnabled = true
            plusPD.isEnabled = true
            plusWD.isEnabled = true
            plusDEF.isEnabled = true
            stateSP += 1
            statePD -= 1
            playerSP.text = "\(stateSP)"
            playerPD.text = "\(statePD)"
        }else if stateWD == 0 {
            minusPD.isEnabled = false
        }
    }
    //Weapon Actions//
    //Plus//
    @IBAction func weaponPLUS(_ sender: Any) {
        if stateSP > 0 && stateWD < 30 {
            minusWD.isEnabled = true
            stateSP -= 1
            stateWD += 1
            playerSP.text = "\(stateSP)"
            playerWD.text = "\(stateWD)"
        }else if stateWD == 30 || stateSP == 0 {
            plusWD.isEnabled = false
        }
    }
    //Minus//
    @IBAction func weaponMINUS(_ sender: Any) {
        if stateWD > 0 {
            pluseLP.isEnabled = true
            plusPD.isEnabled = true
            plusWD.isEnabled = true
            plusDEF.isEnabled = true
            stateSP += 1
            stateWD -= 1
            playerSP.text = "\(stateSP)"
            playerWD.text = "\(stateWD)"
        }else if stateWD == 0 {
            minusWD.isEnabled = false
        }
    }
}
//Return Text Field Function//
extension ThiefView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

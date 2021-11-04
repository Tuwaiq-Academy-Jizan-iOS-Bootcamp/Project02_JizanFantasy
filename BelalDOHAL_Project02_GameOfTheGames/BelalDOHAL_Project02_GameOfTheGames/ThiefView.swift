import UIKit

class ThiefView: UIViewController {
    //Text Field//
    @IBOutlet weak var playerTextField: UITextField!
    //Skill Points//
    @IBOutlet weak var playerSP: UILabel!
    var stateSP = 135
    //----State----//
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
    //Go To Fight//
    @IBAction func knightToFight(_ sender: UIButton) {
        performSegue(withIdentifier: "fromThief", sender: self)
    }
    //Send Function//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendInfo = segue.destination as? FightView
        sendInfo?.powerDValue = "\(statePD)"
        sendInfo?.defenseValue = "\(stateDEF)"
        sendInfo?.weaponDValue = "\(stateWD)"
        sendInfo?.lifePValue = "\(stateLP)"
        sendInfo?.playerName = playerTextField.text!
        sendInfo?.specialCValue = "75 Damage / +5(LP) / +35(WD)"
    }
    //LP Actions//
    @IBAction func lifePointsActionPlus(_ sender: Any) {
        if stateSP > 0 {
            plusDEF.isEnabled = true
            plusPD.isEnabled = true
            plusWD.isEnabled = true
            minusLP.isEnabled = true
            stateSP -= 1
            stateLP += 1
            playerSP.text = "\(stateSP)"
            playerLP.text = "\(stateLP)"
        }else if stateSP == 0 {
            plusDEF.isEnabled = true
            plusPD.isEnabled = true
            plusWD.isEnabled = true
            pluseLP.isEnabled = false
        }
    }
    @IBAction func lifePointsActionMinus(_ sender: Any) {
        if stateLP > 0 {
            plusPD.isEnabled = true
            plusDEF.isEnabled = true
            plusWD.isEnabled = true
            pluseLP.isEnabled = true
            stateLP -= 1
            stateSP += 1
            playerSP.text = "\(stateSP)"
            playerLP.text = "\(stateLP)"
        }else if stateLP == 0 {
            plusPD.isEnabled = true
            plusDEF.isEnabled = true
            plusWD.isEnabled = true
            minusLP.isEnabled = false
        }
    }
    //Defense Action//
    @IBAction func defencePLUS(_ sender: Any) {
        if stateSP > 0 && stateDEF < 25 {
            pluseLP.isEnabled = true
            minusDEF.isEnabled = true
            stateSP -= 1
            stateDEF += 1
            playerSP.text = "\(stateSP)"
            playerDEF.text = "\(stateDEF)"
        }else if stateDEF == 25 || stateSP == 0 {
            pluseLP.isEnabled = true
            plusDEF.isEnabled = false
        }
    }
    @IBAction func defenseMINUS(_ sender: Any) {
        if stateDEF > 0 {
            pluseLP.isEnabled = true
            plusDEF.isEnabled = true
            stateSP += 1
            stateDEF -= 1
            playerSP.text = "\(stateSP)"
            playerDEF.text = "\(stateDEF)"
        }else if stateDEF == 0 {
            minusDEF.isEnabled = false
            pluseLP.isEnabled = true
        }
    }
    //Power Actions//
    @IBAction func powerPLUS(_ sender: Any) {
        if stateSP > 0 && statePD < 15 {
            pluseLP.isEnabled = true
            minusPD.isEnabled = true
            stateSP -= 1
            statePD += 1
            playerSP.text = "\(stateSP)"
            playerPD.text = "\(statePD)"
        }else if statePD == 15 || stateSP == 0 {
            pluseLP.isEnabled = true
            plusPD.isEnabled = false
        }
    }
    @IBAction func powerMINUS(_ sender: Any) {
        if statePD > 0 {
            pluseLP.isEnabled = true
            plusPD.isEnabled = true
            stateSP += 1
            statePD -= 1
            playerSP.text = "\(stateSP)"
            playerPD.text = "\(statePD)"
        }else if stateWD == 0 {
            minusPD.isEnabled = false
            pluseLP.isEnabled = true
        }
    }
    //Weapon Actions//
    @IBAction func weaponPLUS(_ sender: Any) {
        if stateSP > 0 && stateWD < 30 {
            pluseLP.isEnabled = true
            minusWD.isEnabled = true
            stateSP -= 1
            stateWD += 1
            playerSP.text = "\(stateSP)"
            playerWD.text = "\(stateWD)"
        }else if stateWD == 30 || stateSP == 0 {
            plusWD.isEnabled = false
        }
    }
    @IBAction func weaponMINUS(_ sender: Any) {
        if stateWD > 0 {
            pluseLP.isEnabled = true
            plusWD.isEnabled = true
            stateSP += 1
            stateWD -= 1
            playerSP.text = "\(stateSP)"
            playerWD.text = "\(stateWD)"
        }else if stateWD == 0 {
            minusWD.isEnabled = false
            pluseLP.isEnabled = true
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

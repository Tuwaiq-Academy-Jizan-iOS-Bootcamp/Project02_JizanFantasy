import UIKit
class KnightView: UIViewController {
    //Image//
    var pImage = 1
    //Text Field//
    @IBOutlet weak var playerTextField: UITextField!
    //Skill Points//
    @IBOutlet weak var playerSP: UILabel!
    var stateSP = 150
    //----State----//
    //SC//
    var sCValue = 100
    var sCBonusWD = 10
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
        //Long Click and One Click//
        //DEF//
        let plusDEFTap = UITapGestureRecognizer(target: self, action: #selector (defencePLUS))
        let plusDEFLong = UILongPressGestureRecognizer(target: self, action: #selector(defencePLUS))
        plusDEFTap.numberOfTapsRequired = 1
        plusDEF.addGestureRecognizer(plusDEFTap)
        plusDEF.addGestureRecognizer(plusDEFLong)
        let minusDEFTap = UITapGestureRecognizer(target: self, action: #selector (defenseMINUS))
        let minusDEFLong = UILongPressGestureRecognizer(target: self, action: #selector(defenseMINUS))
        minusDEFTap.numberOfTapsRequired = 1
        minusDEF.addGestureRecognizer(minusDEFTap)
        minusDEF.addGestureRecognizer(minusDEFLong)
        //LP//
        let plusLPTap = UITapGestureRecognizer(target: self, action: #selector (lifePointsActionPlus))
        let plusLPLong = UILongPressGestureRecognizer(target: self, action: #selector(lifePointsActionPlus))
        plusLPTap.numberOfTapsRequired = 1
        pluseLP.addGestureRecognizer(plusLPTap)
        pluseLP.addGestureRecognizer(plusLPLong)
        let minusLPTap = UITapGestureRecognizer(target: self, action: #selector (lifePointsActionMinus))
        let minusLPLong = UILongPressGestureRecognizer(target: self, action: #selector(lifePointsActionMinus))
        minusLPTap.numberOfTapsRequired = 1
        minusLP.addGestureRecognizer(minusLPTap)
        minusLP.addGestureRecognizer(minusLPLong)
        //PD//
        let plusPDTap = UITapGestureRecognizer(target: self, action: #selector (powerPLUS))
        let plusPDLong = UILongPressGestureRecognizer(target: self, action: #selector(powerPLUS))
        plusPDTap.numberOfTapsRequired = 1
        plusPD.addGestureRecognizer(plusPDTap)
        plusPD.addGestureRecognizer(plusPDLong)
        let minusPDTap = UITapGestureRecognizer(target: self, action: #selector (powerMINUS))
        let minusPDLong = UILongPressGestureRecognizer(target: self, action: #selector(powerMINUS))
        minusPDTap.numberOfTapsRequired = 1
        minusPD.addGestureRecognizer(minusPDTap)
        minusPD.addGestureRecognizer(minusPDLong)
        //WD//
        let plusWDTap = UITapGestureRecognizer(target: self, action: #selector (weaponPLUS))
        let plusWDLong = UILongPressGestureRecognizer(target: self, action: #selector(weaponPLUS))
        plusWDTap.numberOfTapsRequired = 1
        plusWD.addGestureRecognizer(plusWDTap)
        plusWD.addGestureRecognizer(plusWDLong)
        let minusWDTap = UITapGestureRecognizer(target: self, action: #selector (weaponMINUS))
        let minusWDLong = UILongPressGestureRecognizer(target: self, action: #selector(weaponMINUS))
        minusWDTap.numberOfTapsRequired = 1
        minusWD.addGestureRecognizer(minusWDTap)
        minusWD.addGestureRecognizer(minusWDLong)
        //View//
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
        sendInfo?.specialCText = "Fell Claeve"
    }
    //LP Actions//
    //Plus//
    @objc func lifePointsActionPlus(_ sender: Any) {
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
    @objc func lifePointsActionMinus(_ sender: Any) {
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
    //Defense Function//
    //Plus//
    @objc func defencePLUS(_ sender: Any) {
        if stateSP > 0 && stateDEF < 20 {
            minusDEF.isEnabled = true
            stateSP -= 1
            stateDEF += 1
            playerSP.text = "\(stateSP)"
            playerDEF.text = "\(stateDEF)"
        }else if stateDEF == 20 || stateSP == 0 {
            plusDEF.isEnabled = false
        }
    }
    //Minus//
    @objc func defenseMINUS(_ sender: Any) {
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
    @objc func powerPLUS(_ sender: Any) {
        if stateSP > 0 && statePD < 30 {
            minusPD.isEnabled = true
            stateSP -= 1
            statePD += 1
            playerSP.text = "\(stateSP)"
            playerPD.text = "\(statePD)"
        }else if statePD == 30 || stateSP == 0 {
            plusPD.isEnabled = false
        }
    }
    //Minus//
    @objc func powerMINUS(_ sender: Any) {
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
    @objc func weaponPLUS(_ sender: Any) {
        if stateSP > 0 && stateWD < 40 {
            minusWD.isEnabled = true
            stateSP -= 1
            stateWD += 1
            playerSP.text = "\(stateSP)"
            playerWD.text = "\(stateWD)"
        }else if stateWD == 40 || stateSP == 0 {
            plusWD.isEnabled = false
        }
    }
    //Minus//
    @objc func weaponMINUS(_ sender: Any) {
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
    @IBAction func goPlayer(_ sender: Any) {
        if stateSP == 0 {
        performSegue(withIdentifier: "goWarrior", sender: self)
        }else {
            showAlert()
        }
    }
    func showAlert() {
        let alert = UIAlertController(title: "You have Skill Points", message: "Use It", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in}))
        present(alert, animated: true)
    }
}
//Return Text Field Function//
extension KnightView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



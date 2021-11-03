import UIKit

class KnightView: UIViewController {
    //Text Field//
    @IBOutlet weak var warriorTextField: UITextField!
    //Buttons//
    @IBOutlet weak var pluseLP: UIButton!
    @IBOutlet weak var minusLP: UIButton!
    //Skill Points//
    @IBOutlet weak var warriorSkillPoints: UILabel!
    var stateWarriorSP = 150
    //----State----//
    //DEF//
    @IBOutlet weak var warriorDefense: UILabel!
    var stateWarriorDefense = 0
    //WD//
    @IBOutlet weak var warriorWeapon: UILabel!
    var stateWarriorWeapon = 0
    //PW//
    @IBOutlet weak var warriorPower: UILabel!
    var stateWarriorPower = 0
    //LP//
    @IBOutlet weak var warriorLifePoints: UILabel!
    var stateWarriorLifePoints = 0
    //Save//
    @IBOutlet weak var warriorSaveButton: UIButton!
//Override//------------
    override func viewDidLoad() {
        super.viewDidLoad()
        warriorTextField.delegate = self
        warriorSaveButton.layer.cornerRadius = 20
        warriorSkillPoints.text = "\(stateWarriorSP)"
    }
    //Go To Fight//
    @IBAction func knightToFight(_ sender: UIButton) {
        performSegue(withIdentifier: "fromKnight", sender: self)
    }
    //Send Function//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendWarriorInfo = segue.destination as? FightView
        sendWarriorInfo?.playerName = warriorTextField.text!
        sendWarriorInfo?.specialCValue = "100 Damage / +5(LP) / +10(WD)"
    }
    @IBAction func lifePointsActionPlus(_ sender: Any) {
    }
    @IBAction func lifePointsActionMinus(_ sender: Any) {
    }
    
    
}
extension KnightView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


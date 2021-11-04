import UIKit

class FightView: UIViewController {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rulleTheDice.layer.cornerRadius = 20
        playerNameLable.text = playerNL
        specialCLable.text = "\(specialCValue)"
        weaponDLable.text = "\(weaponDValue)"
        poweDLable.text = "\(powerDValue)"
        defenseLable.text = "\(defenseValue)"
        lifePLable.text = "\(lifePValue)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}

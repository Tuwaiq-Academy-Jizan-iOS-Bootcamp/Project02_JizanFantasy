import UIKit

class FightView: UIViewController {
    @IBOutlet weak var playerNameLable: UILabel!
    var playerName = ""
    @IBOutlet weak var specialCLable: UILabel!
    var specialCValue = ""
    @IBOutlet weak var weaponDLable: UILabel!
    var weaponDValue = ""
    @IBOutlet weak var poweDLable: UILabel!
    var powerDValue = ""
    @IBOutlet weak var defenseLable: UILabel!
    var defenseValue = ""
    @IBOutlet weak var lifePLable: UILabel!
    var lifePValue = ""
    @IBOutlet weak var rulleTheDice: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rulleTheDice.layer.cornerRadius = 20
        playerNameLable.text = playerName
        specialCLable.text = specialCValue
        weaponDLable.text = weaponDValue
        poweDLable.text = powerDValue
        defenseLable.text = defenseValue
        lifePLable.text = lifePValue
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}

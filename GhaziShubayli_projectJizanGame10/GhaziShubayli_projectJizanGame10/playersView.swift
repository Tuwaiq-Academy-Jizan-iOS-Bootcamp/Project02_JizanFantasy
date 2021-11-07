//
import UIKit

class NewPlayer: UIViewController {
    @IBOutlet weak var PlayerNameTF: UITextField!
    @IBOutlet weak var playerImage: UIImageView!
    var pImage = 0
    @IBOutlet weak var points: UILabel!
    var playerPoints = ""
    @IBOutlet weak var pLPValue: UITextField!
    @IBOutlet weak var pDFValue: UITextField!
    @IBOutlet weak var pPDValue: UITextField!
    @IBOutlet weak var pWDValue: UITextField!
    @IBOutlet weak var specialCapacity: UILabel!
    var playerSC = ""
    var playerSCBonusPD = ""
    var playerSCBonusWD = ""
    var playerSCBonusLP = ""
    @IBOutlet weak var fighterDescreption: UILabel!
    //Override
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    @IBAction func knight(_ sender: Any) {
        playerImage.image = UIImage(named: "Joko")
        pImage = 1
        playerPoints = "150"
        playerSC = "100"
        playerSCBonusPD = "0"
        playerSCBonusWD = "10"
        playerSCBonusLP = "5"
        points.text = playerPoints
        specialCapacity.text = "\(playerSC)Damage / +\(playerSCBonusWD)WD / +\(playerSCBonusPD)PD / +\(playerSCBonusLP)LP"
        fighterDescreption.text = "When Knight use his SC he will delever a massive 100 Damage to his opponent and recover a small amont of life points +5LP and increas his weapon damage by +10WD"
    }
    @IBAction func wizard(_ sender: Any) {
        playerImage.image = UIImage(named: "Joko")
        pImage = 2
        playerPoints = "195"
        playerSC = "50"
        playerSCBonusPD = "10"
        playerSCBonusWD = "0"
        playerSCBonusLP = "35"
        points.text = playerPoints
        specialCapacity.text = "\(playerSC)Damage / +\(playerSCBonusWD)WD / +\(playerSCBonusPD)PD / +\(playerSCBonusLP)LP"
        fighterDescreption.text = "When Wizard use his SC he will do a 50 Damage to his opponent and recover a larg amont of life points +35LP and increas his power damage by +10PD"
    }
    @IBAction func thief(_ sender: Any) {
        playerImage.image = UIImage(named: "Joko")
        pImage = 3
        playerPoints = "135"
        playerSC = "75"
        playerSCBonusPD = "0"
        playerSCBonusWD = "35"
        playerSCBonusLP = "5"
        points.text = playerPoints
        fighterDescreption.text = "When Thief use his SC he will delever a 75 Damage to his opponent and recover a small of life points +5LP and greatly increas his power damage by +35PD"
    }

    //Player Info........//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {     let playerData = segue.destination as? ViewController
        playerData?.pImage = pImage
        playerData?.playerName.text = PlayerNameTF.text!
        playerData?.pWDLable.text = pWDValue.text!
        playerData?.pDFLable.text = pDFValue.text!
        playerData?.pPDLable.text = pPDValue.text
        playerData?.pLPLable.text = pLPValue.text!
        playerData?.pSCLable.text = specialCapacity.text
        playerData?.pSCDamage = playerSC
        playerData?.pSCBonusLP = playerSCBonusLP
        playerData?.pSCBonusPD = playerSCBonusPD
        playerData?.pSCBonusWD = playerSCBonusWD
    }
    
    //Fonction To Close The Daim Keyboard
    @objc func closeKeyboard() {
        self.view.endEditing(true)
    }
}

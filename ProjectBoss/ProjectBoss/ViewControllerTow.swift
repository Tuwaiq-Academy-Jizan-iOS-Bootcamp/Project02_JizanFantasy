//
//  ViewControllerTow.swift
//  ProjectBoss
//
//  Created by يوسف جابر المالكي on 28/03/1443 AH.
//

import UIKit
class ViewControllerTow: UIViewController {
    @IBOutlet weak var save1: UIButton!
    @IBOutlet weak var goToFight: UIButton!
    @IBOutlet weak var selectPlayer: UIPickerView!
    let classeArray = ["knight","Wizard","thief"]
    @IBOutlet weak var playerName1: UITextField!
    @IBOutlet weak var playerImage1: UIImageView!
    var pImage = 0
    @IBOutlet weak var point1: UILabel!
    var playerPoint = 0
    var playerMaxDefance = 0
    var playerMaxPowerDamage = 0
    var playerMaxWD = 0
    var playerMaxPoints = 0
    @IBOutlet weak var maxpoints: UILabel!
    @IBOutlet weak var playerLifePoints: UITextField!
    @IBOutlet weak var playerDefence: UITextField!
    @IBOutlet weak var playerPowerDamge: UITextField!
    @IBOutlet weak var playerWeaponDamage: UITextField!
    var lpPlayer = 0
    var dFPlayer = 0
    var pDPlayer = 0
    var wDPlayer = 0
    var playerSC = 0
    var playerSCBonusPD = 0
    var playerSCBonusWD = 0
    var playerSCBonusLP = 0
    var pSCFightComment = ""
    @IBOutlet weak var specialCapacity1: UILabel!
    //Override
    override func viewDidLoad() {
        super.viewDidLoad()
        selectPlayer.delegate = self
        selectPlayer.dataSource = self
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        self.view.addGestureRecognizer(tap)
        knight()
        goToFight.isEnabled = false
        save1.isEnabled = false
    }
    @IBAction func lifePoints(_ sender: Any) {
        if let state = Int(playerLifePoints.text!) {
            if state > playerPoint {
                notEnoughPoints()
            }else{
                lpPlayer = state
                playerPoint -= state
                point1.text = "\(playerPoint)"
                playerLifePoints.isEnabled = false
                save1.isEnabled = true
            }
        }
    }
    @IBAction func deffense(_ sender: Any) {
        if let state = Int(playerDefence.text!) {
            if state > playerPoint {
                notEnoughPoints()
            }else if state > playerMaxDefance {
                aboveTheMax()
            }else{
                dFPlayer = state
                playerPoint -= state
                point1.text = "\(playerPoint)"
                playerDefence.isEnabled = false
                save1.isEnabled = true
            }
        }
    }
    @IBAction func powerDamage(_ sender: Any) {
        if let state = Int(playerPowerDamge.text!) {
            if state > playerPoint {
                notEnoughPoints()
            }else if state > playerMaxPowerDamage {
                aboveTheMax()
            }else{
                pDPlayer = state
                playerPoint -= state
                point1.text = "\(playerPoint)"
                playerPowerDamge.isEnabled = false
                save1.isEnabled = true
            }
        }
    }
    @IBAction func weaponDamage(_ sender: Any) {
        if let state = Int(playerWeaponDamage.text!) {
            if state > playerPoint {
                notEnoughPoints()
            }else if state > playerMaxWD {
                aboveTheMax()
            }else{
                wDPlayer = state
                playerPoint -= state
                point1.text = "\(playerPoint)"
                playerWeaponDamage.isEnabled = false
                save1.isEnabled = true
            }
        }
    }
    @IBAction func Reset(_ sender: Any) {
        resetState()
        save1.isEnabled = false
    }
    @IBAction func saveTheState(_ sender: Any) {
        if let state = Int(playerLifePoints.text!), let state2 = Int(playerDefence.text!), let state3 = Int(playerPowerDamge.text!), let state4 = Int(playerWeaponDamage.text!) {
            let maxTextField = state + state2 + state3 + state4
            let stateThatSend = lpPlayer + dFPlayer + pDPlayer + wDPlayer
            if maxTextField == playerMaxPoints && stateThatSend == playerMaxPoints {
                goToFight.isEnabled = true
            }else {
                youCantGo()
            }
        }
    }
    //Player Info........ (((SEGUE)))//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let playerData = segue.destination as? ViewController
        playerData?.playerName.text = playerName1.text
        playerData?.pLPoints = lpPlayer
        playerData?.pDefense = dFPlayer
        playerData?.pPDamage = pDPlayer
        playerData?.pWDamage = wDPlayer
        playerData?.pSCDamage = playerSC
        playerData?.pSCBonusLP = playerSCBonusLP
        playerData?.pSCBonusPD = playerSCBonusPD
        playerData?.pSCBonusWD = playerSCBonusWD
        playerData?.playerSpicalCabasity.text = pSCFightComment
        playerData?.playerUImage.image = playerImage1.image
        playerData?.playerLifePoint.text = playerLifePoints.text
        playerData?.playerDefenc.text = playerDefence.text
        playerData?.playerPoewrDamage.text = playerPowerDamge.text
        playerData?.playerWeaponDamage.text = playerWeaponDamage.text
    }
    //Fonction To Close The Daim Keyboard
    @objc func closeKeyboard() {
        self.view.endEditing(true)
    }
    func notEnoughPoints() {
        let alert = UIAlertController(title: "Not Enough Points", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in}))
        present(alert, animated: true)
    }
    func aboveTheMax() {
        let alert = UIAlertController(title: "Sorry Above The Max", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in}))
        present(alert, animated: true)
    }
    func youCantGo() {
        let alert = UIAlertController(title: "Please Check Your Points", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in}))
        present(alert, animated: true)
    }
    func resetState() {
        if pImage == 1 {
            knight()
        }else if pImage == 2 {
            wizard()
        }else {
            thief()
        }
    }
    func knight() {
        playerLifePoints.isEnabled = true
        playerWeaponDamage.isEnabled = true
        playerPowerDamge.isEnabled = true
        playerDefence.isEnabled = true
        playerImage1.image = UIImage(named: "knight")
        pImage = 1
        playerMaxPoints = 150
        playerPoint = 150
        playerMaxDefance = 20
        playerMaxPowerDamage = 30
        playerMaxWD = 40
        playerSC = 100
        playerSCBonusPD = 0
        playerSCBonusWD = 10
        playerSCBonusLP = 5
        maxpoints.text = "Max(DF)20 Max(PD)30 Max(WD)40"
        point1.text = "\(playerPoint)"
        pSCFightComment = "\(playerSCBonusPD)PD / \(playerSCBonusWD)WD / \(playerSCBonusLP)LP"
        specialCapacity1.text = "When Knight use his SC he will delever a massive 100 Damage to his opponent and recover a small amont of life points +5LP and increas his weapon damage by +10WD"
        
    }
    func wizard() {
        playerLifePoints.isEnabled = true
        playerWeaponDamage.isEnabled = true
        playerPowerDamge.isEnabled = true
        playerDefence.isEnabled = true
        playerImage1.image = UIImage(named: "Wizard")
        pImage = 2
        playerMaxPoints = 195
        playerPoint = 195
        playerMaxDefance = 15
        playerMaxPowerDamage = 70
        playerMaxWD = 20
        playerSC = 50
        playerSCBonusPD = 10
        playerSCBonusWD = 0
        playerSCBonusLP = 35
        point1.text = "\(playerPoint)"
        maxpoints.text = "Max(DF)15 Max(PD)70 Max(WD)20"
        pSCFightComment = "\(playerSCBonusPD)PD / \(playerSCBonusWD)WD / \(playerSCBonusLP)LP"
        specialCapacity1.text = "When Wizard use his SC he will do a 50 Damage to his opponent and recover a larg amont of life points +35LP and increas his power damage by +10PD"
        
    }
    func thief() {
        playerLifePoints.isEnabled = true
        playerWeaponDamage.isEnabled = true
        playerPowerDamge.isEnabled = true
        playerDefence.isEnabled = true
        playerImage1.image = UIImage(named: "thief")
        pImage = 3
        playerMaxPoints = 135
        playerPoint = 135
        playerMaxDefance = 25
        playerMaxPowerDamage = 15
        playerMaxWD = 30
        playerSC = 75
        playerSCBonusPD = 0
        playerSCBonusWD = 35
        playerSCBonusLP = 5
        point1.text = "\(playerPoint)"
        maxpoints.text = "Max(DF)25 Max(PD)15 Max(WD)30"
        pSCFightComment = "\(playerSCBonusPD)PD / \(playerSCBonusWD)WD / \(playerSCBonusLP)LP"
        specialCapacity1.text = "When Thief use his SC he will delever a 75 Damage to his opponent and recover a small of life points +5LP and greatly increas his power damage by +35PD"
    }
}
extension ViewControllerTow: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return classeArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return classeArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if selectPlayer.selectedRow(inComponent: 0) == 0 {
            knight()
        }else if selectPlayer.selectedRow(inComponent: 0) == 1 {
            wizard()
        }else {
            thief()
        }
    }
}
//end...........


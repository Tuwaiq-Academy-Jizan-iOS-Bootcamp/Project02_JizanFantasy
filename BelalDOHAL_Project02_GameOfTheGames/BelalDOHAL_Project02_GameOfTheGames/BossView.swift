struct Boss {
    var name:String
    var weaponD:Int
    var PowerD:Int
    var specialDamage:Int
    var lifeP:Int
    var defense:Int
    var specialText:String
    var BSCBonusWD:Int
    var BSCBonusPD:Int
    var BSCBonusLP:Int
}
import UIKit
class BossView: UIViewController {
    //Outlet Go Button//
    @IBOutlet weak var challengMeMortal: UIButton!
    //Player Info//
    var sCValue = 0
    var sCBonusWD = 0
    var sCBonusPD = 0
    var sCBonusLP = 0
    var playerNL = ""
    var pImage = 0
    var specialCText = ""
    var weaponDValue = 0
    var powerDValue = 0
    var defenseValue = 0
    var lifePValue = 0
    //Boss Info//
    @IBOutlet weak var bossShow: UIImageView!
    @IBOutlet weak var bossComment: UILabel!
    var randomBoss = Int.random(in: 1...2)
    var boss1 = Boss(name: "Ravana", weaponD: 45, PowerD: 20, specialDamage: 110, lifeP: 250, defense: 30, specialText: "1000 Blade", BSCBonusWD: 22, BSCBonusPD: 0, BSCBonusLP: 5)
    var boss2 = Boss(name: "Dargon", weaponD: 30, PowerD: 15, specialDamage: 75, lifeP: 170, defense: 25, specialText: "Chaotic Fire", BSCBonusWD: 0, BSCBonusPD: 32, BSCBonusLP: 5)
    //Override//
    override func viewDidLoad() {
        super.viewDidLoad()
        challengMeMortal.layer.cornerRadius = 20
        if randomBoss == 1 {
            bossShow.image = UIImage(named: "Ravana")
            bossComment.text = """
1000 Blade(Special Capacity)
ravana charge his blades and delever a multible fast hits..
you will not even know how many time he cut you
"""
        }else {
            bossShow.image = UIImage(named: "Dragon")
            bossComment.text = """
Chaotic Fire(Special Capacity)
charging a great fire ball that melt everything on her way
it's almost like standing on the sun
"""
        }
    }
    //Send Function//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendInfo = segue.destination as? FightView
        sendInfo?.sCValue = sCValue
        sendInfo?.sCBonusWD = sCBonusWD
        sendInfo?.sCBonusPD = sCBonusPD
        sendInfo?.sCBonusLP = sCBonusLP
        sendInfo?.pImage = pImage
        sendInfo?.specialCText = specialCText
        sendInfo?.weaponDValue = weaponDValue
        sendInfo?.powerDValue = powerDValue
        sendInfo?.defenseValue = defenseValue
        sendInfo?.lifePValue = lifePValue
        sendInfo?.playerNL = playerNL
        //Boss State//
        if randomBoss == 1 {
            sendInfo?.bossName = boss1.name
            sendInfo?.bossImage = randomBoss
            sendInfo?.bStateLP = boss1.lifeP
            sendInfo?.bStatePD = boss1.PowerD
            sendInfo?.bStateSCD = boss1.specialDamage
            sendInfo?.bStateSCWD = boss1.BSCBonusWD
            sendInfo?.bStateSCPD = boss1.BSCBonusPD
            sendInfo?.bStateSCLP = boss1.BSCBonusLP
            sendInfo?.bStateDEF = boss1.defense
            sendInfo?.bStateWD = boss1.weaponD
            sendInfo?.btextSC = boss1.specialText
        }else{
            sendInfo?.bossName = boss2.name
            sendInfo?.bossImage = randomBoss
            sendInfo?.bStateLP = boss2.lifeP
            sendInfo?.bStatePD = boss2.PowerD
            sendInfo?.bStateSCD = boss2.specialDamage
            sendInfo?.bStateSCWD = boss2.BSCBonusWD
            sendInfo?.bStateSCPD = boss2.BSCBonusPD
            sendInfo?.bStateSCLP = boss2.BSCBonusLP
            sendInfo?.bStateWD = boss2.weaponD
            sendInfo?.bStateDEF = boss2.defense
            sendInfo?.btextSC = boss2.specialText
        }
    }
}

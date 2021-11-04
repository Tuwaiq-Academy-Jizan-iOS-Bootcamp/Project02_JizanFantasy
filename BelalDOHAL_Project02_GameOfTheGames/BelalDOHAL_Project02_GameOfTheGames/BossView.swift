struct Boss {
    var name:String
    var weaponD:Int
    var PowerD:Int
    var specialC:Int
    var lifeP:Int
    var defense:Int
    var specialEffect:String
}
import UIKit
class BossView: UIViewController {
    //Outlet Go Button//
    @IBOutlet weak var challengMeMortal: UIButton!
    //Player Info//
    var playerNL = ""
    var playerImage = 0
    var specialCValue = ""
    var weaponDValue = 0
    var powerDValue = 0
    var defenseValue = 0
    var lifePValue = 0
    //Boss Info//
    @IBOutlet weak var bossShow: UIImageView!
    var randomBoss = Int.random(in: 1...2)
    var boss1 = Boss(name: "Ravana", weaponD: 45, PowerD: 20, specialC: 110, lifeP: 250, defense: 30, specialEffect: "Ravana Ultimate")
    var boss2 = Boss(name: "Dragoon", weaponD: 30, PowerD: 15, specialC: 75, lifeP: 170, defense: 25, specialEffect: "Dragoon Uitimate")
    //Override//
    override func viewDidLoad() {
        super.viewDidLoad()
        challengMeMortal.layer.cornerRadius = 20
        if randomBoss == 1 {
            bossShow.image = UIImage(named: "Ravana")
        }else {
            bossShow.image = UIImage(named: "Dragon")
        }
    }
    //Send Function//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sendInfo = segue.destination as? FightView
        sendInfo?.playerImage = playerImage
        sendInfo?.specialCValue = specialCValue
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
            sendInfo?.bStateSC = boss1.specialC
            sendInfo?.bStateDEF = boss1.defense
            sendInfo?.bStateWD = boss1.weaponD
            sendInfo?.btextSC = boss1.specialEffect
        }else{
            sendInfo?.bossName = boss2.name
            sendInfo?.bossImage = randomBoss
            sendInfo?.bStateLP = boss2.lifeP
            sendInfo?.bStatePD = boss2.PowerD
            sendInfo?.bStateSC = boss2.specialC
            sendInfo?.bStateWD = boss1.weaponD
            sendInfo?.bStateDEF = boss2.defense
            sendInfo?.btextSC = boss2.specialEffect
        }
    }
}

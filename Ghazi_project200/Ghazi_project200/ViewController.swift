import UIKit
struct Players {
    var Name:String
    var lifePoints:String
    var defense:String
    var powerDamage:String
    var weaponDamage:String
    var specialCapacity:String
    var specialCBonusPD:String
    var specialCBonusWD:String
    var specialCBonusLP:String
}
class ViewController: UIViewController {
    //Player Info... ((((SEGUE))))............
    var pImage = 0
    @IBOutlet weak var pUImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var pLPLable: UILabel!
    @IBOutlet weak var pDFLable: UILabel!
    @IBOutlet weak var pPDLable: UILabel!
    @IBOutlet weak var pWDLable: UILabel!
    @IBOutlet weak var pSCLable: UILabel!
    //Boss Info.........................
    let randomBoss = Int.random(in: 1...2)
    var boss1 = Players(Name: "First Boss Name", lifePoints: "250", defense: "30", powerDamage: "20", weaponDamage: "45", specialCapacity: "110", specialCBonusPD: "0", specialCBonusWD: "22", specialCBonusLP: "5")
    var boss2 = Players(Name: "Second Boss Name", lifePoints: "170", defense: "25", powerDamage: "15", weaponDamage: "30", specialCapacity: "75", specialCBonusPD: "32", specialCBonusWD: "0", specialCBonusLP: "5")
    @IBOutlet weak var bossImage: UIImageView!
    @IBOutlet weak var bossName: UILabel!
    @IBOutlet weak var bossLP: UILabel!
    @IBOutlet weak var bossDF: UILabel!
    @IBOutlet weak var bossPD: UILabel!
    @IBOutlet weak var bossWD: UILabel!
    @IBOutlet weak var bossSC: UILabel!
    //To Show First...........
    override func viewDidLoad() {
        super.viewDidLoad()
        if pImage == 1 {
            pUImage.image = UIImage(named: "image1")
        }else if pImage == 2 {
            pUImage.image = UIImage(named: "image2")
        }else{
            pUImage.image = UIImage(named: "image1")
            
        }
        if randomBoss == 1 {
            bossImage.image = UIImage(named: "Boss")
            bossName.text = boss1.Name
            bossLP.text = boss1.lifePoints
            bossDF.text = boss1.defense
            bossPD.text = boss1.powerDamage
            bossWD.text = boss1.weaponDamage
            bossSC.text = "\(boss1.specialCapacity)Damage / +\(boss1.specialCBonusWD)WD / +\(boss1.specialCBonusPD)PD / +\(boss1.specialCBonusLP)LP"
        }else {
            bossImage.image = UIImage(named: "Boss")
            bossName.text = boss2.Name
            bossLP.text = boss2.lifePoints
            bossDF.text = boss2.defense
            bossPD.text = boss2.powerDamage
            bossWD.text = boss2.weaponDamage
            bossSC.text = "\(boss2.specialCapacity) Damage / +\(boss2.specialCBonusWD)WD / +\(boss2.specialCBonusPD)PD / +\(boss2.specialCBonusLP)LP"
        }
    }
    //Unwine....
    @IBAction func getBack(segue:UIStoryboardSegue){
    }
}


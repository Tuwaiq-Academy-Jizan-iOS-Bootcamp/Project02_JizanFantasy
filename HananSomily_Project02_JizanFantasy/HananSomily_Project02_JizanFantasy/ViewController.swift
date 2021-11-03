//
//  ViewController.swift
//  HananSomily_Project02_JizanFantasy
//
//  Created by Hanan Somily on 03/11/2021.
//

import UIKit
struct Player{
    var name : String
    var lifePoint :Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var specialCapacity : Int
    var specialLP : Int
    var specialPD:Int
    //func lp
    mutating func power (){}
}
class ViewController: UIViewController {
    
    // player1
    @IBOutlet weak var nameOfPlayr1Labl: UILabel!
    @IBOutlet weak var lpOfPlayr1Labl: UILabel!
    @IBOutlet weak var dfOfPlayr1Labl: UILabel!
    @IBOutlet weak var pdOfPlayr1Labl: UILabel!
    @IBOutlet weak var wdOfPlayer1Labl: UILabel!
    @IBOutlet weak var scOfPlayer1Labl: UILabel!
    //player 2
    
    @IBOutlet weak var nameOfPlayr2labl: UILabel!
    @IBOutlet weak var lpOfPlayer2Labl: UILabel!
    @IBOutlet weak var dfOfPlayr2labl: UILabel!
    @IBOutlet weak var pdOfPlayer2labl: UILabel!
    @IBOutlet weak var wdOfPlayr2labl: UILabel!
    @IBOutlet weak var scOfPlayer2Labl: UILabel!
 
   // var playr2DF = Int(dfOfPlayr2labl.text ?? "0")
    
    //description of playground
    @IBOutlet weak var discriptionOfActionTextView: UITextView!
    //dice
    @IBOutlet weak var diceNumberLabl: UILabel!
    
    var boss1 = Player(name: "Boss1", lifePoint: 250, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110, specialLP: 5, specialPD: 22)
    var boss2 = Player(name: "Boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75, specialLP: 5, specialPD: 32)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var playr2LP : Int? = Int(lpOfPlayer2Labl.text ?? "")
        var playr1LP : Int? = Int(lpOfPlayr1Labl.text ?? "")
        var playr2DF : Int? = Int(dfOfPlayr2labl.text ?? "")
        var playr1DF : Int? = Int(dfOfPlayr1Labl.text ?? "")
        var playr1PD : Int? = Int(pdOfPlayr1Labl.text ?? "")
        var playr2PD : Int? = Int(pdOfPlayer2labl.text ?? "")
        var playr1WD : Int? = Int(wdOfPlayer1Labl.text ?? "")
        var playr2WD : Int? = Int(wdOfPlayr2labl.text ?? "")
        var playr2SC : Int? = Int(wdOfPlayr2labl.text ?? "")
        var playr1SC : Int? = Int(scOfPlayer1Labl.text ?? "")
    }
    @IBAction func goTo(_ sender: Any) {
        performSegue(withIdentifier: "send", sender: self)
    }

    @IBAction func chngeDiceNumber(_ sender: UIButton) {
        let diceNumber = Int.random(in: 1...20)
        diceNumberLabl.text = String(diceNumber)
        //sender.titleLabel
        
    }
    @IBAction func selectPlayr1Button(_ sender: Any) {
        selectPlayr1()
    }
    func selectPlayr1(){
        let num = Int.random(in: 1...2)
        if num == 1{
            nameOfPlayr1Labl.text = boss1.name
            lpOfPlayr1Labl.text = String( boss1.lifePoint)
            dfOfPlayr1Labl.text = String( boss1.defense)
            pdOfPlayr1Labl.text = String( boss1.powerDamage)
            wdOfPlayer1Labl.text = String(boss1.weaponDamage)
            scOfPlayer1Labl.text = "+ 5 LP & + 22 WD"
        }
        if num == 2{
            nameOfPlayr1Labl.text = boss2.name
            lpOfPlayr1Labl.text = String( boss2.lifePoint)
            dfOfPlayr1Labl.text = String( boss2.defense)
            pdOfPlayr1Labl.text = String( boss2.powerDamage)
            wdOfPlayer1Labl.text = String(boss2.weaponDamage)
            scOfPlayer1Labl.text = "+ 5 LP & + 32 PD"
        }
    }
    @IBAction func backTo(segue:UIStoryboardSegue){
        
    }
    func poweAttack(){
       
    }
    func weaponAttack(){
        
    }
    func specialAttack(){
        
    }
    func attackReselt(){
    var attck = 0
    if attck >= 0{
        attck = 0 }}
    func actionAttack1(){
        let diceRoll = Int.random(in: 1...20)
        //print dice
      
       
        switch diceRoll{
        case 1...9:
            attck =
            boss1.lifePoint = boss1.lifePoint - attck
        case 10...19:
        case 20:
        default:
        }
    }
}


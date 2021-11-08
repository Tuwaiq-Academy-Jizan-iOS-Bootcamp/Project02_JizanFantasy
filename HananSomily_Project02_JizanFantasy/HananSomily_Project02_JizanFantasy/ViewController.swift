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
    var specialWD :Int
    var specialPD :Int
    //func lp
    mutating func power (){}
}
class ViewController: UIViewController {
    
    @IBOutlet weak var imagePlayer1: UIImageView!
    @IBOutlet weak var imagePlayer2: UIImageView!
    
    @IBOutlet weak var roolButton: UIButton!
    
    // player1
    @IBOutlet weak var nameOfPlayr1Labl: UILabel!
    @IBOutlet weak var lpOfPlayr1Labl: UILabel!
    @IBOutlet weak var dfOfPlayr1Labl: UILabel!
    @IBOutlet weak var pdOfPlayr1Labl: UILabel!
    @IBOutlet weak var wdOfPlayer1Labl: UILabel!
    @IBOutlet weak var scOfPlayer1Labl: UILabel!
//    var playr1LP : Int?
//    var playr1DF : Int?
//    var playr1PD : Int?
//    var playr1WD : Int?
//    var playr1SC : Int?
    
    //player 2
    @IBOutlet weak var nameOfPlayr2labl: UILabel!
    @IBOutlet weak var lpOfPlayer2Labl: UILabel!
    @IBOutlet weak var dfOfPlayr2labl: UILabel!
    @IBOutlet weak var pdOfPlayer2labl: UILabel!
    @IBOutlet weak var wdOfPlayr2labl: UILabel!
    @IBOutlet weak var scOfPlayer2Labl: UILabel!
//    var playr2LP : Int?
//    var playr2DF : Int?
//    var playr2PD : Int?
//    var playr2WD : Int?
//    var playr2SC : Int?

    var spichalCapacityPD = 0
    var spichalCapacityWD = 0
    var spichalCapacityLP = 0
    //description of playground
    @IBOutlet weak var discriptionOfActionTextView: UITextView!
    //dice
    @IBOutlet weak var diceNumberLabl: UILabel!
    
    var boss1 = Player(name: "Boss1", lifePoint: 250, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110, specialLP: 5, specialWD: 22, specialPD: 0)
    var boss2 = Player(name: "Boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75, specialLP: 5, specialWD: 0, specialPD: 32)
    var sFlag = false
    var winner = false
    var turn = 0
    var bossSCLP = 0
    var bossSCPD = 0
    var bossSCWD = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        selectPlayr1()
        //imagePlayer1.image = UIImage(name: bosss1)
        // Do any additional setup after loading the view.
//         playr2LP! = Int(lpOfPlayer2Labl.text ?? "")
//         playr1LP = Int(lpOfPlayr1Labl.text ?? "")
//         playr2DF = Int(dfOfPlayr2labl.text ?? "")
//         playr1DF = Int(dfOfPlayr1Labl.text ?? "")
//         playr1PD = Int(pdOfPlayr1Labl.text ?? "")
//         playr2PD = Int(pdOfPlayer2labl.text ?? "")
//         playr1WD = Int(wdOfPlayer1Labl.text ?? "")
//         playr2WD = Int(wdOfPlayr2labl.text ?? "")
//         playr2SC = Int(wdOfPlayr2labl.text ?? "")
//         playr1SC = Int(scOfPlayer1Labl.text ?? "")
    }
    @IBAction func goTo(_ sender: Any) {
        performSegue(withIdentifier: "send", sender: self)
    }

    @IBAction func chngeDiceNumber(_ sender: UIButton) {
        let diceNumber = Int.random(in: 1...20)

        //diceNumberLabl.text = String(diceNumber)
        let  playr2N = String(nameOfPlayr2labl.text ?? "")
        let  playr1N = String(nameOfPlayr1Labl.text ?? "")
        var  playr2LP = Int(lpOfPlayer2Labl.text!)!
        var  playr1LP = Int(lpOfPlayr1Labl.text!)!
        let  playr2DF = Int(dfOfPlayr2labl.text!)!
        let  playr1DF = Int(dfOfPlayr1Labl.text!)!
        var  playr1PD = Int(pdOfPlayr1Labl.text!)!
        var  playr2PD = Int(pdOfPlayer2labl.text!)!
        var  playr1WD = Int(wdOfPlayer1Labl.text!)!
        var  playr2WD = Int(wdOfPlayr2labl.text!)!
        let  playr2SC = Int(scOfPlayer2Labl.text!)!
        let  playr1SC = Int(scOfPlayer1Labl.text!)!
       // sFlag = false
        if winner == false {
            bossSCLP = 0
            bossSCPD = 0
            bossSCWD = 0
            spichalCapacityLP = 0
            spichalCapacityWD = 0
            spichalCapacityPD = 0
        turn += 1
            winner = true
            diceNumberLabl.text = String(turn)

        discriptionOfActionTextView.text += "♧ This is the start of turn \(turn)♧\n"
        discriptionOfActionTextView.text += (" -- 🎲🎲Roll Dice\(diceNumber)🎲🎲 -- \n ")
sFlag = false
          print("dice \(diceNumber)")
          //print dice
          switch diceNumber{
          case 1...9:
              playr2PD += spichalCapacityPD
              sFlag = false
              var reselt = ( playr1DF - ( playr2PD + spichalCapacityPD ))
              if( reselt >= 0 ){ reselt = 0 }
              playr1LP += reselt
              if playr1LP <= 0 { playr1LP = 0 }
              print(reselt , playr1LP)
              lpOfPlayr1Labl.text = String(playr1LP)
              print("player1 Power ")
              discriptionOfActionTextView.text += ("\(playr2N) Use Power Damage ⚒︎ \(playr2PD) and \(playr1N) Use Defense \(playr1DF),,, life point \(playr1LP) For \(playr1N)\n")
//
          case 10...19:
              playr2WD += spichalCapacityWD
              sFlag = false
              var reselt = ( playr1DF - ( playr2WD + spichalCapacityWD ))
              if( reselt >= 0 ){ reselt = 0 }
              playr1LP += reselt
              if playr1LP <= 0 { playr1LP = 0 }
              print(reselt , playr1LP)
              lpOfPlayr1Labl.text = String(playr1LP)
              print("player1 weapon")
              discriptionOfActionTextView.text += ( "\(playr2N) Use Weapon Damage ⚔︎ \(playr2WD) And \(playr1N) Use Defense \(playr1DF),,, life Point \(playr1LP) For \(playr1N)\n")


          case 20:
              var reselt4 = playr1DF - playr2SC
              if( reselt4 >= 0 ){
                 reselt4 = 0
              }
              playr1LP += reselt4
              if playr1LP <= 0 {
                  playr1LP = 0
              }
              playr2LP += spichalCapacityLP
              //playr2PD += spichalCapacityPD
              //playr2WD += spichalCapacityWD
              sFlag = true
              lpOfPlayr1Labl.text = String(playr1LP)
              discriptionOfActionTextView.text += ("\(playr2N) Use Special Capacity ☢︎☠︎ \(playr2SC) And \(playr1N) Use Defense \(playr1DF) ,,, life Point \(playr2LP)for \(playr2N) And life Point \(playr1LP)for \(playr1N)\n")
          default:
             print( "OPS")
          }
            discriptionOfActionTextView.text += ("------------------------------------\n")
            
            winner = false
            let diceNumber1 = Int.random(in: 1...20)
            discriptionOfActionTextView.text += (" -- 🎲🎲Roll Dice\(diceNumber1)🎲🎲 -- \n ")
            print(diceNumber)
            //var sFlag = false

        switch diceNumber1{
        case 1...9:
            playr1PD += bossSCPD
            sFlag = false
            var reselt1 = ( playr2DF - ( playr1PD + bossSCPD))
            if( reselt1 >= 0 ){ reselt1 = 0 }
            playr2LP += reselt1
            if playr2LP <= 0 { playr2LP = 0 }
            print(reselt1 , playr2LP)
            lpOfPlayer2Labl.text = String(playr2LP)
            
            discriptionOfActionTextView.text += ("\(playr1N) Use Power Damage ⚒︎ \(playr1PD) and \(playr2N) Use Defense \(playr2DF),,, life point \(playr2LP) For \(playr2N)\n")
            print("playr2 power")
        case 10...19:

            playr1WD += bossSCWD
            sFlag = false
            var reselt1 = ( playr2DF - (playr1WD + bossSCWD ))
            if( reselt1 >= 0 ){ reselt1 = 0 }
            playr2LP += reselt1
            if playr2LP <= 0 { playr2LP = 0 }
            print(reselt1 , playr2LP)
            lpOfPlayer2Labl.text = String(playr2LP)
            discriptionOfActionTextView.text += ("\(playr1N) Use Weapon Damage ⚔︎ \(playr1WD) And \(playr2N) Use Defense \(playr2DF),,, life Point \(playr2LP) For \(playr2N)\n")
            print("playr2 weapon")

        case 20:

            var reselt5 = playr2DF - playr1SC
            if( reselt5 >= 0 ){
               reselt5 = 0
            }
            playr2LP += reselt5
            if playr2LP <= 0 {
                playr2LP = 0
            }
            playr1LP += bossSCLP
            //playr1WD += bossSCWD
            //playr1PD += bossSCPD

            sFlag = true
            lpOfPlayer2Labl.text = String(playr2LP)
            discriptionOfActionTextView.text += ("\(playr1N) Use Special Capacity ☢︎☠︎ \(playr1SC) And \(playr2N) Use Defense \(playr2DF),,, life Point \(playr2LP)for \(playr2N) And life Point \(playr1LP)for \(playr1N)\n")
         
            print(reselt5 , playr2LP)

        default:
           print( "OPS")
        }
            discriptionOfActionTextView.text += ("------------------------------------\n")
        }
        //turn += 1
        if (playr1LP <= 0) {
            discriptionOfActionTextView.text += ("\n◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉\n")
            discriptionOfActionTextView.text += ("************ ⚑ ⚑ ⚑ ⚑ ⚑ ***********\n")
            discriptionOfActionTextView.text += ("🎉🎉\(playr2N) Is a Winner 🎉🎉\n")
            discriptionOfActionTextView.text += ("*********************************\n")
            discriptionOfActionTextView.text += (" ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉\n")

            winner = true
            roolButton.isEnabled = false

        }
        if (playr2LP <= 0) {
            discriptionOfActionTextView.text += ("\n◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉\n")
            discriptionOfActionTextView.text += ("************ ⚑ ⚑ ⚑ ⚑ ⚑ ***********\n")
            discriptionOfActionTextView.text += (" 🎉🎉\(playr1N) Is a Winner 🎉🎉 \n")
            discriptionOfActionTextView.text += ("*********************************\n")
            discriptionOfActionTextView.text += (" ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉ ◉\n")


            winner = true
            roolButton.isEnabled = false

        }
        discriptionOfActionTextView.text +=
            "_This is the end of turn \(turn)_\n"
        discriptionOfActionTextView.text += "_→→→→→→→→→→→→→→←←←←←←←←←←←←←\n"
            
        //}
    }
  
    func selectPlayr1(){
        let num = Int.random(in: 1...2)
        if num == 1{
            imagePlayer1.image = UIImage(named: "bosss1")
         
            nameOfPlayr1Labl.text = boss1.name
            lpOfPlayr1Labl.text = String( boss1.lifePoint)
            dfOfPlayr1Labl.text = String( boss1.defense)
            pdOfPlayr1Labl.text = String( boss1.powerDamage)
            wdOfPlayer1Labl.text = String(boss1.weaponDamage)
            scOfPlayer1Labl.text = String(boss1.specialCapacity)
            bossSCLP = boss1.specialLP
            bossSCPD = boss1.specialPD
            bossSCWD = boss1.specialWD
            //"+ 5 LP & + 22 WD"
        }
        if num == 2{
            imagePlayer1.image = UIImage(named: "bosss2")
            nameOfPlayr1Labl.text = boss2.name
            lpOfPlayr1Labl.text = String( boss2.lifePoint)
            dfOfPlayr1Labl.text = String( boss2.defense)
            pdOfPlayr1Labl.text = String( boss2.powerDamage)
            wdOfPlayer1Labl.text = String(boss2.weaponDamage)
            scOfPlayer1Labl.text = String(boss2.specialCapacity)
            bossSCLP = boss2.specialLP
            bossSCPD = boss2.specialPD
            bossSCWD = boss2.specialWD
            //"+ 5 LP & + 32 PD"
        }
    }
    @IBAction func backTo(segue:UIStoryboardSegue){
        
    }

//    func attackReselt(){
//    var attck = 0
//    if attck >= 0{
//        attck = 0 }}
//    func actionAttack1(){
//      var  playr2LP = Int(lpOfPlayer2Labl.text!)!
//        var  playr1LP = Int(lpOfPlayr1Labl.text !)
//      var  playr2DF = Int(dfOfPlayr2labl.text !)!
//      var  playr1DF = Int(dfOfPlayr1Labl.text !)!
//      var  playr1PD = Int(pdOfPlayr1Labl.text !)!
//      var  playr2PD = Int(pdOfPlayer2labl.text !)!
//       var playr1WD = Int(wdOfPlayer1Labl.text !)!
//       var playr2WD = Int(wdOfPlayr2labl.text !)!
//       var playr2SC = Int(wdOfPlayr2labl.text !)!
//      var  playr1SC = Int(scOfPlayer1Labl.text !)!
//        let diceRoll = Int.random(in: 1...20)
//        print("dice \(diceRoll)")
//        //print dice
//        switch diceRoll{
//        case 1...9:
//            var reselt = playr1DF! - playr2PD!
//            if( reselt >= 0 ){ reselt = 0 }
//            playr1LP! += reselt
//            if playr1LP! <= 0 { playr1LP = 0 }
//            print(reselt , playr1LP!)
//            print("player1")
//            var reselt1 = playr2DF! - playr1PD!
//            if( reselt1 >= 0 ){ reselt1 = 0 }
//            playr2LP! += reselt1
//            if playr2LP! <= 0 { playr2LP = 0 }
//            print(reselt1 , playr2LP!)
//            print("playr2")
//
//        case 10...19:
//            var reselt2 = playr1DF! - playr2WD!
//            if( reselt2 >= 0 ){ reselt2 = 0 }
//            playr1LP! += reselt2
//            if playr1LP! <= 0 { playr1LP = 0 }
//            print(reselt2 , playr1LP!)
//            var reselt3 = playr2DF! - playr1WD!
//            if( reselt3 >= 0 ){ reselt3 = 0 }
//            playr2LP! += reselt3
//            if playr2LP! <= 0 { playr2LP = 0 }
//            print(reselt3 , playr2LP!)
//
//        case 20:
//            var reselt4 = playr1DF! - playr2SC!
//            if( reselt4 >= 0 ){
//               reselt4 = 0
//            }
//
//            playr1LP! += reselt4
//            if playr1LP! <= 0 {
//                playr1LP = 0
//            }
//            print(reselt4 , playr1LP)
//            var reselt5 = playr2DF! - playr1SC!
//            if( reselt5 >= 0 ){
//               reselt5 = 0
//            }
//            playr2LP! += reselt5
//            if playr2LP! <= 0 {
//                playr2LP = 0
//            }
//            print(reselt5 , playr2LP)
//
//        default:
//            "OPS"
//        }
//    }
//    func winnerIs (hero1:Hero , hero2:Hero){
//        if (lazarus.lifePoint <= 0) {
//            print("\(elvin.name) Is a Winner 🎉🎉")
//            winner = true
//        }
//        if (elvin.lifePoint <= 0) {
//            print("\(lazarus.name) Is a Winner 🎉🎉")
//            winner = true
//        }
//    }
}


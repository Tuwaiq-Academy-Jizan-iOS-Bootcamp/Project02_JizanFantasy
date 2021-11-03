//
//  Hero.swift
//  HananSomily_Project02_JizanFantasy
//
//  Created by Hanan Somily on 03/11/2021.
//

import Foundation
import UIKit
struct HeroPlayer{
    var points : Int
    var name : String
    var lifePoint :Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var specialCapacity : Int
    var specialLP : Int
    var specialPD:Int
    //func lp
    mutating func power (){}}

 class Hero: UIViewController {
     
     @IBOutlet weak var nameOfHeroLabl: UILabel!
     @IBOutlet weak var insertNameOfHeroTF: UITextField!
     @IBOutlet weak var pointOfHeroLabl: UILabel!
     @IBOutlet weak var capacityPointLabl: UILabel!
     @IBOutlet weak var lifePointHeroTextField: UITextField!
     @IBOutlet weak var inserDFtextField: UITextField!
     @IBOutlet weak var insertPDtextField: UITextField!
     @IBOutlet weak var insertWDtextField: UITextField!
     var knight = HeroPlayer(points:250 ,name: "Knight", lifePoint: 60, defense: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100, specialLP: 5, specialPD: 10)
     var wizard = HeroPlayer(points:245 ,name: "Wiza", lifePoint: 90, defense: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50, specialLP: 35, specialPD: 10)
     var thief = HeroPlayer(points:210,name: "Thief", lifePoint: 65, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75, specialLP: 5, specialPD: 35)
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         insertNameOfHeroTF.delegate = self
         inserDFtextField.delegate = self
         lifePointHeroTextField.delegate = self
         insertPDtextField.delegate = self
         insertWDtextField.delegate = self
//         var heroName = insertNameOfHeroTF.text
//         switch heroName {
//         case "knight" :
//             pointOfHeroLabl.text = String(knight.lifePoint)
//             nameOfHeroLabl.text = String(knight.name)
//             capacityPointLabl.text = String(knight.specialCapacity)
//
//         case "wiza" :
//             pointOfHeroLabl.text = String(wizard.lifePoint)
//             nameOfHeroLabl.text = String(wizard.name)
//             capacityPointLabl.text = String(knight.specialCapacity)
//         case "thief" :
//             pointOfHeroLabl.text = String(thief.lifePoint)
//             nameOfHeroLabl.text = String(thief.name)
//             capacityPointLabl.text = String(knight.specialCapacity)
//         default:
//             print("error")
//         }
     }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         var sender = segue.destination as! ViewController
         sender.lpOfPlayer2Labl.text =
         lifePointHeroTextField.text
         sender.dfOfPlayr2labl.text =
         inserDFtextField.text
         sender.pdOfPlayer2labl.text =
         insertPDtextField.text
         sender.wdOfPlayr2labl.text =
         insertWDtextField.text
         sender.scOfPlayer2Labl.text =
         capacityPointLabl.text
     }
}
extension Hero:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
       //nameOfHeroLabl.text = insertNameOfHeroTF.text
        var heroName = insertNameOfHeroTF.text
        switch heroName {
        case "knight" :
            pointOfHeroLabl.text = String(knight.points)
            nameOfHeroLabl.text = String(knight.name)
            capacityPointLabl.text = " + 5 LP & + 10 WD"
        case "wiza" :
            pointOfHeroLabl.text = String(wizard.points)
            nameOfHeroLabl.text = String(wizard.name)
            capacityPointLabl.text = "+ 35 LP  & + 10 PD"
        case "thief" :
            pointOfHeroLabl.text = String(thief.points)
            nameOfHeroLabl.text = String(thief.name)
            capacityPointLabl.text = "+ 5 LP & + 35 WD"       default:
            print("error")
        }
        return true
    }
}

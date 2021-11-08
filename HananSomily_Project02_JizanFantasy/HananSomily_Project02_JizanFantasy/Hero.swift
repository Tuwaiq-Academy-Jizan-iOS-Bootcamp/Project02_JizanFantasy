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
    var specialWD : Int
    var specialPD:Int
    //func lp
    mutating func power (){}}

 class Hero: UIViewController {
     
     @IBOutlet weak var nameOfHeroPickerView: UIPickerView!
     @IBOutlet weak var plusSCHero: UILabel!
     @IBOutlet weak var changePoins: UILabel!
     @IBOutlet weak var descriptionOfHero: UITextView!
     @IBOutlet weak var imageHero: UIImageView!
     @IBOutlet weak var nameOfHeroLabl: UILabel!
     @IBOutlet weak var insertNameOfHeroTF: UITextField!
     @IBOutlet weak var pointOfHeroLabl: UILabel!
     @IBOutlet weak var capacityPointLabl: UILabel!
     @IBOutlet weak var lifePointHeroLabl: UILabel!
     
     @IBOutlet weak var LifePointHeroStepper: UIStepper!
     @IBOutlet weak var inserDFLabl: UILabel!
     @IBOutlet weak var insertDFStepper: UIStepper!
     @IBOutlet weak var insertPDLabl: UILabel!
     @IBOutlet weak var insertPDstepper: UIStepper!
     @IBOutlet weak var insertWDLabl: UILabel!
     @IBOutlet weak var insertinsertWDStepper: UIStepper!
     var heroName = ["Knight","Wizard", "Thief",]
     var knight = HeroPlayer(points:250 ,name: "Knight", lifePoint: 60, defense: 20, powerDamage: 30, weaponDamage: 40, specialCapacity: 100, specialLP: 5, specialWD: 10, specialPD: 0)
     var wizard = HeroPlayer(points:245 ,name: "Wizard", lifePoint: 90, defense: 15, powerDamage: 70, weaponDamage: 20, specialCapacity: 50, specialLP: 35, specialWD: 0, specialPD: 10)
     var thief = HeroPlayer(points:210,name: "Thief", lifePoint: 65, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75, specialLP: 5, specialWD: 35, specialPD: 0)
     var playrSWD = 0
     var playrSPD = 0
     var playrSLP = 0

     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         pointOfHeroLabl.text = "0"
         //Int( LifePointHeroStepper - insertDFStepper - insertPDstepper - insertinsertWDStepper )
         LifePointHeroStepper.stepValue = 1.0
         inserDFLabl.text = "0"
         insertDFStepper.stepValue = 1.0
         insertPDLabl.text = "0"
         insertPDstepper.stepValue = 1.0
         insertWDLabl.text = "0"
         insertinsertWDStepper.stepValue = 1.0
         //insertNameOfHeroTF.delegate = self
         pointOfHeroLabl.text = "0"
         nameOfHeroPickerView.dataSource = self
         nameOfHeroPickerView.delegate = self
        // inserDFtextField.delegate = self
        // lifePointHeroTextField.delegate = self
        // insertPDtextField.delegate = self
        // insertWDtextField.delegate = self
//         var heroName = insertNameOfHeroTF.text

     }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         var sender = segue.destination as! ViewController
         sender.imagePlayer2.image = imageHero.image
         sender.nameOfPlayr2labl.text =
         nameOfHeroLabl.text
         sender.lpOfPlayer2Labl.text =
         lifePointHeroLabl.text
         sender.dfOfPlayr2labl.text =
         inserDFLabl.text
         sender.pdOfPlayer2labl.text =
         insertPDLabl.text
         sender.wdOfPlayr2labl.text =
         insertWDLabl.text
         sender.scOfPlayer2Labl.text =
         capacityPointLabl.text
         sender.spichalCapacityPD = playrSPD
         sender.spichalCapacityWD = playrSWD
         sender.spichalCapacityLP = playrSLP
     }
     
     @IBAction func LifePointHeroStepper(_ sender: UIStepper) {
         if(( (Int(pointOfHeroLabl.text!)!) != 0 )){
             lifePointHeroLabl.text = Int(sender.value).description
             pointOfHeroLabl.text = String( Int(changePoins.text!)! - Int( lifePointHeroLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( inserDFLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( insertPDLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( insertWDLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( capacityPointLabl.text!)!)
//pointOfHeroLabl.text =  String((Int(pointOfHeroLabl.text!)!)-1)
             
             LifePointHeroStepper.minimumValue = 0
         //lifePointHeroLabl.text = Int(sender.value).description
         }}
     
     @IBAction func heroDFstepper(_ sender: UIStepper) {
         if(( (Int(pointOfHeroLabl.text!)!) != 0 )){
             inserDFLabl.text = Int(sender.value).description
            pointOfHeroLabl.text = String( Int(changePoins.text!)! - Int( lifePointHeroLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( inserDFLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( insertPDLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( insertWDLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( capacityPointLabl.text!)!)
 //pointOfHeroLabl.text =  String((Int(pointOfHeroLabl.text!)!)-1)

         //inserDFLabl.text = Int(sender.value).description
         }}
     
     @IBAction func heroPDstepper(_ sender: UIStepper) {
         if(( (Int(pointOfHeroLabl.text!)!) != 0 )){
             insertPDLabl.text = Int(sender.value).description
             pointOfHeroLabl.text = String( Int(changePoins.text!)! - Int( lifePointHeroLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( inserDFLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( insertPDLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( insertWDLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( capacityPointLabl.text!)!)
//pointOfHeroLabl.text = String((Int(pointOfHeroLabl.text!)!)-1)
         //insertPDLabl.text = Int(sender.value).description
         }}
     
     @IBAction func heroWDstepper(_ sender: UIStepper) {
         if(( (Int(pointOfHeroLabl.text!)!) != 0 )){
             insertWDLabl.text = Int(sender.value).description
             pointOfHeroLabl.text = String( Int(changePoins.text!)! - Int( lifePointHeroLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( inserDFLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( insertPDLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( insertWDLabl.text!)!)
             pointOfHeroLabl.text = String( Int(pointOfHeroLabl.text!)! - Int( capacityPointLabl.text!)!)
//pointOfHeroLabl.text =  String((Int(pointOfHeroLabl.text!)!)-1)
         //insertWDLabl.text = Int(sender.value).description
     }
     }}
extension Hero:UIPickerViewDelegate , UIPickerViewDataSource
//extension Hero:UITextFieldDelegate
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return heroName.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return heroName[row]
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
       //nameOfHeroLabl.text = insertNameOfHeroTF.text
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var heroName = heroName[nameOfHeroPickerView.selectedRow(inComponent: 0)]

    
        //var heroName = insertNameOfHeroTF.text
        switch heroName {
        case "Knight" :
            imageHero.image = UIImage(named: "knight")
            changePoins.text = String(knight.points)
            pointOfHeroLabl.text = String("150")
            nameOfHeroLabl.text = String(knight.name)
            capacityPointLabl.text = String(knight.specialCapacity)
            playrSLP = knight.specialLP
            playrSPD = knight.specialPD
            playrSWD = knight.specialWD
            descriptionOfHero.text = (" Knight 250 points to dispatch : \n Life Point: 60 \n Defense: 20 \n Power Damage: 30 \n Weapon damage: 40 \n Special capacity: 100 And + 5 LP & + 10 WD (for next time he use it) ")
            plusSCHero.text = " + 5 LP & + 10 WD"
            LifePointHeroStepper.maximumValue = Double(knight.lifePoint)
            insertDFStepper.maximumValue = Double(knight.defense)
            insertPDstepper.maximumValue = Double(knight.powerDamage)
            insertinsertWDStepper.maximumValue = Double(knight.weaponDamage)
        case "Wizard" :
            imageHero.image = UIImage(named: "wizard")
            changePoins.text = String(wizard.points)
            pointOfHeroLabl.text = String("195")
            nameOfHeroLabl.text = String(wizard.name)
            capacityPointLabl.text = String(wizard.specialCapacity)
            playrSLP = wizard.specialLP
            playrSPD = wizard.specialPD
            playrSWD = wizard.specialWD
            descriptionOfHero.text = (" Wizard 245 points to dispatch : \n Life Point: 90 \n Defense: 15 \n Power Damage: 70 \n Weapon damage: 20 \n Special capacity: 50 And + 35 LP  & + 10 PD (for the next time he use it) ")
            plusSCHero.text = "+ 35 LP  & + 10 PD"
            LifePointHeroStepper.maximumValue = Double(wizard.lifePoint)
            insertDFStepper.maximumValue = Double(wizard.defense)
            insertPDstepper.maximumValue = Double(wizard.powerDamage)
            insertinsertWDStepper.maximumValue = Double(wizard.weaponDamage)
        case "Thief" :
            imageHero.image = UIImage(named: "thief")
            changePoins.text = String(thief.points)
            pointOfHeroLabl.text = String("135")
            nameOfHeroLabl.text = String(thief.name)
            capacityPointLabl.text = String(thief.specialCapacity)
            playrSLP = thief.specialLP
            playrSPD = thief.specialPD
            playrSWD = thief.specialWD
            descriptionOfHero.text = (" Thief 210 points to dispatch : \n Life Point: 65 \n Defense: 25 \n Power Damage: 15 \n Weapon damage: 30 \n Special capacity: 75 And + 5 LP & + 35 WD (for the next time he use it) ")
            plusSCHero.text = "+ 5 LP & + 35 WD"
            LifePointHeroStepper.maximumValue = Double(thief.lifePoint)
            insertDFStepper.maximumValue = Double(thief.defense)
            insertPDstepper.maximumValue = Double(thief.powerDamage)
            insertinsertWDStepper.maximumValue = Double(thief.weaponDamage)
        default:
            print("error")
        }
       // return true
    }}


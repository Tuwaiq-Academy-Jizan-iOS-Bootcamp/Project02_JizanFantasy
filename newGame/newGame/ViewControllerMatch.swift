//
//  ViewControllerMatch.swift
//  newGame
//
//  Created by Abdulrhman Abuhyyh on 29/03/1443 AH.
//

import UIKit
class Hero {
    var name : String
    var lifePoint : Int
    var powerDamage : Int
    var defenseDamage : Int
    var WeaponDamage : Int
    var specialCapacity : Int
    init(name : String , lifePoint : Int , defenseDamage : Int , powerDamage : Int , WeaponDamage : Int, specialCapacity : Int) {
        self.name = name
        self.lifePoint = lifePoint
        self.defenseDamage = defenseDamage
        self.powerDamage = powerDamage
        self.WeaponDamage = WeaponDamage
        self.specialCapacity = specialCapacity
    }
    func matches(){
        print("teh \(name) it has \(lifePoint) life point")
    }
    func theGame1() {
        print("the \(name) get \(specialCapacity)")
    }
    func lifePointA(){
        print(lifePoint += lifePoint)
    }
}
class ViewControllerMatch: UIViewController {
    @IBOutlet weak var diceName: UIButton!
    var trun = 0
    var winner = false
    var turn: Int = 0
    
    //the varible of class for Hero with init .
    
    //    var knight = Hero(name:"Knight", lifePoint: 60, defenseDamage: 20, powerDamage: 30, WeaponDamage: 40, specialCapacity : 100)
    //    var wizard = Hero(name: "Wizard", lifePoint: 90, defenseDamage: 15, powerDamage: 70, WeaponDamage: 40,specialCapacity : 50)
    //
    //    var thief = Hero(name: "Thief", lifePoint: 65, defenseDamage: 25, powerDamage: 15, WeaponDamage: 30,specialCapacity : 75)
    //
    var warriorOne = Hero(name: "", lifePoint: 0, defenseDamage: 0, powerDamage: 0, WeaponDamage: 0, specialCapacity: 0)
    var boosOnw = Hero(name: "Boos1", lifePoint: 250, defenseDamage: 30, powerDamage: 20, WeaponDamage: 45,specialCapacity : 110)
    var boosTwo = Hero(name: "Boos2", lifePoint: 170, defenseDamage: 25, powerDamage: 15, WeaponDamage: 30,specialCapacity : 75)
    
    // Optional for get two players (boos1-boos2) !
    var warriorTwo: Hero?
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var lifepoint1: UILabel!
    @IBOutlet weak var lifepointB: UILabel!
    @IBOutlet weak var textName1: UILabel!
    @IBOutlet weak var defense1: UILabel!
    @IBOutlet weak var defenseB: UILabel!
    @IBOutlet weak var powerdamge1: UILabel!
    @IBOutlet weak var powerdamageB: UILabel!
    @IBOutlet weak var nameBoosLabel: UILabel!
    @IBOutlet weak var weaponDamge1: UILabel!
    @IBOutlet weak var weaponDamageB: UILabel!
    //    @IBOutlet weak var sepicalCapsity: UILabel!
    //    @IBOutlet weak var spicalCapsityB: UILabel!
    @IBOutlet weak var theRollDice: UILabel!
    //    @IBOutlet weak var selected: UIButton!
    @IBOutlet weak var textMatch: UITextView!
    @IBOutlet weak var resultDice: UILabel!
    @IBOutlet weak var ImageBoos: UIImageView!
    // the varible for boos 1 and boos 2
    //boos 1
    var imageBo = 1
    var lifePointBoos = 250
    var nameBoos = "boss1"
    var defenseBoos = 30
    var powerDamageB = 20
    var weaponDamageBoos = 45
    // boos 2
    var imageBo2 = 2
    var lifePointBoos2 = 170
    var nameBoos2 = "boss2"
    var defenseBoos2 = 25
    var powerDamageB2 = 15
    var weaponDamageBoos2 = 30
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomBoss = Int.random(in: 1...2)
        if randomBoss == 1 {
            ImageBoos.image = UIImage(named: "boos1")
            nameBoosLabel.text = nameBoos
            lifepointB.text = " \(lifePointBoos) "
            defenseB.text = " \(defenseBoos)"
            powerdamageB.text = " \(powerDamageB)"
            weaponDamageB.text = " \(weaponDamageBoos)"
        }else {
            ImageBoos.image = UIImage(named: "boos2")
            nameBoosLabel.text = nameBoos
            lifepointB.text = " \(lifePointBoos2) "
            defenseB.text = " \(defenseBoos2)"
            weaponDamageB.text = " \(powerDamageB2)"
            weaponDamageB.text = " \(weaponDamageBoos2)"
        }
        
                let warrior = Int.random(in: 0...1)
                if warrior == 0 {
                    warriorTwo = boosOnw
                } else {
                    warriorTwo = boosTwo
                }
    }
   
    @IBAction func RollingDice(_ sender: Any) {
        textMatch.text += "\n"
        trun += 1
        if winner {
            print("Game Over!!!")
        }else {
            print("===This is the trun \(trun)===")
            seinarioGame()
            print("===the end trun \(trun)===")
        }
    }
    func seinarioGame() {
        warriorOne.name = textName1.text!
        warriorOne.lifePoint = Int(lifepoint1.text!)!
        warriorOne.defenseDamage = Int(defense1.text!)!
        warriorOne.powerDamage = Int(powerdamge1.text!)!
        warriorOne.WeaponDamage = Int(weaponDamge1.text!)!
        
        // the senario of the logic between players
        switch rollingDice() {
            
        case 0...4:
            warriorOne.matches()
            warriorTwo?.lifePoint -= warriorOne.powerDamage
            warriorTwo?.lifePoint += warriorTwo!.defenseDamage
            textMatch.text += "the life point: \(warriorTwo?.lifePoint ?? 0)"
            print(warriorTwo!.lifePoint)
        case 5...9:
            warriorTwo?.matches()
            warriorOne.lifePoint -= warriorTwo!.powerDamage
            warriorOne.lifePoint += warriorOne.defenseDamage
            textMatch.text += "the life point: \(warriorTwo!.lifePoint)"
            print(warriorOne.lifePoint)
        case 10...14:
            warriorOne.matches()
            warriorTwo?.lifePoint -= warriorOne.WeaponDamage
            warriorTwo?.lifePoint += warriorTwo!.defenseDamage
            textMatch.text += "the life point: \(warriorTwo?.lifePoint ?? 0)"
        case 15...19:
            warriorTwo?.matches()
            warriorOne.lifePoint -= warriorTwo!.WeaponDamage
            warriorOne.lifePoint += warriorOne.defenseDamage
            textMatch.text += "the life point: \(warriorOne.lifePoint)"
            print(warriorOne.lifePoint)
        case 20:
            if warriorOne.name == "Wizard " {
                warriorOne.lifePoint += 35
                warriorOne.powerDamage += 10
            }else if warriorOne.name == "Knight" {
                
                warriorOne.lifePoint += 30
                warriorOne.WeaponDamage += 10
                textMatch.text = ("the lifepoint hero\(warriorOne.lifePoint)")
            }else {
                //player1.lifePoint += 5
                warriorOne.lifePoint += 150
                
                warriorOne.WeaponDamage += 35
            }
            if warriorTwo?.name == "Boos1" {
                warriorTwo?.lifePoint += 5
                warriorTwo?.WeaponDamage += 22
            }else {
                warriorTwo?.lifePoint += 5
                warriorTwo?.WeaponDamage += 32
            }
            print("the hero\(warriorOne.lifePoint)")
            print("the boos \(warriorTwo!.lifePoint)")
        default:
            print("ERROR")
        }
        //the function who is winner
        func theWinnerIs(wizard: Hero, boosOwn: Hero) {
            
            if (warriorOne.lifePoint <= 0) {
                print("The Winner is : \(warriorTwo!.name) at turn \(trun)")
                winner = true
            }
            if (warriorTwo!.lifePoint <= 0) {
                print("The winner is : \(warriorOne.name) at turn \(trun)")
                winner = true
            }
        }
        func rollingDice() -> Int {
            var dice : Int
            dice = Int.random(in: 1...20)
            theRollDice.text = " the Rolling \(dice)"
            print(dice)
            return dice
        }
    }
//    func stopDice() {
//        if warriorOne ==  {
//            
//        }
//    }
    @IBAction func wined(segue: UIStoryboardSegue){
    }
}

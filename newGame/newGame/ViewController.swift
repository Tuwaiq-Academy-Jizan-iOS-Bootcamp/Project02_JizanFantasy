//
//  ViewController.swift
//  newGame
//
//  Created by Abdulrhman Abuhyyh on 28/03/1443 AH.
//

import UIKit

class Hero {
    var name : String
    var lifePoint : Int
    var powerDamage : Int
    var defenseDamage : Int
    var WeaponDamage : Int
    var specialCapacity : Int

    init(name : String , lifePoint : Int , defenseDamage : Int , powerDamage : Int , WeaponDamage : Int , specialCapacity : Int) {
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

   
class ViewController: UIViewController {
    var trun = 0
    var winner = false
// this is a three players for new challeng
    
    var knight = Hero(name: "Knight", lifePoint: 60, defenseDamage: 20, powerDamage: 30, WeaponDamage: 40, specialCapacity: 100)
    var wizard = Hero(name: "Wizard", lifePoint: 90, defenseDamage: 15, powerDamage: 70, WeaponDamage: 40, specialCapacity: 50)
    var thief = Hero(name: "Thief", lifePoint: 65, defenseDamage: 25, powerDamage: 15, WeaponDamage: 30, specialCapacity: 75)
    //
    var boosOnw = Hero(name: "Boos1", lifePoint: 250, defenseDamage: 30, powerDamage: 20, WeaponDamage: 45, specialCapacity: 10)
    var boosTwo = Hero(name: "Boos2", lifePoint: 170, defenseDamage: 25, powerDamage: 15, WeaponDamage: 30, specialCapacity: 75)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
    
    }
    @IBAction func rollingDice (_ sender: UIButton){
        trun += 1
        if winner {
            print("Game Over!!!")
        }else {
            print("===This is the trun \(trun)===")
//            theGame()
            print("===the end game \(trun)===")
        }
    }
    func seinarioGame() {
        
        switch rollingDice() {
            
        case 1...5:
            wizard.matches()
            wizard.lifePoint -= boosOnw.powerDamage
            boosTwo.lifePoint += boosOnw.defenseDamage
            print(boosOnw.lifePoint)
        case 5...10:
            boosOnw.matches()
            boosOnw.lifePoint -= wizard.powerDamage
            wizard.lifePoint += wizard.defenseDamage
            print(wizard.lifePoint)
        case 10...15:
            wizard.matches()
            boosOnw.lifePoint -= wizard.WeaponDamage
            boosOnw.lifePoint += boosOnw.defenseDamage
            print(boosOnw.lifePoint)
        case 15...20:
            boosOnw.matches()
            wizard.lifePoint -= boosOnw.WeaponDamage
            wizard.lifePoint += wizard.defenseDamage
            print(wizard.lifePoint)
        case 21:
            wizard.theGame1()
            boosOnw.lifePoint += 5
            boosOnw.powerDamage += 22
            print("the \(wizard.lifePoint),\(boosOnw.powerDamage)")
        
    default:
        print("no")
        }
        
   func rollingDice() -> Int {
       var dice : Int
        dice = Int.random(in: 1...20)
        print(dice)
       return dice
    }


}
}

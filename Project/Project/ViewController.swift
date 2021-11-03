//
//  ViewController.swift
//  Project
//
//  Created by Yasir Hakami on 02/11/2021.
//

import UIKit

class Hero {
    var name:String
    var lifePoint:Int
    var defense:Int
    var poewrDamage:Int
    var weaponDamage:Int
    var specialCapacity:Int
    init(name:String, lifePoint:Int, defense: Int, poewrDamage:Int,weaponDamage:Int, specialCapacity:Int ) {
        self.name = name
        self.lifePoint = lifePoint
        self.defense = defense
        self.poewrDamage = poewrDamage
        self.weaponDamage = weaponDamage
        self.specialCapacity = specialCapacity
    }
    func ActionDescration(){
        print("the \(name) take the action :and he is defense: \(defense) & life point \(lifePoint) !")
    }
    func SC(){
        print("the \(name) get \(specialCapacity)")
    }
    func LifePoint(){
         print (lifePoint += lifePoint)
        
    }
}


class ViewController: UIViewController {
    @IBOutlet weak var duringGame: UITextView!
    
    
    var knight = Hero(name: "Knight", lifePoint: 60, defense: 20, poewrDamage: 30, weaponDamage: 40, specialCapacity: 100)
    var wizard = Hero(name: "wizard", lifePoint: 90, defense: 15, poewrDamage: 70, weaponDamage: 20, specialCapacity: 50)
    var thief = Hero(name: "Thief", lifePoint: 65, defense: 25, poewrDamage: 15, weaponDamage: 30, specialCapacity: 75)
    var boss1 = Hero(name: "Boss1", lifePoint: 250, defense: 30, poewrDamage: 20, weaponDamage: 45, specialCapacity: 110)
    var boss2 = Hero(name: "Boss2", lifePoint: 170, defense: 25, poewrDamage: 15, weaponDamage: 30, specialCapacity: 75)
    
    @IBOutlet weak var uiRoll: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func roll(_ sender: Any) {
        logicTheGame()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func roll() -> Int {
        var dice : Int
        dice = Int.random(in: 0...20)
        print("dice = \(dice)")
        return dice
        
    }
    func logicTheGame(){
       
        switch roll() {
        case 0...9:
                knight.ActionDescration()
                boss2.lifePoint -= knight.poewrDamage
                boss2.lifePoint += boss2.defense
            duringGame.text += ("the lifepoint of my hero : \(knight.lifePoint)")
            Dead()
            print(boss2.lifePoint)
                boss2.ActionDescration()
                knight.lifePoint -= boss2.poewrDamage
                knight.lifePoint += knight.defense
            duringGame.text += ("the lifepoint of my hero : \(boss2.lifePoint)")
            Dead()
            print(knight.lifePoint)
        case 10...19:
                knight.ActionDescration()
                boss2.lifePoint -= knight.weaponDamage
                boss2.lifePoint -= knight.defense
            duringGame.text += ("the lifepoint of my hero : \(knight.lifePoint)")
            Dead()
            print(boss2.lifePoint)
                boss2.ActionDescration()
                knight.lifePoint -= boss2.weaponDamage
                knight.lifePoint += knight.defense
            duringGame.text += ("the lifepoint of my hero : \(boss2.lifePoint)")
            Dead()
            print(knight.lifePoint)
        case 20:
                knight.SC()
            knight.lifePoint += 5
            knight.weaponDamage += 10
            duringGame.text += ("the lifepoint of my hero : \(knight.lifePoint)")
            Dead()
                print ("get \(knight.lifePoint) , \(knight.weaponDamage)")
                boss2.SC()
            boss2.lifePoint += 5
            boss2.poewrDamage += 32
            duringGame.text += ("the lifepoint of my hero : \(boss2.lifePoint)")
            Dead()
            print ("get \(boss2.lifePoint) , \(boss2.poewrDamage)")
    
        default:
            print("Error")
        }
        if knight.lifePoint <= 0 {
            uiRoll.isEnabled = false
        } else if boss2.lifePoint <= 0 {
            uiRoll.isEnabled = false
        }
    }
    
    
    
    func Dead(){
        if knight.lifePoint < 0{
            knight.lifePoint = 0
        }else if boss2.lifePoint < 0 {
            boss2.lifePoint = 0
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }
}//end the class



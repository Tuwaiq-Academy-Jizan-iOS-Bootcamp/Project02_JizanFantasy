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
    @IBOutlet weak var diceNumber: UILabel!
    @IBOutlet weak var lpBoss: UILabel!
    @IBOutlet weak var lpdfBoss: UILabel!
    @IBOutlet weak var lpPdBoss: UILabel!
    @IBOutlet weak var lpWdBoss: UILabel!
    @IBOutlet weak var lpScBoss: UILabel!
    
    
    @IBOutlet weak var lpHero: UILabel!
    
    // new lable for user delegate!
    @IBOutlet weak var lpDf: UILabel!
    @IBOutlet weak var lpPd: UILabel!
    @IBOutlet weak var lpWd: UILabel!
    
    var player1 :Hero?
    var player2 :Hero?
    
    // declear ourChracters!
    var knight = Hero(name: "Knight", lifePoint: 60, defense: 20, poewrDamage: 30, weaponDamage: 40, specialCapacity: 100)
    var wizard = Hero(name: "wizard", lifePoint: 90, defense: 15, poewrDamage: 70, weaponDamage: 20, specialCapacity: 50)
    var thief = Hero(name: "Thief", lifePoint: 65, defense: 25, poewrDamage: 15, weaponDamage: 30, specialCapacity: 75)
    var boss1 = Hero(name: "Boss1", lifePoint: 250, defense: 30, poewrDamage: 20, weaponDamage: 45, specialCapacity: 110)
    var boss2 = Hero(name: "Boss2", lifePoint: 170, defense: 25, poewrDamage: 15, weaponDamage: 30, specialCapacity: 75)
    
    
    var turn = 0
    var winner = false
    
    @IBOutlet weak var uiRoll: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let player = Int.random(in: 0...1)
        
        if player == 0 {
            player1 = boss1
        } else {
            player1 = boss2
        }
        print(player1?.name)
    }
    
    @IBAction func roll(_ sender: Any) {
        turn += 1
        if winner {
            duringGame.text += ("Game End !")
        } else {
            duringGame.text += ("“This is the turn N°\(turn)“")
            logicTheGame()
            duringGame.text += ("“This is the end of turn N°\(turn)“")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func roll() -> Int {
        var dice : Int
        dice = Int.random(in: 0...20)
        diceNumber.text = "Rolling .. \(dice)"
        return dice
        
    }
    func logicTheGame(){
        
        switch roll() {
        case 0...4: // knight
            knight.ActionDescration()
            player1?.lifePoint -= knight.poewrDamage
            player1?.lifePoint += player1?.defense ?? 25
            duringGame.text += ("the lifepoint of knight : \(knight.lifePoint)")
            Dead()
            print(boss2.lifePoint)
        case 5...9: // Boss
            player1?.ActionDescration()
            knight.lifePoint -= player1?.poewrDamage ?? 15
            knight.lifePoint += knight.defense
            duringGame.text += ("the lifepoint of \(player1?.name ?? "Boss") : \(player1?.lifePoint ??  170)")
            Dead()
            print(knight.lifePoint)
        case 10...14:
            knight.ActionDescration()
            player1?.lifePoint -= knight.weaponDamage
            player1?.lifePoint += player1?.defense ?? 25
            duringGame.text += ("the lifepoint of knight : \(knight.lifePoint)")
            Dead()
            print(boss2.lifePoint)
        case 15...19:
            boss2.ActionDescration()
            knight.lifePoint -= player1?.weaponDamage ?? 30
            knight.lifePoint += knight.defense
            duringGame.text += ("the lifepoint of \(player1?.name ?? "Boss") : \(player1?.lifePoint ??  170) ")
            Dead()
            print(knight.lifePoint)
        case 20:
            knight.SC()
            knight.lifePoint += 5
            knight.weaponDamage += 10
            duringGame.text += ("the lifepoint of knight : \(knight.lifePoint)")
            Dead()
            print ("get \(knight.lifePoint) , \(knight.weaponDamage)")
            player1?.SC()
            player1?.lifePoint += 5
            player1?.poewrDamage += 32
            duringGame.text += ("the lifepoint of \(player1?.name ?? "Boss") : \(player1?.lifePoint ??  170)")
            Dead()
            print ("get \(player1?.lifePoint ??  170) , \(player1?.lifePoint ??  170)")
            
        default:
            print("Error")
        }
        if knight.lifePoint <= 0 {
            uiRoll.isEnabled = false
        } else if player1?.lifePoint ??  170 <= 0 {
            uiRoll.isEnabled = false
        }
        // Boss Player1
        lpBoss.text = "\(player1?.lifePoint ?? 170)"
        lpdfBoss.text = "\(player1?.defense ?? 25)"
        lpPdBoss.text = "\(player1?.poewrDamage ?? 15)"
        lpWdBoss.text = "\(player1?.weaponDamage ?? 30)"
        lpScBoss.text = "\(player1?.specialCapacity ?? 0) SpecialCapacity For Boss"
        
        
        // Hero Player2
        lpHero.text = "\(knight.lifePoint)"
    }
    
    
    
    func Dead(){
        if knight.lifePoint < 0{
            knight.lifePoint = 0
        } else if boss2.lifePoint < 0 {
            boss2.lifePoint = 0
        }
    }
    
    
    
    @IBAction func unwindToRoot(segue: UIStoryboardSegue){
        print("Unwind action !")
        
    }
}//end the class



//
//  ViewController.swift
//  BushraBarakat_Project02
//
//  Created by Bushra Barakat on 27/03/1443 AH.
//

import UIKit

struct Boss {
    var name : String
    var lifePoint : Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var spcialCapacity : Int
    var specialPd : Int
    var specialWd : Int
    var specialLp : Int
 
    }


struct Hero {
    var name : String
    var lifePoint : Int
    var defense : Int
    var powerDamage : Int
    var weaponDamage : Int
    var specialCapacity : Int
    var specialPd : Int
    var specialWd : Int
    var specialLp : Int
    
}



class ViewController: UIViewController {
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var labelHero1: UILabel!
    @IBOutlet weak var labelHero2: UILabel!
    @IBOutlet weak var labelHero3: UILabel!
    @IBOutlet weak var labelHero4: UILabel!
    @IBOutlet weak var labelHero5: UILabel!
    @IBOutlet weak var resultRollingDice: UILabel!
    @IBOutlet weak var nameBoss: UILabel!
    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var heroImage2: UIImageView!
    @IBOutlet weak var bossImage: UIImageView!
    @IBOutlet weak var descripationGame: UILabel!
    
var boss1 = Boss(name: "boos1", lifePoint: 250, defense: 30, powerDamage:20, weaponDamage: 45, spcialCapacity: 110, specialPd: 0, specialWd: 22, specialLp: 5)
var boss2 = Boss(name: "boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, spcialCapacity: 75, specialPd: 32, specialWd: 0, specialLp: 5)

var hero = Hero(name: "" ,lifePoint: 0, defense: 0, powerDamage: 0, weaponDamage: 0, specialCapacity: 0, specialPd: 0, specialWd: 0, specialLp: 0)
    
    var turn = 0
    var nameOfHero = ""
    var turnButton = false
    var extraPoint = 0
    var extraDamage = 0
    var specialCpacity = 0
    var bossSc1 = false
    var bossSc2 = false
    var heroScp = false
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomBoss()
        
    }
    func randomBoss(){
    let conect = Int.random(in:1...2)
    switch conect {
    case 1:
        nameBoss.text = ("Boss1")
        bossImage.image = UIImage(named: "bossImage1")
        label1.text = String (boss1.lifePoint)
        label2.text = String (boss1.defense)
        label3.text = String (boss1.powerDamage)
        label4.text = String (boss1.weaponDamage)
        label5.text = String (boss1.spcialCapacity)
    case 2:
        nameBoss.text = ("Boss2")
        bossImage.image = UIImage(named: "bossImage2")
        label1.text = String (boss2.lifePoint)
        label2.text = String (boss2.defense)
        label3.text = String (boss2.powerDamage)
        label4.text = String (boss2.weaponDamage)
        label5.text = String (boss2.spcialCapacity)
        
    default:
       print  ("no number")
    }
    }
    
    
func heroTurn() {

    var bossLp = Int(label1.text!)!
    var bossDf = Int(label2.text!)!
    var bossPd = Int(label3.text!)!
    var bossWd = Int(label4.text!)!
    var bossSc = Int(label5.text!)!
    var heroLp = Int(labelHero1.text!)!
    var heroDf = Int(labelHero2.text!)!
    var heroPd = Int(labelHero3.text!)!
    var heroWd = Int(labelHero4.text!)!
    var heroSc = Int(labelHero5.text!)!
    let heroRandomDice = Int.random(in:1...20)
    switch heroRandomDice {
    case 1...9:
        if heroScp == true {
            bossPd += 32
            heroScp = false
        }
        heroPd -= bossDf
        if heroPd < 0{
            heroPd = 0
        }else{
        bossLp -= heroPd
            if bossLp < 0 {
                bossLp = 0
            }
            label1.text = String (bossLp)
            descripationGame.text = " Hero use his power damage aginst Boss "
        }
    case 10...19:
        if heroScp == true{
            heroWd += extraDamage
            heroScp = false
        }
        heroWd -= bossDf
        if heroWd < 0 {
            heroWd = 0
            
        }else{
            bossLp -= heroWd
            if bossLp < 0 {
                bossLp = 0
            }
            label1.text = String (bossLp)
            descripationGame.text = " Hero use his weapon damage aginst Boss "
        }
    case 20:
        specialCapacity12()
        specialCpacity -= bossDf
        if specialCpacity <= 0 {
            specialCpacity = 0
        }else{
            bossLp -= specialCpacity
            if bossLp < 0{
                bossLp = 0
            }
        label1.text! = String (bossLp)
        }
        labelHero1.text = String (heroLp + extraPoint)
        
    default:
        ("game over")
    }
    turnButton = true
}
        
func bossTurn(){
    var bossLp = Int(label1.text!)!
    var bossDf = Int(label2.text!)!
    var bossPd = Int(label3.text!)!
    var bossWd = Int(label4.text!)!
    var bossSc = Int(label5.text!)!
    var heroLp = Int(labelHero1.text!)!
    var heroDf = Int(labelHero2.text!)!
    var heroPd = Int(labelHero3.text!)!
    var heroWd = Int(labelHero4.text!)!
    var heroSc = Int(labelHero5.text!)!
    let bossRandomDice =  Int.random(in:1...20)
    switch bossRandomDice {
    case 1...9:
        if bossSc2 == true {
            bossPd += 32
            bossSc2 = false
        }
        bossWd -= heroDf
        if bossWd < 0 {
            bossWd = 0
        }else{
            heroLp -= bossWd
            if heroLp < 0 {
                heroLp = 0
            }
            labelHero1.text = String (heroLp)
            descripationGame.text = " Boss use his power damege aginst Hero"
        }
    case 10...19:
        if bossSc1 == true {
            bossWd += 22
            bossSc1 = false
        }
        bossWd -= heroDf
        if bossWd < 0 {
            bossWd = 0
        }else {
            heroLp -= bossWd
            if heroLp < 0 {
                heroLp = 0
            }
            labelHero1.text = String (heroLp)
            descripationGame.text = "Boss use weapon damege aginst Hero "
        }
        
    case 20:
        if nameBoss.text == "Boss1"{
            bossSc1 = true
        }else{
            bossSc2 = true
        }
        bossSc -= bossDf
        if bossSc <= 0 {
            bossSc = 0
        }else{
            heroLp -= bossSc
            if heroLp < 0{
                heroLp = 0
            }
            labelHero1.text = String (heroLp)
        }
        label1.text = String (bossLp + 5)
            
    default:
        print ("game over")
    }
    turnButton = false
}
    

    
    
    
    
    @IBAction func rollingDice(_ sender: Any) {
        let random = Int.random(in:1...20)
         resultRollingDice.text = String (random)
        if labelHero1.text! > "0" && label1.text! > "0"{
            if turnButton == true{
                bossTurn()
            }else{
                turn += 1
                descripationGame.text = ("turn: \(turn)")
                heroTurn()
            }
    
        }else{
            if label1.text! > "0"{
                descripationGame.text = " winner is Boss"
            }else {
                
        descripationGame.text = " winer is Hero"
            
        }
     
       
//
   }
    }
    func specialCapacity12(){
        if nameOfHero == "Knight"{
            specialCpacity = 100
            extraPoint = 5
            extraDamage = 10
            heroScp = true
        }else if nameOfHero == "Wizerd"{
            specialCpacity = 50
            extraPoint = 35
            extraDamage = 10
            heroScp = true
        }else{
            specialCpacity = 75
            extraPoint = 5
            extraDamage = 35
            heroScp = true
        }
            
            
        }
            
        
    
    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }


}

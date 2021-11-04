//
//  ViewController.swift
//  JawaherAbuLahsah_project02
//
//  Created by Jawaher Mohammad on 27/03/1443 AH.
//

import UIKit
struct Boss{
    var name:String
    var lifePoint:Int
    var defense:Int
    var powerDamage:Int
    var weaponDamage:Int
    var specialCapacity:Int
   
}
struct Hero{
    var name:String?
    var lifePoint:Int?
    var defense:Int?
    var powerDamage:Int?
    var weaponDamage:Int?
    var specialCapacity:Int?
    
    
}
class ViewController: UIViewController {
    
    @IBOutlet weak var nameplayer: UILabel!
    @IBOutlet weak var lPP: UILabel!
    @IBOutlet weak var dFP: UILabel!
    @IBOutlet weak var pDP: UILabel!
    @IBOutlet weak var wDP: UILabel!
    @IBOutlet weak var sCP: UILabel!
    
    @IBOutlet weak var nameBoss: UILabel!
    @IBOutlet weak var lP: UILabel!
    @IBOutlet weak var dF: UILabel!
    @IBOutlet weak var pD: UILabel!
    @IBOutlet weak var wD: UILabel!
    @IBOutlet weak var sC: UILabel!
    
    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var labelGame: UILabel!
    
    @IBOutlet weak var imageHeroB: UIImageView!
    @IBOutlet weak var imageBoss: UIImageView!
    
    @IBOutlet weak var turnLabel: UILabel!
    @IBAction func unwindViweController(segue:UIStoryboardSegue){
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomBossCame()
       player.name = nameplayer.text
        player.lifePoint = Int(lPP.text ?? "0")
        player.defense = Int(dFP.text ?? "0")
        player.powerDamage = Int(pDP.text ?? "0")
        player.weaponDamage = Int(wDP.text ?? "0")
        player.specialCapacity = Int(sCP.text ?? "0")
    }
    
    
    let boss1 = Boss(name: "Boss1", lifePoint: 250, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
    let boss2 = Boss(name: "Boss2", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
    
    
    var player = Hero(name: nil , lifePoint: nil, defense: nil, powerDamage: nil, weaponDamage: nil, specialCapacity: nil)

    
    
    var number = 0
    var turn = 0
    var pressButton = false
    var extraPoints = 0
    var extraDamage = 0
    var useScBoss1 = false
    var useScBoss2 = false
    var useScHero = false
    
    @IBAction func rollDice(_ sender: Any) {
        
        if lP.text! > "0" && lPP.text! > "0"{
            
            if lP.text! < "0" {
                lP.text! = "0"
            }
            if lPP.text! < "0"{
                lPP.text! = "0"
            }
            if pressButton == true {
            
                rollDiceForBoss()
            }else{
            
                turnLabel.text = "Turn : \(turn)"
                rollDiceForHero()
            }
        }else {
            if lP.text! > "0" {
                labelGame.text = "have winner -> boss"
            }else{
                labelGame.text = "have winner -> \((nameplayer.text) ?? "you")"
            }
        }
    }
    
   
    func randomBossCame(){
    let randomBoss = Int.random(in: 1 ... 2)
    switch randomBoss{
    case 1:
        nameBoss.text = boss1.name
        lP.text = String(boss1.lifePoint)
        dF.text = String(boss1.defense)
        pD.text = String(boss1.powerDamage)
        wD.text = String(boss1.weaponDamage)
        sC.text = String(boss1.specialCapacity)
        imageBoss.image = UIImage(named: "boss1")
    case 2:
        nameBoss.text = boss2.name
        lP.text = String(boss2.lifePoint)
        dF.text = String(boss2.defense)
        pD.text = String(boss2.powerDamage)
        wD.text = String(boss2.weaponDamage)
        sC.text = String(boss2.specialCapacity)
        imageBoss.image = UIImage(named: "boss2")
    default: print("Error")
    }
    }
    
    func rollDiceForHero(){
        player.powerDamage = Int(pDP.text!)!
        player.weaponDamage = Int(wDP.text!)!
        var lifePointBoss = Int(lP.text!)!
        let dFBoss = Int(dF.text!)!
        player.lifePoint = Int(lPP.text!)!
        
        let randomDiceHero = Int.random(in: 1 ... 20)
        switch randomDiceHero{
        case 1...9:
            if useScHero == true{
                player.powerDamage! += extraDamage
                useScHero = false
            }
            
            player.powerDamage! -= dFBoss
            
            
            if player.powerDamage! < 0{
                player.powerDamage = 0
            }
           lifePointBoss -= player.powerDamage!
            lP.text = String(lifePointBoss)
           labelGame.text = "Hero Use Power Damage \(player.powerDamage!)"
            randomLabel.text = "Result of the Dice : \(randomDiceHero)"
        case 10...19:
            if useScHero == true{
                player.weaponDamage! += extraDamage
                useScHero = false
            }
            player.weaponDamage! -= dFBoss
            if player.weaponDamage! < 0{
                player.weaponDamage! = 0
            }
            lifePointBoss -= player.weaponDamage!
            lP.text = String(lifePointBoss)
            labelGame.text = "Hero use Weapon Damage \(player.weaponDamage!)"
            randomLabel.text = "Result of the Dice : \(randomDiceHero)"
        case 20: print("Special Capacity ")
         UseSpecialCapacity()
           player.specialCapacity! -= dFBoss
          if player.specialCapacity! < 0{
                player.specialCapacity = 0
            }
           lifePointBoss -= player.specialCapacity!
           lPP.text = String(player.lifePoint! + extraPoints)
            labelGame.text = "Hero Use Special Capacity \(player.specialCapacity!)"
            randomLabel.text = "Result of the Dice : \(randomDiceHero)"
        default: print("Error")
        }
        pressButton = true
     
    }
    
    func rollDiceForBoss(){
        var pDamageBoss = Int(pD.text!)!
        var wDamageBoss = Int(wD.text!)!
        player.lifePoint = Int(lPP.text!)!
        player.defense = Int(dFP.text!)!
        var sCBoss = Int(sC.text!)!
        var lifePointBoss = Int(lP.text!)!
        
        let randomDiceBoss = Int.random(in: 1 ... 20)
        switch randomDiceBoss{
        case 1...9:
            if useScBoss2 == true {
                pDamageBoss += 32
                useScBoss2 = false
            }
           pDamageBoss -= player.defense!
            
            
            
            if pDamageBoss < 0{
                pDamageBoss = 0
            }
            
            player.lifePoint! -= pDamageBoss
            lPP.text = String(player.lifePoint!)
            labelGame.text = "Boss Use Power Damage \(pDamageBoss)"
            randomLabel.text = "Result of the Dice : \(randomDiceBoss)"
        case 10 ... 19:
            if useScBoss1 == true {
                wDamageBoss += 22
                useScBoss1 = false
            }
            wDamageBoss -= player.defense!
            if wDamageBoss < 0{
                wDamageBoss = 0
            }
            player.lifePoint! -= wDamageBoss
            lPP.text = String(player.lifePoint!)
            labelGame.text = "Boss Use Weapon Damage \(wDamageBoss)"
            randomLabel.text = "Result of the Dice : \(randomDiceBoss)"
        
        case 20:
            if nameBoss.text == "Boss1"{
                useScBoss1 = true
            }else{
                useScBoss2 = true
            }
            labelGame.text = "Hero Use Special Capacity \(sCBoss)"
            sCBoss -= player.defense!
           if sCBoss < 0{
                 player.specialCapacity = 0
             }
            player.lifePoint! -= sCBoss
            lP.text = String(lifePointBoss + 5)
            randomLabel.text = "Result of the Dice : \(randomDiceBoss)"
        default: print("Error")
        }
        pressButton = false
    }
    
    
    
    func UseSpecialCapacity(){
        if number == 1{
            player.specialCapacity = 100
            extraPoints = 5
            extraDamage = 10
            useScHero = true
        }else if number == 2 {
            player.specialCapacity = 50
            extraPoints = 35
            extraDamage = 10
            useScHero = true
        }else{
            player.specialCapacity = 75
            extraPoints = 5
            extraDamage = 35
            useScHero = true
        }
    }
    
}


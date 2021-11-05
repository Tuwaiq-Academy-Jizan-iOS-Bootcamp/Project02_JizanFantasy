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
    
    let boss1 = Boss(name: "Batman🦸🏻", lifePoint: 250, defense: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
    let boss2 = Boss(name: "Deadpool🥷🏻", lifePoint: 170, defense: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)
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
            if pressButton == true {
                rollDiceForBoss()
            }else{
                turn += 1
                turnLabel.text = "Turn : \(turn)"
                rollDiceForHero()
            }
        }else {
            if lP.text! > "0" {
                labelGame.text = "Have winner -> Boss 🏆"
            }else{
                labelGame.text = "have winner -> \((nameplayer.text) ?? "you") 🏆"
            }
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
                labelGame.text = "The boss defense succeeded in repelling the attack 🛡"
            }else{
           lifePointBoss -= player.powerDamage!
            if lifePointBoss < 0 {
                lifePointBoss = 0
            }
            lP.text = String(lifePointBoss)
        
           labelGame.text = "Hero Use Power Damage \(player.powerDamage!), Boss lost life point💔"
            }
            randomLabel.text = "Result of the Dice : \(randomDiceHero) 🎲"
        case 10...19:
            
            if useScHero == true{
                player.weaponDamage! += extraDamage
                useScHero = false
            }
            player.weaponDamage! -= dFBoss
            if player.weaponDamage! < 0{
                player.weaponDamage! = 0
        labelGame.text = "The boss defense succeeded in repelling the attack 🛡"
        }else{
            lifePointBoss -= player.weaponDamage!
            if lifePointBoss < 0 {
                lifePointBoss = 0
            }
            lP.text = String(lifePointBoss)
            labelGame.text = "Hero use Weapon Damage \(player.weaponDamage!), Boss lost life point💔"
        }
            randomLabel.text = "Result of the Dice : \(randomDiceHero) 🎲"
        case 20:
            
         UseSpecialCapacity()
           player.specialCapacity! -= dFBoss
          if player.specialCapacity! < 0{
                player.specialCapacity = 0
              labelGame.text = "The boss defense succeeded in repelling the attack 🛡"
          }else{
        labelGame.text = "Hero Use Special Capacity \(player.specialCapacity!), Boss lost life point💔"
           lifePointBoss -= player.specialCapacity!
            if lifePointBoss < 0 {
                lifePointBoss = 0
            }
            lP.text = String(lifePointBoss)
          }
           lPP.text = String(player.lifePoint! + extraPoints)
            randomLabel.text = "Result of the Dice : \(randomDiceHero) 🎲"
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
                labelGame.text = "The hero defense succeeded in repelling the attack 🛡"
            }else{
            
            player.lifePoint! -= pDamageBoss
            if player.lifePoint! < 0 {
                player.lifePoint = 0
            }
            lPP.text = String(player.lifePoint!)
            labelGame.text = "Boss Use Power Damage \(pDamageBoss), Hero lost life point💔"
            }
            randomLabel.text = "Result of the Dice : \(randomDiceBoss) 🎲"
        case 10 ... 19:
            
            if useScBoss1 == true {
                wDamageBoss += 22
                useScBoss1 = false
            }
            wDamageBoss -= player.defense!
            if wDamageBoss < 0{
                wDamageBoss = 0
                labelGame.text = "The hero defense succeeded in repelling the attack 🛡"
            }else{
            player.lifePoint! -= wDamageBoss
            if player.lifePoint! < 0 {
                player.lifePoint = 0
            }
            lPP.text = String(player.lifePoint!)
            labelGame.text = "Boss Use Weapon Damage \(wDamageBoss), Hero lost life point💔"
            }
            randomLabel.text = "Result of the Dice : \(randomDiceBoss) 🎲"
        
        case 20:
            
            if nameBoss.text == "Batman"{
                useScBoss1 = true
            }else{
                useScBoss2 = true
            }
            
            sCBoss -= player.defense!
           if sCBoss < 0{
                 player.specialCapacity = 0
               labelGame.text = "The hero defense succeeded in repelling the attack 🛡"
           }else{
            labelGame.text = "Boss Use Special Capacity \(sCBoss), Hero lost life point💔"
            player.lifePoint! -= sCBoss
            if player.lifePoint! < 0 {
                player.lifePoint = 0
            }
            lPP.text = String(player.lifePoint!)
           }
            lP.text = String(lifePointBoss + 5)
            randomLabel.text = "Result of the Dice : \(randomDiceBoss) 🎲"
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
    
    
    
    @IBAction func resetGame(_ sender: Any) {
        randomBossCame()
        turn = 0
        labelGame.text = ""
        turnLabel.text = ""
        randomLabel.text = ""
        nameplayer.text = ""
        imageHeroB.image = UIImage(named: "")
        lPP.text = ""
        dFP.text = ""
        pDP.text = ""
        wDP.text = ""
        sCP.text = ""
    }
    
    
    
}


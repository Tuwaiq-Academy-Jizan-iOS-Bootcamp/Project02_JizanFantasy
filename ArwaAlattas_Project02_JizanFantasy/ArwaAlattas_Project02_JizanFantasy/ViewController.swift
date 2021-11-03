//
//  ViewController.swift
//  ArwaAlattas_Project02_JizanFantasy
//
//  Created by Arwa Alattas on 27/03/1443 AH.
//

import UIKit


class Hero{
    var pointOfDispatch : Int
    var livePoint :Int
    var defanse : Int
    var powerDamage :Int
    var weaponDamage : Int
    var specialCapacity :Int
    init(pointOfDispatch : Int,livePoint :Int,defanse : Int,powerDamage :Int,weaponDamage : Int,specialCapacity :Int){
        self.pointOfDispatch = pointOfDispatch
        self.livePoint = livePoint
        self.defanse = defanse
        self.powerDamage = powerDamage
        self.weaponDamage = weaponDamage
        self.specialCapacity = specialCapacity
    
    }
}

class Bosses{
    var name :String
    var livePoint :Int
    var defanse : Int
    var powerDamage :Int
    var weaponDamage : Int
    var specialCapacity :Int
    init(name:String ,livePoint :Int,defanse : Int,powerDamage :Int,weaponDamage : Int,specialCapacity :Int){
        self.name = name
        self.livePoint = livePoint
        self.defanse = defanse
        self.powerDamage = powerDamage
        self.weaponDamage = weaponDamage
        self.specialCapacity = specialCapacity
    
    }
}
    
    
 

class ViewController: UIViewController {
   
    var boss1=Bosses(name : "Boss1",livePoint: 250, defanse: 30, powerDamage: 20, weaponDamage: 45, specialCapacity: 110)
var boss2 = Bosses(name : "Boss2",livePoint: 170, defanse: 25, powerDamage: 15, weaponDamage: 30, specialCapacity: 75)

var hero = Hero(pointOfDispatch: 0, livePoint: 0, defanse: 0, powerDamage: 0, weaponDamage: 0, specialCapacity: 0)

    
    @IBOutlet weak var nameOfBoss: UILabel!
    @IBOutlet weak var lifePointOfBoss: UILabel!
    @IBOutlet weak var defanseOfBoss: UILabel!
    @IBOutlet weak var powerDamageOfBoss: UILabel!
    @IBOutlet weak var weaponDamageOfBoss: UILabel!
    @IBOutlet weak var specialCapacityOfBoss: UILabel!
    @IBOutlet weak var imageBoss: UIImageView!
    
    
    @IBOutlet weak var nameOfHero: UILabel!
    @IBOutlet weak var LifePointOfHero: UILabel!
    @IBOutlet weak var defanseOfHero: UILabel!
    @IBOutlet weak var powerDamageOfHero: UILabel!
    @IBOutlet weak var weaponOfHero: UILabel!
    @IBOutlet weak var specialCapacityOfHero: UILabel!
    @IBOutlet weak var imageHero: UIImageView!
    
 
    
    override func viewWillAppear(_ animated: Bool) {
        let randomBoss = Int.random(in: 1...2)
        if randomBoss == 1 {
    imageBoss.image = UIImage(named: "bossimage1")
    nameOfBoss.text = boss1.name
lifePointOfBoss.text = String(boss1.livePoint)
defanseOfBoss.text = String(boss1.defanse)
powerDamageOfBoss.text = String(boss1.powerDamage)
weaponDamageOfBoss.text = String(boss1.weaponDamage)
specialCapacityOfBoss.text = String(boss1.specialCapacity)
        }else {
    imageBoss.image = UIImage(named:"bossimage2")
            nameOfBoss.text = boss2.name
        lifePointOfBoss.text = String(boss1.livePoint)
        defanseOfBoss.text = String(boss2.defanse)
        powerDamageOfBoss.text = String(boss2.powerDamage)
        weaponDamageOfBoss.text = String(boss2.weaponDamage)
        specialCapacityOfBoss.text = String(boss2.specialCapacity)
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func creetChallenger(seque:UIStoryboardSegue){
    }

    @IBOutlet weak var numberOfDice: UILabel!
    
    @IBAction func theGame(_ sender: Any) {
   hero.livePoint = Int(LifePointOfHero.text!)!
        
    let dice = Int.random(in: 1...20)
if dice >= 1 && dice <= 9{
    numberOfDice.text = String(dice)
    hero.livePoint -= (Int(powerDamageOfBoss.text!)! - Int(defanseOfBoss.text!)!)
    LifePointOfHero.text = String(hero.livePoint)
}else if dice >= 10 && dice <= 19{
    numberOfDice.text = String(dice)
    hero.livePoint -= (Int(weaponDamageOfBoss.text!)! - Int(defanseOfBoss.text!)!)
    LifePointOfHero.text = String(hero.livePoint)
}else if dice == 20{
    numberOfDice.text = String(dice)
    hero.livePoint -= (Int(specialCapacityOfBoss.text!)! - Int(defanseOfBoss.text!)!)
    LifePointOfHero.text = String(hero.livePoint)
//   Int(lifePointOfBoss.text) += 5
           
}
        
    }
    
    
    
}


//
//  ViewController.swift
//  PROJECT2
//
//  Created by زهور حسين on 28/03/1443 AH.
//

import UIKit

class Heroes {
    var lifePoint: Int
    var Defenes: Int
    var powerDamage: Int
    var weapondamage:Int
    var specialcapacity:Int
    init(lifePoint:Int,Defenes:Int,powerDamage:Int,weapondamage:Int,specialcapacity:Int){
        self.lifePoint = lifePoint
        self.Defenes = Defenes
        self.powerDamage = powerDamage
        self.weapondamage = weapondamage
        self.specialcapacity = specialcapacity
    }
    
}
class Boss {
    var lifePoint: Int
    var Defenes: Int
    var powerDamage: Int
    var weapondamage: Int
    var specialcapacity: Int
    init(lifePoint:Int,Defenes:Int,powerDamage:Int,weapondamage:Int,specialcapacity:Int){
        self.lifePoint = lifePoint
        self.Defenes = Defenes
        self.powerDamage = powerDamage
        self.weapondamage = weapondamage
        self.specialcapacity = specialcapacity
        
    }
   
}
class ViewController: UIViewController
{
    
    
    
    @IBOutlet weak var ResultDice: UILabel!
    @IBOutlet weak var label1: UILabel!
      @IBOutlet weak var label2: UILabel!
      
    @IBOutlet weak var Total2: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var Bossimage: UIImageView!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var labelTow: UILabel!
    
    @IBOutlet weak var Playerimage: UIImageView!
    @IBOutlet weak var labelFor: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        var Player = Heroes (lifePoint:0,Defenes:0,powerDamage:0,weapondamage:0,specialcapacity:0)


         var Boss1 = Boss (lifePoint:250,Defenes:30,powerDamage:20,weapondamage:45,specialcapacity:110)
         var Boss2 = Boss (lifePoint:170,Defenes:25,powerDamage:15,weapondamage:30,specialcapacity:75)

         
     func DiceRoll(){
            let Dicerandom :Int = .random(in: 1...20)
            switch Dicerandom {
            case  1...9:
                 ResultDice.text = "PowerDamage"
                 print("PowerDamage")
                lifePoint -=(Player.powerDamage - Defenes)
                let thePowerDamage=powerDamage - Defenes
                if thePowerDamage <=0 {
                    BossHealth
                }else{
                    BossHealth -= thePowerDamage
                }
                }
            
                
            case 10...19:
                 ResultDice.text = "weapondamage"
                 print("weapondamage")
                weapondamage -= Defenes
                weapondamage -= lifePoint
            case 20:
                ResultDice.text = "specialcapacity"
                print("specialcapacity")
            default : print(0)

                
                var PLP = Int(label1.text!)
                var PDF = Int(label2.text!)
                var PPD = Int(label3.text!)
                var PWD = Int(label4.text!)
                var PSC = Int(Total2.text!)
                var BLP = Int(labelOne.text!)
                var BDF = Int(labelTow.text!)
                var BPD = Int(labelThree.text!)
                var BWD = Int(labelFor.text!)
                var BSC = Int(Total.text!)
                var Turn = 0
                
               if (Turn1 %  2==0 ) {
                 PowerDamage -= Defenes
                 PowerDamage -= lifePoint
        
                   if 10...19 {
                       print(
                   }
            weapondamage -= Defenes
                weapondamage -= lifePoint
               


           func BossRandom(){
                let Boss =  Int.Random (in: 1...2)
                switch Boss {
               case 1:
                    Bossimage.image = UIImage(named: "Boss1")
                    labelOne.text = String(Boss1.lifePoint)
                    labelTow.text = String(Boss1.Defenes)
                    labelThree.text = String(Boss1.powerDamage)
                    labelFor.text = String(Boss1.weapondamage)
                    Total.text = String(Boss1.specialcapacity)
                    
                case 2:
                    Bossimage.image = UIImage(named: "Boss2")
                    labelOne.text = String(Boss2.lifePoint)
                    labelTow.text = String(Boss2.Defenes)
                    labelThree.text = String(Boss2.powerDamage)
                    labelFor.text = String(Boss2.weapondamage)
                    Total.text = String(Boss2.specialcapacity)
                    
               }

  }

   @IBAction func Rolleing(_ sender: Any) {
    }
}
            }
            

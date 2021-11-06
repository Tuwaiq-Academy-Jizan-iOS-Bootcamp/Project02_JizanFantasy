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
    @IBOutlet weak var description: UILabel!
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
        
        var LPPlayer = Int(label1.text!)!
        var DFPlayer = Int(label2.text!)!
        var PDPlayer = Int(label3.text!)!
        var WDPlayer = Int(label4.text!)!
        var SCPlayer = Int(Total2.text!)!
        var LFBoss = Int(labelOne.text!)!
        var DFBoss = Int(labelTow.text!)!
        var PDBoss = Int(labelThree.text!)!
        var WDBoss = Int(labelFor.text!)!
        var SCBoss = Int(Total.text!)!
        var Turn = 0
         
     func DiceRollHeroes(){
         let DicerandomHeroe :Int = .random(in: 1...20)
            switch DicerandomHeroe {
                case  1...9:
                
                ResultDice.text = "PowerDamage"
                 print("PowerDamage")
                PDPlayer -= DFBoss
                if PDPlayer < 0{
                    PDPlayer = 0
                    description.text =
                }else{
                    LFBoss -= PDPlayer
                  if  LFBoss < 0 {
                      LFBoss = 0
                    labelOne.text = String(LFBoss)
                description.text =
                  }
                }
                case 10...19 :
                    ResultDice.text = "weapondamage"
                    print("weapondamage")
                    WDPlayer -= DFBoss
                    if WDPlayer < 0{
                        WDPlayer = 0
                    }else{
                        LFBoss -= WDPlayer
                        if LFBoss < 0 {
                            LFBoss = 0
                            labelOne.text = String(LFBoss)
                        }
                    }
                     case 20 :
                ResultDice.text = "specialcapacity"
                print("specialcapacity")
            default : print(0)

                
    func DiceRollBoss(){
        
        let DicerandomBoss :Int = .random(in: 1...20)
        switch DicerandomBoss {
            case  1...9:
            }
                ResultDice.text = "PowerDamage"
                    print("PowerDamage")
        PDBoss -= DFPlayer
        if PDBoss < 0{
            PDBoss = 0
        }else{
            LPPlayer -= WDBoss
            if LPPlayer < 0{
                LPPlayer = 0
            
            label1.text = String(LPPlayer)
        }
        }
    case 10...19 :
        ResultDice.text = "weapondamage"
        print("weapondamage")
        WDBoss -= DFPlayer
        if WDBoss < 0{
            WDBoss = 0
        }else{
            LPPlayer -= WDBoss
            if LPPlayer < 0{
                LPPlayer = 0
        label1.text = String(LPPlayer)
            }
        }
            case 20 :
       ResultDice.text = "specialcapacity"
       print("specialcapacity")
   default : print(0)

                
            }
            
        }
        }
           func BossRandom(){
                let Boss =  Int.random (in: 1...2)
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
                default:
                    print("error")
               }

   @IBAction func Rolleing(_ sender: Any) {
       if labelOne.text! > "0" || label1.text! > "0"{
           
       }
   }
           }
                    }

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
    var name: String
    var lifePoint: Int
    var Defenes: Int
    var powerDamage: Int
    var weapondamage: Int
    var specialcapacity: Int
    init(name:String,lifePoint:Int,Defenes:Int,powerDamage:Int,weapondamage:Int,specialcapacity:Int){
        self.name = name
        self.lifePoint = lifePoint
        self.Defenes = Defenes
        self.powerDamage = powerDamage
        self.weapondamage = weapondamage
        self.specialcapacity = specialcapacity
    }
   
}
class ViewController: UIViewController {
    
    @IBAction func displayPage(segue: UIStoryboardSegue){
        
    }
    
    @IBOutlet weak var ResultDice: UILabel!
    @IBOutlet weak var label1: UILabel!
      @IBOutlet weak var label2: UILabel!
      
    @IBOutlet weak var turnlable: UILabel!
    @IBOutlet weak var NameBoss: UILabel!
    @IBOutlet weak var Total2: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var Nameplayer: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var Bossimage: UIImageView!
   
    @IBOutlet weak var descriptionL: UILabel!
    
    @IBOutlet weak var label4: UILabel!
   
    @IBOutlet weak var labelTow: UILabel!
    
    @IBOutlet weak var Playerimage: UIImageView!
    @IBOutlet weak var labelFor: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    
    var Player = Heroes (lifePoint:0,Defenes:0,powerDamage:0,weapondamage:0,specialcapacity:0)


            var Boss1 = Boss (name:"BOSS", lifePoint:250,Defenes:30,powerDamage:20,weapondamage:45,specialcapacity:110)
            var Boss2 = Boss (name:"BOSS2",lifePoint:170,Defenes:25,powerDamage:15,weapondamage:30,specialcapacity:75)
            
    
    var Turn = 0
    var turnBotton = false
    var extraPoint = 0
    var extraDamage = 0
    var SpecialCpacity = 0
    var bossSCONE = false
    var bossSCTOW = false
    var HeroSPC = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
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
         
    }
     
        
    
        
        
         
     func DiceRollHeroes(){
         var LPPlayer = Int(label1.text!)!
         var DFPlayer = Int(label2.text!)!
         var PDPlayer = Int(label3.text!)!
         var WDPlayer = Int(label4.text!)!
        // var SCPlayer = Int(Total2.text!)!
         var LFBoss = Int(labelOne.text!)!
         var DFBoss = Int(labelTow.text!)!
         var PDBoss = Int(labelThree.text!)!
         var WDBoss = Int(labelFor.text!)!
         var SCBoss = Int(Total.text!)!
         let DicerandomHeroe :Int = .random(in: 1...20)
            switch DicerandomHeroe {
                case  1...9:
                ResultDice.text = "\(DicerandomHeroe)"
               
                
                PDPlayer -= DFBoss
                  if  PDPlayer < 0 {
                      PDPlayer = 0
                      descriptionL.text = "Boss use Defenc .."
                  }
                LFBoss -= PDPlayer
                    labelOne.text = String(LFBoss)
                
                descriptionL.text = "Hero use his power damage aginst Boss .."
                labelOne.text = "\(LFBoss)"
                case 10...19 :
                   
                   
                    WDPlayer -= DFBoss
                    if WDPlayer < 0{
                        WDPlayer = 0
                        descriptionL.text = "Boss use Defenc .."
                    }
                LFBoss -= WDPlayer
                        
                            labelOne.text = String(LFBoss)
                    
                descriptionL.text = "Hero use his Weapon damage aginst Boss .."
                ResultDice.text = "\(DicerandomHeroe)"
                                        labelOne.text = "\(LFBoss)"
                     case 20 :
                SPC120()
                SpecialCpacity -= DFBoss
                if SpecialCpacity < 0{
                    SpecialCpacity = 0
                    
                }
                labelOne.text = "\(LFBoss)"
                ResultDice.text = "\(DicerandomHeroe)"
               
            default : print(0)

            }
         turnBotton = true
     }
    func DiceRollBoss(){
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
        let DicerandomBoss :Int = .random(in: 1...20)
        switch DicerandomBoss {
            case  1...9:
        
            ResultDice.text = "\(DicerandomBoss)"
        PDBoss -= DFPlayer
        if PDBoss < 0{
            PDBoss = 0
            descriptionL.text = "Hero use Defenc .."
        }
            LPPlayer -= PDBoss
           
            
            label1.text = String(LPPlayer)
           
    
            descriptionL.text = "Boss use his power damage aginst Player .."

          
            label1.text = "\(LPPlayer)"
    case 10...19 :
                
        WDBoss -= DFPlayer
        if WDBoss < 0{
            WDBoss = 0
            descriptionL.text = "Hero use Defenc .."
        }
            LPPlayer -= WDBoss
           
        label1.text = String(LPPlayer)
                
                
            
        
            descriptionL.text = "Boss use his Weapon Damage aginst Player .."
            ResultDice.text = "\(DicerandomBoss)"

            label1.text = "\(LPPlayer)"
          case 20 :
                if NameBoss.text == "BOSS" {
                    Boss1.specialcapacity -= DFPlayer
                    
                }else{
                    Boss2.specialcapacity -= DFPlayer
                    
                }
            ResultDice.text = "\(DicerandomBoss)"
            label1.text = "\(LPPlayer)"
            default : print("0")
            }
        turnBotton = false
            
        }
    
          
     
        func SPC120(){
            if Nameplayer.text == "Knight"{
                SpecialCpacity = 100
                extraPoint = 5
                extraDamage = 10
                HeroSPC = true
                }else if Nameplayer.text == "Wizard"{
                    SpecialCpacity = 50
                    extraPoint = 35
                    extraDamage = 10
                    HeroSPC = true
                }else{
                    SpecialCpacity = 75
                    extraPoint = 5
                    extraDamage = 35
                    HeroSPC = true
                }
        }
    
    @IBAction func Rolling(_ sender: Any) {
        if labelOne.text! > "0" && label1.text! > "0"{
            if turnBotton == true {
                DiceRollBoss()
            }else{
                Turn += 1
                turnlable.text = "Turn : \(Turn)"
                DiceRollHeroes()
            }
        }else{
            if labelOne.text! > "0" {
                descriptionL.text = " ....HAVE WINNER -> BOSS 🥇"
            }else{
                descriptionL.text = " ....HAVE WINNER -> \((Nameplayer.text ) ?? "YOU") 🥇"
            }
        }
    }
}

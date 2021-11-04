//
//  ViewControllerTwo.swift
//  DoaaAlageel_project
//
//  Created by Dua'a ageel on 27/03/1443 AH.
//

import UIKit

protocol rollGameHero{
    var name:String {get}
    var points:Int {get set}
    var lifepoint:Int? {get set}
    var defend:Int? {get set}
    var powerdamage:Int? {get set}
    var weapondamage:Int? {get set}
    var specialeffect:Int {get set}
}

class Herro:rollGameHero {
  
    var name: String
    
    var points: Int
    var lifepoint: Int?
    var defend: Int?
    var powerdamage: Int?
    var weapondamage: Int?
    var specialeffect: Int

    var dFMax:Int
    var pDMax:Int
    var wDMax:Int
    
    init(name: String,points:Int,lifepoint:Int?,defend:Int?,powerdamage:Int?,weapondamage:Int?,specialeffect:Int,dFMax:Int,pDMax:Int,wDMax:Int){
        self.name=name
        self.points=points
        self.lifepoint=lifepoint
        self.defend=defend
        self.powerdamage=powerdamage
        self.weapondamage=weapondamage
        self.specialeffect=specialeffect
       
       self.dFMax=dFMax
       self.pDMax=pDMax
       self.wDMax=wDMax
    }
}

class Knight:Herro{
   
    
}

class Wizard:Herro{
   

    
}

class Thief:Herro{
   
    
}

class ViewControllerTwo: UIViewController{
    
    
    @IBOutlet weak var viewamage: UIImageView!
    
@IBOutlet weak var Namepler2lable: UILabel!
        
@IBOutlet weak var nameplyer: UITextField!
        
@IBOutlet weak var pointss: UILabel!
        
@IBOutlet weak var lifepoint1: UITextField!
        
@IBOutlet weak var defend1: UITextField!
        
@IBOutlet weak var powerdamage1: UITextField!
        
    @IBOutlet weak var weapondamage1: UITextField!
    
    @IBOutlet weak var SClable1: UILabel!
    
    var knight = Knight(name:"Knight", points: 250, lifepoint: nil, defend:nil, powerdamage:nil, weapondamage:nil, specialeffect:100,dFMax:20, pDMax:30, wDMax:40)
    
    var wizard = Wizard(name:"Wizard", points: 245, lifepoint: nil, defend:nil, powerdamage:nil, weapondamage:nil, specialeffect:50, dFMax:15, pDMax:70, wDMax:20)
        
    var thief = Thief(name:"Thief", points: 210,  lifepoint: nil, defend:nil, powerdamage:nil, weapondamage:nil, specialeffect:75,dFMax:25, pDMax:15, wDMax:30)
    
        var amage = 0
        

    @IBOutlet var TextFName: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in TextFName{
            i.delegate = self
            
        }
    
        
       
        let player2 = nameplyer.text
        
        switch player2 {
        case "knight":
    lifepoint1.text = String(knight.lifepoint ?? 60)
    defend1.text = String(knight.defend ?? 20)
            
powerdamage1.text = String(knight.powerdamage ?? 30)
weapondamage1.text = String(knight.weapondamage ?? 40)
            
    case "wizard":
            lifepoint1.text = String(wizard.lifepoint ?? 90)
            defend1.text = String(wizard.defend ?? 15)
            powerdamage1.text = String(wizard.powerdamage ?? 70)
            weapondamage1.text = String(wizard.weapondamage ?? 20)
        
        
        case "thief" :
            lifepoint1.text = String(thief.lifepoint ?? 65)
            defend1.text = String(thief.defend ?? 25)
            powerdamage1.text = String(thief.powerdamage ?? 15)
            weapondamage1.text = String(thief.weapondamage ?? 30)
        default :
            print(" enter the name of player 2 ")

        
        
    }
   
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let rootVC = segue.destination as! ViewController
    rootVC.labelUsername2.text = lifepoint1.text
        rootVC.labelUsername2.text = nameplyer.text
    rootVC.user2LP.text = lifepoint1.text
        rootVC.user2DF.text = defend1.text
        rootVC.user2PD.text = powerdamage1.text
        rootVC.user2WD.text = weapondamage1.text
        rootVC.user2SC.text = SClable1.text
        
        
    }
    
    @IBAction func buttonamage(_ sender: Any) {
       
            
        }
        
        
        
    }
    

        extension ViewControllerTwo:UITextFieldDelegate{
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                
                if nameplyer.text == "knight" {
                    pointss.text = String(knight.points)
                    SClable1.text = String(knight.specialeffect)
                }
                else if nameplyer.text == "wizard" {
                    pointss.text = String(wizard.points)
                    SClable1.text = String(wizard.specialeffect)
                }
                else if nameplyer.text == "thief" {
                    pointss.text = String(thief.points)
                    SClable1.text = String(thief.specialeffect)
                }
        textField.resignFirstResponder()
                return true
                
            }
        }
    

            
            
            
            
            
            



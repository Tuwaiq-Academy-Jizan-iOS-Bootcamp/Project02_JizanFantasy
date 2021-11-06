//
//  ViewController.swift
//  DoaaAlageel_project
//
//  Created by Dua'a ageel on 27/03/1443 AH.
//

import UIKit
protocol rollGameUser{
    var name:String {get}
    var points:Int {get set}
    var lifepoint:Int? {get set}
    var defend:Int? {get set}
    var powerdamage:Int? {get set}
    var weapondamage:Int? {get set}
    var specialeffect:Int {get set}
}

class User:rollGameUser {
  
    var name: String
    var points: Int
    var lifepoint: Int?
    var defend: Int?
    var powerdamage: Int?
    var weapondamage: Int?
    var specialeffect: Int
    var addLP: Int
    var addPD: Int
    var addWD: Int

   
    init(name: String,points:Int,lifepoint:Int?,defend:Int?,powerdamage:Int?,weapondamage:Int?,specialeffect:Int, addLP: Int, addPD: Int, addWD: Int){
        self.name=name
        self.points=points
        self.lifepoint=lifepoint
        self.defend=defend
        self.powerdamage=powerdamage
        self.weapondamage=weapondamage
        self.specialeffect=specialeffect
        self.addLP=addLP
        self.addPD=addPD
        self.addWD=addWD
       
    }
}

class ViewController: UIViewController {

    
    @IBOutlet weak var dscripGame: UITextView!
    @IBOutlet weak var diceNumber: UILabel!
    
    
    @IBOutlet weak var lableUserName: UILabel!
    @IBOutlet weak var lableLP: UILabel!
    @IBOutlet weak var lableDF: UILabel!
    @IBOutlet weak var lablePD: UILabel!
    @IBOutlet weak var lableWD: UILabel!
    @IBOutlet weak var lableSC: UILabel!
    
    
    @IBOutlet weak var labelUsername2: UILabel!
    @IBOutlet weak var user2LP: UILabel!
    
    @IBOutlet weak var user2DF: UILabel!
    @IBOutlet weak var user2PD: UILabel!
    @IBOutlet weak var user2WD: UILabel!
    @IBOutlet weak var user2SC: UILabel!
    
    var user1 = User(name: "user1", points: 0, lifepoint: 250, defend: 30, powerdamage: 20, weapondamage: 45, specialeffect: 110, addLP: 5, addPD: 0, addWD: 22)
    var user2 = User(name: "user2", points: 0, lifepoint: 170, defend: 25, powerdamage: 15, weapondamage: 30, specialeffect: 75, addLP: 5, addPD: 32, addWD: 0)
    
    var turn = 0
    var turnNm = 0
    var endtern = false

    override func viewDidLoad() {
        super.viewDidLoad()
        let userS = Int.random(in:1...2)
        switch userS{
            
        case 1 :
            
    lableUserName.text = user1.name
    lableLP.text = String(user1.lifepoint!)
            lableDF.text = String(user1.defend!)
            lablePD.text = String(user1.powerdamage!)
            lableWD.text = String(user1.weapondamage!)
            lableSC.text = String(user1.specialeffect)
            
            
        case 2 :
            
            lableUserName.text = user2.name
            lableLP.text = String(user2.lifepoint!)
            lableDF.text = String(user2.defend!)
            lablePD.text = String(user2.powerdamage!)
            lableWD.text = String(user2.weapondamage!)
            lableSC.text = String(user2.specialeffect)
            
        
            
        default:
            print ("error")
        
            
        }
        
        
    }

    @IBAction func buttonPlus(_ sender: Any) {
        performSegue(withIdentifier: "link", sender: self)
    }
    @IBAction func unwindToRootViewController(segue: UIStoryboardSegue){
        print("to Root View Controller")
    }
  
   
    @IBAction func rolligdice(_ sender: UIButton) {
        var lifp1 = Int(lableLP.text!)!
        let def1 = Int(lableDF.text!)!
        let pow1 = Int(lablePD.text!)!
        let weap1 = Int(lableWD.text!)!
        
   
    var lifp2 = Int(user2LP.text!)!
        let def2 = Int(user2DF.text!)!
        let pow2 = Int(user2PD.text!)!
        let weap2 = Int(user2WD.text!)!
       
        
            
        if(lifp1 != 0 && lifp2 != 0){
        
        let randomdice = Int.random(in: 1...20)
        diceNumber.text = String(randomdice)
        
        let rolradaic = Int.random(in:1...20)
            
            
        switch rolradaic {
        case 1...9 :
            dscripGame.text += ("dise number: \(rolradaic)\n")
            dscripGame.text += (" point \(labelUsername2.text!) is \(user2LP.text!)\n")
            if ((def2 - pow1) <= 0){
                lifp2 = (lifp2 + (def2 - pow1 ))
                
                } else {
                    lifp2 = (lifp2 - 0)
                }
            user2LP.text = String(checkZero(num:lifp2))
            dscripGame.text += (" \(lableUserName.text!) use power damage : \(pow2)life point  \(user2LP.text!)\n")
            
        print("user use dp")
            
            
        
    case 10...19 :
            
            dscripGame.text += ("dise number : \(rolradaic)\n")
            dscripGame.text += ("life point: \( labelUsername2.text!) is \(user2LP.text!)\n")
            
            if ((def2 - weap1) <= 0){
        lifp2 = (lifp2 + (def2 - weap1))
                 }
                 else{
            lifp2 = (lifp2 - 0)
        }
            user2LP.text = String(checkZero(num:lifp2))
            dscripGame.text += (" \(lableUserName.text!) use power damage : \(pow1)life point  \(labelUsername2.text!) is \(user2LP.text!)\n")
            
            //lableLP.text = String(lifp2)
            
           
            
        default:
            print ("error")
    }
    
           
            
    
        switch rolradaic {
        case 1...9 :
            dscripGame.text += ("dise number : \(rolradaic)\n")
            dscripGame.text += ("life point: \( lableUserName.text!) is \(lableLP.text!)\n")
            if ((def1 - pow2) <= 0){
                lifp1 = (lifp1 + (def1 - pow2 ))
                } else {
                    lifp1 = (lifp1 - 0)
                }
            lableLP.text = String(checkZero(num:lifp1))
            print("\(lableLP.text!) use power damage : \(pow2) life point  is \(lableLP.text!)")
            
        print("player use dp")
        
    case 10...19 :
            
                dscripGame.text += ("dise number : \(rolradaic)\n")
                dscripGame.text += ("life point: \( lableUserName.text!) is \(lableLP.text!)\n")
            if ((def1 - weap2) <= 0){
        lifp1 = (lifp1 + (def1 - weap2))
                 }
                 else{
            lifp1 = (lifp1 - 0)
        }
            lableLP.text = String(checkZero(num:lifp1))
            print(" use weapon damage :\(weap2) life point :  is \(lableLP.text!)")
            
            
        
        default:
            print ("error")
        
    
    }
        
       
            
        }
        
    }

func checkZero(num: Int)-> Int{
    if(num > 0){
        return num
    }
    return 0
}

}




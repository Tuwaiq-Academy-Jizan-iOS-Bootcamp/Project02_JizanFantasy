//
//  ViewController.swift
//  MaramFaqih_Project02_JizanFantasy
//
//  Created by meme f on 27/03/1443 AH.
//

import UIKit

protocol rollGameBoss{
    var name:String {get}
    var points:Int {get set}
    var lP:Int {get set}
    var dF:Int {get set}
    var pD:Int {get set}
    var wD:Int {get set}
    var sC:Int {get set}
    var addLP:Int {get set}
    var addPD:Int {get set}
    var addWD:Int {get set}

    
}

class Boss:rollGameBoss{
    var addLP: Int
    
    var addPD: Int
    
    var addWD: Int
    
    var name: String
    var points: Int
    var lP: Int
    var dF: Int
    var pD: Int
    var wD: Int
    var sC: Int
    init(name: String,points:Int,lP:Int,dF:Int,pD:Int,wD:Int,sC:Int,addLP: Int,addPD: Int,addWD: Int){
        self.name=name
        self.points=points
        self.lP=lP
        self.dF=dF
        self.pD=pD
        self.wD=wD
        self.sC=sC
        
        self.addLP=addLP
        self.addPD=addPD
        self.addWD=addWD
    }
   
}
//struct Damage:rollGameBoss{
//    var name: String
//
//    var points: Int
//
//    var lP: Int
//
//    var dF: Int
//
//    var pD: Int
//
//    var wD: Int
//
//    var sC: Int
//    mutating func powerDamage(lP: Int,dF: Int,pD: Int)-> String{
//        self.lP = lP - (pD-dF)
//    return String(lP)
//    }
//
//
//}

    
    
    

class ViewController: UIViewController {
    @IBOutlet weak var ButtonRollingOutlet: UIButton!
    @IBOutlet weak var desccriptionGame: UITextView!
    
    @IBOutlet weak var resultDiceLabel: UILabel!
    @IBOutlet weak var player2LabelName: UILabel!
    
    @IBOutlet weak var player2LabelLP: UILabel!
    
    @IBOutlet weak var player2LabelDF: UILabel!
    
    @IBOutlet weak var player2LabelPD: UILabel!
    
    @IBOutlet weak var player2LabelWD: UILabel!
    
    @IBOutlet weak var player2LabelSC: UILabel!
    
    @IBOutlet weak var bossLabelName: UILabel!
    @IBOutlet weak var bossLabelLP: UILabel!
    @IBOutlet weak var bossLabelDF: UILabel!
    
    @IBOutlet weak var bossLabelDP: UILabel!
    
    @IBOutlet weak var bossLabelWD: UILabel!
    
    @IBOutlet weak var bossLabelSC: UILabel!
    
    var boss1 = Boss(name: "Boss1", points: 0, lP: 250, dF: 30, pD: 20, wD: 45, sC: 110,addLP: 5,addPD: 0,addWD: 22)
    var boss2 = Boss(name: "Boss2", points: 0, lP: 170, dF: 25, pD: 15, wD: 30, sC: 75,addLP: 5 ,addPD: 32,addWD: 0)

    //var turn = 0
    var turnNo = 0
    
    var addLPP1 = 0
    var addPDP1 = 0
    var addWDP1 = 0
    
    var addLPP2 = 0
    var addPDP2 = 0
    var addWDP2 = 0
    
    var tempLP1 = 0
    var tempPD1 = 0
    var tempWD1 = 0
    
    var tempLP2 = 0
    var tempPD2 = 0
    var tempWD2 = 0
    
    var endTurn = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let user1 = Int.random(in:1...2)
       // func randomBoss(user: user1)
        switch user1{
        case 1 :
            
            bossLabelName.text = boss1.name
            bossLabelLP.text = String(boss1.lP)
            bossLabelDF.text = String(boss1.dF)
            bossLabelDP.text = String(boss1.pD)
            bossLabelWD.text = String(boss1.wD)
            bossLabelSC.text = String(boss1.sC)
             addLPP1 = boss1.addLP
             addPDP1 = boss1.addPD
             addWDP1 = boss1.addWD
            
            
        default:
            
            bossLabelName.text = boss2.name
            bossLabelLP.text = String(boss2.lP)
            bossLabelDF.text = String(boss2.dF)
            bossLabelDP.text = String(boss2.pD)
            bossLabelWD.text = String(boss2.wD)
            bossLabelSC.text = String(boss2.sC)
             addLPP1 = boss2.addLP
             addPDP1 = boss2.addPD
             addWDP1 = boss2.addWD
        
            
        }
        
    }
    @IBAction func rollingButton(_ sender: UIButton ) {
        var lPP1 = Int(bossLabelLP.text!)!
        let lDFP1 = Int(bossLabelDF.text!)!
        let lDPP1 = Int(bossLabelDP.text!)!
        let lWDP1 = Int(bossLabelWD.text!)!
        let lWSC1 = Int(bossLabelSC.text!)!
        
        var lPP2 = Int(player2LabelLP.text!)!
        let lDFP2 = Int(player2LabelDF.text!)!
        let lDPP2 = Int(player2LabelPD.text!)!
        let lWDP2 = Int(player2LabelWD.text!)!
        let lWSC2 = Int(player2LabelSC.text!)!
        
        
        if(lPP1 != 0 && lPP2 != 0){
        //var lPP2 = Int(player2LabelDF.text!)
        //var lPP2 = Int(player2LabelDF.text!)
        let randomDICE = Int.random(in: 1...20)
        resultDiceLabel.text = String(randomDICE)
         
   
        //Turn Boss
        if endTurn == false{
           // turn += 1
           // if ( turn == 1){
                //if endTern == false {
                    turnNo += 1 //}
            desccriptionGame.text += "-------------------- Turn \(turnNo) --------------------\n"
                //turn = 0
                endTurn = true
                
       // }
            
            desccriptionGame.text += ("Dise number 🎲 : ( \(randomDICE) )\n")
            switch randomDICE {

        case 1...9 :
                //desccriptionGame.text += ("Dise number: \(randomDICE)\n")
                desccriptionGame.text += ("life point: \( player2LabelName.text!) is \(lPP2)\n")
           // player2LabelDF.text! = String(Int(player2LabelDF.text!) - 1)
                if ((lDFP2 - (lDPP1 + tempPD1)) <= 0) {
                    lPP2 = (lPP2 + (lDFP2 - (lDPP1+tempPD1)))
                    if(tempPD1 != 0){
                        tempPD1 = 0
                    }
                    
           
                }else{
                    lPP2 = (lPP2 - 0)
                }
                
                player2LabelLP.text = String(checkZero(num:lPP2))
                desccriptionGame.text += ("\(bossLabelName.text!) use Power Damage : \( lDPP1) life point: \( player2LabelName.text!) is \( player2LabelLP.text!)\n")
//                if lPP2>=0{
//                    player2LabelLP.text = String(lPP2)
//                }else{
//                    player2LabelLP.text = String(0)
//                }
                //print("Boss use dp")
                
        case 10...19 :
               // desccriptionGame.text += ("Dise number 🎲 : \(randomDICE)\n")
                
                desccriptionGame.text += ("life point \( player2LabelName.text!) is \( player2LabelLP.text!)\n")
                if ((lDFP2 - (lWDP1+tempWD1)) <= 0) {
                    lPP2 = (lPP2 + (lDFP2 - (lWDP1+tempWD1)))
                    if(tempWD1 != 0){
                        tempWD1 = 0
                    }
                }
                else{
                    lPP2 = (lPP2 - 0)
                }
                player2LabelLP.text = String(checkZero(num:lPP2))
                desccriptionGame.text += ("\(bossLabelName.text!) use Weapon Damage : \(lWDP1) life point: \( player2LabelName.text!) is \( player2LabelLP.text!)\n")
                
//                if lPP2>=0{
//                    player2LabelLP.text = String(lPP2)
//                }else{
//                    player2LabelLP.text = String(0)
//                }}
               // print("Boss use wd")
            
            
        default:
                
                //desccriptionGame.text += ("Dise number: \(randomDICE)\n")
                desccriptionGame.text += ("life point: \( player2LabelName.text!) is \(lPP2)\n")
                desccriptionGame.text += ("point \(bossLabelName.text!) is \(lPP1)\n")
                lPP1 += addLPP1
                bossLabelLP.text = String(checkZero(num:lPP1))
                tempPD1 += addPDP1
                tempWD1 += addWDP1
                if ((lDFP2 - lWSC1) <= 0) {
                    lPP2 = (lPP2 + (lDFP2 - lWSC1))
                    
                }
                else{
                    lPP2 = (lPP2 - 0)
                }
                player2LabelLP.text = String(checkZero(num:lPP2))
                desccriptionGame.text += ("\(bossLabelName.text!) use Spécial Capacity: \(lWSC1) life point: \( player2LabelName.text!) is \( player2LabelLP.text!),and life point \(bossLabelName.text!) :\(bossLabelLP.text!)\n")
                
                
                    //print("Boss use cs")
            
            }
            desccriptionGame.text += "----------------------------------------\n"
        }
        //Turn Hero
        else{
            //turn = 0
            endTurn = false
            desccriptionGame.text += ("Dise number 🎲 :( \(randomDICE) ) \n")
            switch randomDICE {
                
            case 1...9 :
                //desccriptionGame.text += ("Dise number: \(randomDICE)\n")
                desccriptionGame.text += ("point \(player2LabelName.text!) is \(lPP1)\n")
                if ((lDFP1 - (lDPP2-tempPD2)) <= 0) {
                    lPP1 = (lPP1 + (lDFP1 - lDPP2))
                    if(tempPD2 != 0){
                        tempPD2 = 0
                    }
                }
                else{
                    lPP1 = (lPP1 - 0)
                }
                bossLabelLP.text = String(checkZero(num:lPP1))
                desccriptionGame.text += (" \( player2LabelName.text!) use Power Damage : \( lDPP2) life point \(bossLabelName.text!) is \(bossLabelLP.text!)\n")
//                if lPP1>=0{
//                bossLabelLP.text = String(lPP1)
//                }else{
//                    bossLabelLP.text = String(0)
//                }}
               // print("Hero use dp")
                
            case 10...19 :
               // desccriptionGame.text += ("Dise number: \(randomDICE)\n")
                desccriptionGame.text += ("point \(bossLabelName.text!) is \(lPP1)\n")
                
                if ((lDFP1 - (lWDP2+tempWD2)) <= 0) {
                    lPP1 = (lPP1 + (lDFP1 - lWDP2))
                    if(tempWD2 != 0){
                        tempWD2 = 0
                    }
                }
                else{
                    lPP1 = (lPP1 - 0)
                }
                bossLabelLP.text = String(checkZero(num:lPP1))
                desccriptionGame.text += (" \( player2LabelName.text!) use  Weapon Damage  : \( lDPP2) life point \(bossLabelName.text!) is \(bossLabelLP.text!)\n")
               
//                     if lPP1>=0{
//                     bossLabelLP.text = String(lPP1)
//                     }else{
//                         bossLabelLP.text = String(0)
//                     }}
                print("Hero use wd")
                
            default:
              //  desccriptionGame.text += ("Dise number: \(randomDICE)\n")
                desccriptionGame.text += ("point \(bossLabelName.text!) is \(lPP1)\n")
                desccriptionGame.text += ("point \(player2LabelName.text!) is \(lPP2)\n")
                lPP2 += addLPP2
                player2LabelLP.text = String(checkZero(num:lPP2))
                tempPD2 += addPDP2
                tempWD2 += addWDP2
                if ((lDFP1 - lWSC2) <= 0) {
                    lPP1 = (lPP1 + (lDFP1 - lWSC2))
                    
                }
                else{
                    lPP1 = (lPP1 - 0)
                }
                bossLabelLP.text = String(checkZero(num:lPP1))
                desccriptionGame.text += ("\(player2LabelLP.text!) use Spécial Capacity: \(lWDP2) life point \(bossLabelName.text!): is \(bossLabelLP.text!),and life point \( player2LabelName.text!) :\(player2LabelLP.text!)\n")
                
               // print("Hero use sc")
                
            }
            desccriptionGame.text += "----------------- End Turn \(turnNo) -----------------\n"
            desccriptionGame.text += ("\n")
        }
            
        }
   
        
        if(((Int(player2LabelLP.text!) == 0 || Int(bossLabelLP.text!) == 0)) && (player2LabelName.text != "Name Player 2")){
            if (Int(player2LabelLP.text!) == 0){
                desccriptionGame.text += ("===================================\n")
                desccriptionGame.text += ("**************************************\n")
                desccriptionGame.text += ("The winner Is \(bossLabelName.text!) \n")
                desccriptionGame.text += ("**************************************\n")
                desccriptionGame.text += ("===================================\n")
                
            }else{
                desccriptionGame.text += ("===================================\n")
                desccriptionGame.text += ("**************************************\n")
                desccriptionGame.text += ("The winner Is \(player2LabelName.text!) \n")
                desccriptionGame.text += ("**************************************\n")
                desccriptionGame.text += ("===================================\n")
                
            }
            ButtonRollingOutlet.isEnabled = false
        }
        if (player2LabelName.text == "Name Player 2"){
            desccriptionGame.text += ("===================================\n")
            desccriptionGame.text += ("**************************************\n")
            desccriptionGame.text += ("Pless add player 2 \n")
            desccriptionGame.text += ("**************************************\n")
            desccriptionGame.text += ("===================================\n")
            
        }

        
    }
    func checkZero(num: Int)-> Int{
        if(num > 0){
            return num
        }
        return 0
    }
    
    @IBAction func addPlayerButton(_ sender: Any) {
        performSegue(withIdentifier: "addPlayer", sender: self)
    }
    @IBAction func unwindToRootViewController(segue: UIStoryboardSegue){
        
    }
   /* func randomBoss(user: Int){
        bossLabelName.text = boss1.name
        bossLabelLP.text = String(boss"\(user)".lP)
        bossLabelDF.text = String(boss1.dF)
        bossLabelDP.text = String(boss1.pD)
        bossLabelWD.text = String(boss1.wD)
        
        bossLabelSC.text = String(boss1.sC)
    }
    
    }*/ }


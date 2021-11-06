//
//  ViewController.swift
//  MaramFaqih_Project02_JizanFantasy
//
//  Created by Maram f on 27/03/1443 AH.
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


    

class ViewController: UIViewController {
    //Image outlet
    @IBOutlet weak var imageViewPlayer2v1: UIImageView!
    @IBOutlet weak var imageViewPlayer1: UIImageView!
    
    @IBOutlet weak var ButtonRollingOutlet: UIButton!
    @IBOutlet weak var desccriptionGame: UITextView!
    
    //label outlet
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
    
    //object from Hero class
    var boss1 = Boss(name: "Boss1", points: 0, lP: 250, dF: 30, pD: 20, wD: 45, sC: 110,addLP: 5,addPD: 0,addWD: 22)
    var boss2 = Boss(name: "Boss2", points: 0, lP: 170, dF: 25, pD: 15, wD: 30, sC: 75,addLP: 5 ,addPD: 32,addWD: 0)

    var turnNo = 0

    var addLPP1 = 0
    var addPDP1 = 0
    var addWDP1 = 0
    
    var addLPP2 = ""
    var addPDP2 = ""
    var addWDP2 = ""
    
    @IBOutlet weak var pdLp1: UILabel!
    @IBOutlet weak var wdLp1: UILabel!
    
    @IBOutlet weak var pdLp2: UILabel!
    @IBOutlet weak var wdLp2: UILabel!
    
    //Temporary variables to save and delete values
    var tempLP1 = 0
    var tempPD1 = 0
    var tempWD1 = 0
 
    var tempLP2 = 0
    var tempPD2 = 0
    var tempWD2 = 0
    
    //Flag for end turn
    var endTurn = false
    
    var user1Random = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Variable "user1" to save a random value and choose the player
         user1Random = Int.random(in:1...2)
         heroChoice(user1 : user1Random )
       
        desccriptionGame.textAlignment = .center
        
    }
    
    // Action to launch the game
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
        
        //If-statment to complete and start the game
        if(lPP1 != 0 && lPP2 != 0){

        //Turn Boss
        let randomDICE = Int.random(in: 1...20)
        resultDiceLabel.text = String(randomDICE)
         
        if endTurn == false{
       
                    turnNo += 1
            desccriptionGame.text += "-------------------- Turn \(turnNo) --------------------\n"
                endTurn = true
            desccriptionGame.text += ("Dise number 🎲 : ( \(randomDICE) )\n")
            
            switch randomDICE {

        case 1...9 :
                
                desccriptionGame.text += ("life point: \( player2LabelName.text!) is \(lPP2)\n")
                if ((lDFP2 - (lDPP1 + tempPD1)) <= 0) {
                    lPP2 = (lPP2 + (lDFP2 - (lDPP1+tempPD1)))
                    if(tempPD1 != 0){
                        tempPD1 = 0
                        pdLp1.text = ""
                    }
                    
                    
           
                }
                
                
                player2LabelLP.text = String(checkZero(num:lPP2))
                desccriptionGame.text += ("\(bossLabelName.text!) use Power Damage : \( lDPP1) ,life point: \( player2LabelName.text!) is \( player2LabelLP.text!)\n")
                
        case 10...19 :
                
                desccriptionGame.text += ("life point \( player2LabelName.text!) is \( player2LabelLP.text!)\n")
                if ((lDFP2 - (lWDP1+tempWD1)) <= 0) {
                    lPP2 = (lPP2 + (lDFP2 - (lWDP1+tempWD1)))
                    if(tempWD1 != 0){
                        tempWD1 = 0
                        wdLp1.text = ""
                    }
                }
                
             
                player2LabelLP.text = String(checkZero(num:lPP2))
                desccriptionGame.text += ("\(bossLabelName.text!) use Weapon Damage : \(lWDP1) ,life point: \( player2LabelName.text!) is \( player2LabelLP.text!)\n")
            
            
        default:
                
                desccriptionGame.text += ("life point: \( player2LabelName.text!) is \(lPP2)\n")
                desccriptionGame.text += ("point \(bossLabelName.text!) is \(lPP1)\n")
                lPP1 += addLPP1
                bossLabelLP.text = String(checkZero(num:lPP1))
                tempPD1 += addPDP1
                tempWD1 += addWDP1
                if ((lDFP2 - lWSC1) <= 0) {
                    lPP2 = (lPP2 + (lDFP2 - lWSC1))
                    
                }
            
                if(tempPD1 > 0){
                    pdLp1.text = "+\(tempPD1)"
                }
                if(tempWD1 > 0){
                    wdLp1.text = "+\(tempWD1)"
                }
                
                
                player2LabelLP.text = String(checkZero(num:lPP2))
                desccriptionGame.text += ("\(bossLabelName.text!) use Special Capacity: \(lWSC1) with , +\(tempPD1) PD, +\(addWDP1) WD,  +\(addLPP1) LP, ,life point: \( player2LabelName.text!) is \( player2LabelLP.text!),and life point \(bossLabelName.text!) :\(bossLabelLP.text!)\n")
            }
            desccriptionGame.text += "----------------------------------------\n"
           
        }
            
            
        //Turn Hero
        else{
            
            endTurn = false
            desccriptionGame.text += ("Dise number 🎲 :( \(randomDICE) ) \n")
            switch randomDICE {
                
            case 1...9 :
                
                desccriptionGame.text += ("point \(bossLabelName.text!) is \(lPP1)\n")
                if ((lDFP1 - (lDPP2-tempPD2)) <= 0) {
                    lPP1 = (lPP1 + (lDFP1 - lDPP2))
                    if(tempPD2 != 0){
                        tempPD2 = 0
                        pdLp2.text = ""
                    }
                }
                
              
                bossLabelLP.text = String(checkZero(num:lPP1))
                desccriptionGame.text += (" \( player2LabelName.text!) use Power Damage : \( lDPP2) ,life point \(bossLabelName.text!) is \(bossLabelLP.text!)\n")

                
            case 10...19 :
             
                desccriptionGame.text += ("point \(bossLabelName.text!) is \(lPP1)\n")
                
                if ((lDFP1 - (lWDP2+tempWD2)) <= 0) {
                    lPP1 = (lPP1 + (lDFP1 - lWDP2))
                    if(tempWD2 != 0){
                        tempWD2 = 0
                        wdLp2.text = ""
                    }
                }
                
               
                bossLabelLP.text = String(checkZero(num:lPP1))
                desccriptionGame.text += (" \( player2LabelName.text!) use  Weapon Damage  : \( lDPP2) ,life point \(bossLabelName.text!) is \(bossLabelLP.text!)\n")
            
                
                
            default:
             
                desccriptionGame.text += ("point \(bossLabelName.text!) is \(lPP1)\n")
                desccriptionGame.text += ("point \(player2LabelName.text!) is \(lPP2)\n")
                lPP2 += Int(addLPP2)!
                player2LabelLP.text = String(checkZero(num:lPP2))
                tempPD2 += Int(addPDP2)!
                tempWD2 += Int(addWDP2)!
                if ((lDFP1 - lWSC2) <= 0) {
                    lPP1 = (lPP1 + (lDFP1 - lWSC2))
                    
                }
              
               
                if(tempPD2 > 0){
                    pdLp2.text = "+\(tempPD2)"
                }
                if(tempWD2 > 0){
                    wdLp2.text = "+\(tempWD2)"
                }
                bossLabelLP.text = String(checkZero(num:lPP1))
                desccriptionGame.text += ("\(player2LabelLP.text!) use Special Capacity: \(lWDP2) with , +\(tempPD2) PD, +\(addWDP2) WD,  +\(addLPP2) LP, life point \(bossLabelName.text!): \(bossLabelLP.text!),and life point \( player2LabelName.text!) : \(player2LabelLP.text!)\n")
                
            }
            desccriptionGame.text += "----------------- End Turn \(turnNo) -----------------\n"
            desccriptionGame.text += ("\n")
        }
            
        }
   
        // End of the game & print Winner
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
        //If-statment to Choose the player to start the game
        if (player2LabelName.text == "Name Player 2"){
            desccriptionGame.text += ("===================================\n")
            desccriptionGame.text += ("**************************************\n")
            desccriptionGame.text += ("Pless add player 2 \n")
            desccriptionGame.text += ("**************************************\n")
            desccriptionGame.text += ("===================================\n")
        }

        
    }
    
    //function to return a negative result = zero
    func checkZero(num: Int)-> Int{
        if(num > 0){
            return num
        }
        return 0
    }
    //segue to add player and return data
    @IBAction func addPlayerButton(_ sender: Any) {
        performSegue(withIdentifier: "addPlayer", sender: self)
    }
    @IBAction func unwindToRootViewController(segue: UIStoryboardSegue){
        
    }
    
    @IBAction func restButton(_ sender: Any) {
        user1Random = Int.random(in:1...2)
        heroChoice(user1 : user1Random )
        player2LabelName.text = "Name Player 2"
        player2LabelLP.text = "0"
        player2LabelDF.text = "0"
        player2LabelPD.text = "0"
        player2LabelWD.text = "0"
        player2LabelSC.text = "0"
        imageViewPlayer2v1.image=UIImage(named: "PLAYER2")
        desccriptionGame.text = ""
        ButtonRollingOutlet.isEnabled = true
        
        
    }
    func heroChoice(user1 : Int){
        switch user1{
        case 1 :
            imageViewPlayer1.image=UIImage(named: "Boss1")
            
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
            imageViewPlayer1.image=UIImage(named: "Boss2")
            
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
 }


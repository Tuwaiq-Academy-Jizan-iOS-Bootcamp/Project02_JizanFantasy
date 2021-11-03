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

    
}

class Boss:rollGameBoss{
    var name: String
    var points: Int
    var lP: Int
    var dF: Int
    var pD: Int
    var wD: Int
    var sC: Int
    init(name: String,points:Int,lP:Int,dF:Int,pD:Int,wD:Int,sC:Int){
        self.name=name
        self.points=points
        self.lP=lP
        self.dF=dF
        self.pD=pD
        self.wD=wD
        self.sC=sC}
   
}
    

    
    
    

class ViewController: UIViewController {
    
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
    
    var boss1 = Boss(name: "Boss1", points: 0, lP: 250, dF: 30, pD: 20, wD: 45, sC: 110)
    var boss2 = Boss(name: "Boss2", points: 0, lP: 170, dF: 25, pD: 15, wD: 30, sC: 75)
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
            
            
        case 2 :
            
            bossLabelName.text = boss2.name
            bossLabelLP.text = String(boss2.lP)
            bossLabelDF.text = String(boss2.dF)
            bossLabelDP.text = String(boss2.pD)
            bossLabelWD.text = String(boss2.wD)
            bossLabelSC.text = String(boss2.sC)
        default:
            print("Error")
            
        }
        
    }
    @IBAction func rollingButton(_ sender: Any) {
        
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


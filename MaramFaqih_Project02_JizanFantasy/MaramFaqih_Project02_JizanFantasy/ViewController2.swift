//
//  ViewController2.swift
//  MaramFaqih_Project02_JizanFantasy
//
//  Created by meme f on 27/03/1443 AH.
//

import UIKit

class Hero {
  
    var name: String
    var points: Int
    var lP: Int
    var dF: Int
    var pD: Int
    var wD: Int
    var sC: Int
    
    var addLP: Int
    var addPD: Int
    var addWD: Int

    var dFMax:Int
    var pDMax:Int
    var wDMax:Int
    
    init(name: String,points:Int,lP:Int,dF:Int,pD:Int,wD:Int,sC:Int,dFMax:Int,pDMax:Int,wDMax:Int,addLP: Int,addPD: Int,addWD: Int){
        self.name=name
        self.points=points
        self.lP=lP
        self.dF=dF
        self.pD=pD
        self.wD=wD
        self.sC=sC
       
       self.dFMax=dFMax
       self.pDMax=pDMax
       self.wDMax=wDMax
        
        self.addLP=addLP
        self.addPD=addPD
        self.addWD=addWD
    }


    
}


class ViewController2: UIViewController {
    //steper outlet
    @IBOutlet weak var stepLP: UIStepper!
    @IBOutlet weak var stepDF: UIStepper!
    @IBOutlet weak var stepPD: UIStepper!
    @IBOutlet weak var stepWD: UIStepper!
    
    //label outlet
    @IBOutlet weak var namePlayer2: UILabel!
    @IBOutlet weak var sCLabel: UILabel!
    @IBOutlet weak var pointPlayer2Label: UILabel!
    
    @IBOutlet weak var wDPlus: UILabel!
    @IBOutlet weak var lPPlus: UILabel!
    @IBOutlet weak var pDPlus: UILabel!
    
    @IBOutlet weak var pointLabelPlayer: UILabel!
    
    //text field outlet
    @IBOutlet weak var lPLabel: UITextField!
    @IBOutlet weak var wDLabel: UITextField!
    @IBOutlet weak var pDLabel: UITextField!
    @IBOutlet weak var dFLabel: UITextField!
    @IBOutlet weak var namePlayer: UITextField!
    

    @IBOutlet var textFieldSet: [UITextField]!
    @IBOutlet weak var imageViewPlayer2: UIImageView!
    @IBOutlet weak var textViewStory: UITextView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    //object from Hero class
    var knight = Hero(name:"Knight", points: 250, lP: 0, dF:0, pD:0, wD:0, sC:100,dFMax:20, pDMax:30, wDMax:40, addLP: 5,addPD: 0,addWD: 10)
    var wizard = Hero(name:"Wizard", points: 245, lP: 0, dF:0, pD:0, wD:0, sC:50, dFMax:15, pDMax:70, wDMax:20, addLP: 35 ,addPD: 10,addWD: 0)
    var thief = Hero(name:"Thief", points: 210,  lP: 0, dF:0, pD:0, wD:0, sC:75,dFMax:25, pDMax:15, wDMax:30, addLP: 5,addPD: 0,addWD: 35)
    
   //Variables to save values ​​and transfer them to VC1
    var lPValue = 0
    var pDValue = 0
    var wDValue = 0
    


    override func viewDidLoad() {
        
        super.viewDidLoad()
   // Do any additional setup after loading the view.
        
        
        for i in textFieldSet{
            i.delegate = self
    }
        namePlayer.delegate = self
        let player2 = namePlayer.text
       
        stepLP.stepValue = 1
        stepDF.stepValue = 1
        stepPD.stepValue = 1
        stepWD.stepValue = 1
        if player2 == "" {
            stepLP.isUserInteractionEnabled = false
            stepDF.isUserInteractionEnabled = false
            stepPD.isUserInteractionEnabled = false
            stepWD.isUserInteractionEnabled = false
            buttonOutlet.isUserInteractionEnabled = false
           
        }
        
        dFLabel.isUserInteractionEnabled = false
        pDLabel.isUserInteractionEnabled = false
        wDLabel.isUserInteractionEnabled = false
        

            textViewStory.text = "Please enter the player name... "
      
        
    }
    


 //Action UIStepper & Calculate the remaining points
    
    @IBAction func stepLPAction(_ sender: UIStepper) {
        
        if(( (Int(pointPlayer2Label.text!)!) != 0 )){
            
            lPLabel.text = Int(sender.value).description
            
            pointPlayer2Label.text =  String(Int(pointLabelPlayer.text!)! - Int( lPLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( dFLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( pDLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( wDLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( sCLabel.text!)!)
            
//            pointPlayer2Label.text =  String((Int(pointPlayer2Label.text!)!)-1)
            
            textViewStory.text = ( "The Hero is \(namePlayer.text!) \n and have points : \(lPLabel.text!)  \n - Defense (DF) : \(dFLabel.text!)\n - Power Damage (PD) :\(pDLabel.text!)\n - Weapon damage(WD): \( wDLabel.text!) \n - Special capacity (SC): \(sCLabel.text!) \n with +\(wDValue) Weapon damage(WD) , +\(pDPlus.text!) Power Damage (PD) => for the next time he use it \n || +\(lPPlus.text!) Extra life points  ")
        }
    }
    
    @IBAction func stepDFAction(_ sender: UIStepper) {
        
        if(( (Int(pointPlayer2Label.text!)!) != 0 )){
            
        dFLabel.text = Int(sender.value).description
            
            pointPlayer2Label.text =  String(Int(pointLabelPlayer.text!)! - Int( lPLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( dFLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( pDLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( wDLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( sCLabel.text!)!)
            
//            pointPlayer2Label.text =  String((Int(pointPlayer2Label.text!)!)-1)
            
            textViewStory.text = ( "The Hero is \(namePlayer.text!) \n and have points : \(lPLabel.text!)  \n - Defense (DF) : \(dFLabel.text!)\n - Power Damage (PD) :\(pDLabel.text!)\n - Weapon damage(WD): \( wDLabel.text!) \n - Special capacity (SC): \(sCLabel.text!) \n with +\(wDPlus.text!) Weapon damage(WD) , +\(pDPlus.text!) Power Damage (PD) => for the next time he use it \n || +\(lPPlus.text!) Extra life points  ")
        }
    }
    
    @IBAction func stepPDAction(_ sender: UIStepper) {
        
        if(( (Int(pointPlayer2Label.text!)!) != 0 )){
            
        pDLabel.text = Int(sender.value).description
            
            pointPlayer2Label.text =  String(Int(pointLabelPlayer.text!)! - Int( lPLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( dFLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( pDLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( wDLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( sCLabel.text!)!)

            
            textViewStory.text = ( "The Hero is \(namePlayer.text!) \n and have points : \(lPLabel.text!)  \n - Defense (DF) : \(dFLabel.text!)\n - Power Damage (PD) :\(pDLabel.text!)\n - Weapon damage(WD): \( wDLabel.text!) \n - Special capacity (SC): \(sCLabel.text!) \n with +\(wDPlus.text!) Weapon damage(WD) , +\(pDPlus.text!) Power Damage (PD) => for the next time he use it \n || +\(lPPlus.text!) Extra life points  ")
        }
    }
    
    @IBAction func stepWDAction(_ sender: UIStepper) {
        
        if(( (Int(pointPlayer2Label.text!)!) != 0 )){
            
        wDLabel.text = Int(sender.value).description
            
            
            pointPlayer2Label.text =  String(Int(pointLabelPlayer.text!)! - Int( lPLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( dFLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( pDLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( wDLabel.text!)!)
            pointPlayer2Label.text = String( Int(pointPlayer2Label.text!)! - Int( sCLabel.text!)!)
            
//            pointPlayer2Label.text =  String((Int(pointPlayer2Label.text!)!)-1)
            
            textViewStory.text = ( "The Hero is \(namePlayer.text!) \n and have points : \(lPLabel.text!)  \n - Defense (DF) : \(dFLabel.text!)\n - Power Damage (PD) :\(pDLabel.text!)\n - Weapon damage(WD): \( wDLabel.text!) \n - Special capacity (SC): \(sCLabel.text!) \n with +\(wDPlus.text!) Weapon damage(WD) , +\(pDPlus.text!) Power Damage (PD) => for the next time he use it \n || +\(lPPlus.text!) Extra life points  ")
        }
    }
    
         //Transfer data from VC2 to VC1
               override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                   let rootVC = segue.destination as! ViewController
                   rootVC.imageViewPlayer2v1.image = imageViewPlayer2.image
                   rootVC.player2LabelName.text = namePlayer.text
                   rootVC.player2LabelLP.text = lPLabel.text
                   rootVC.player2LabelDF.text = dFLabel.text
                   rootVC.player2LabelPD.text = pDLabel.text
                   rootVC.player2LabelWD.text = wDLabel.text
                   rootVC.player2LabelSC.text = sCLabel.text
                   rootVC.addLPP2 = lPPlus.text!
                   rootVC.addPDP2 = pDPlus.text!
                   rootVC.addWDP2 = wDPlus.text!
                   
           
               }
    
}
    
    

extension ViewController2:UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
    
  
       if namePlayer.text == "knight" {
            imageViewPlayer2.image=UIImage(named: "Knight")
           pointLabelPlayer.text = String(knight.points)
            pointPlayer2Label.text = String(knight.points-100)
            sCLabel.text = String(knight.sC)
           
           lPPlus.text = String(knight.addLP)
           pDPlus.text = String(knight.addPD)
           wDPlus.text = String(knight.addWD)
           
           //Check whether the label has the maximum value
            stepDF.maximumValue = Double(knight.dFMax)
            stepPD.maximumValue = Double(knight.pDMax)
            stepWD.maximumValue = Double(knight.wDMax)
           

           stepLP.isUserInteractionEnabled = true
           stepDF.isUserInteractionEnabled = true
           stepPD.isUserInteractionEnabled = true
           stepWD.isUserInteractionEnabled = true
           buttonOutlet.isUserInteractionEnabled = true
           
           textViewStory.text = ( "The Hero is \(namePlayer.text!) \n and have points : \(lPLabel.text!)  \n - Defense (DF) : \(dFLabel.text!)\n - Power Damage (PD) :\(pDLabel.text!)\n - Weapon damage(WD): \( wDLabel.text!) \n - Special capacity (SC): \(sCLabel.text!) \n with +\(wDPlus.text!) Weapon damage(WD) , +\(pDPlus.text!) Power Damage (PD) => for the next time he use it \n || +\(lPPlus.text!) Extra life points")
           
        }
        else if namePlayer.text == "wizard" {
            imageViewPlayer2.image=UIImage(named: "Wizard")
            pointLabelPlayer.text = String(wizard.points)
            pointPlayer2Label.text = String(wizard.points-50)
            sCLabel.text = String(wizard.sC)
            
            //Check whether the label has the maximum value
            stepDF.maximumValue = Double(wizard.dFMax)
            stepPD.maximumValue = Double(wizard.pDMax)
            stepWD.maximumValue = Double(wizard.wDMax)
            
            lPPlus.text = String(wizard.addLP)
            pDPlus.text = String(wizard.addPD)
            wDPlus.text = String(wizard.addWD)
           
            
            stepLP.isUserInteractionEnabled = true
            stepDF.isUserInteractionEnabled = true
            stepPD.isUserInteractionEnabled = true
            stepWD.isUserInteractionEnabled = true
            buttonOutlet.isUserInteractionEnabled = true
            
            textViewStory.text = ( "The Hero is \(namePlayer.text!) \n and have points : \(lPLabel.text!)  \n - Defense (DF) : \(dFLabel.text!)\n - Power Damage (PD) :\(pDLabel.text!)\n - Weapon damage(WD): \( wDLabel.text!) \n - Special capacity (SC): \(sCLabel.text!) \n with +\(wDPlus.text!) Weapon damage(WD) , +\(pDPlus.text!) Power Damage (PD) => for the next time he use it \n || +\(lPPlus.text!) Extra life points")
            
        }
        else if namePlayer.text == "thief" {
            imageViewPlayer2.image=UIImage(named: "Thief")
            pointLabelPlayer.text = String(thief.points)
            pointPlayer2Label.text = String(thief.points-75)
            sCLabel.text = String(thief.sC)
            
            //Check whether the label has the maximum value
            stepDF.maximumValue = Double(thief.dFMax)
            stepPD.maximumValue = Double(thief.pDMax)
            stepWD.maximumValue = Double(thief.wDMax)
            
            lPPlus.text = String(thief.addLP)
            pDPlus.text = String(thief.addPD)
            wDPlus.text = String(thief.addWD)
            
           
            
            stepLP.isUserInteractionEnabled = true
            stepDF.isUserInteractionEnabled = true
            stepPD.isUserInteractionEnabled = true
            stepWD.isUserInteractionEnabled = true
            buttonOutlet.isUserInteractionEnabled = true
            
            textViewStory.text = ( "The Hero is \(namePlayer.text!) \n and have points : \(lPLabel.text!)  \n - Defense (DF) : \(dFLabel.text!)\n - Power Damage (PD) :\(pDLabel.text!)\n - Weapon damage(WD): \( wDLabel.text!) \n - Special capacity (SC): \(sCLabel.text!) \n with +\(wDPlus.text!) Weapon damage(WD) , +\(pDPlus.text!) Power Damage (PD) => for the next time he use it \n || +\(lPPlus.text!) Extra life points")
        }
        
      
      
        
        namePlayer2.text = namePlayer.text
        textField.resignFirstResponder()
        return true
        
    }
    
}

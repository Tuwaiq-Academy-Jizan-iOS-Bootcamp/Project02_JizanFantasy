//
//  ViewController2.swift
//  MaramFaqih_Project02_JizanFantasy
//
//  Created by meme f on 27/03/1443 AH.
//

import UIKit
protocol rollGameHero{
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
    
  // func playaCtion()-> Int
    
//    func checkdF()-> Int
//    func checkpD()-> Int
//    func checkwD()-> Int
    
}
class Hero:rollGameHero {
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


//func checkdF() -> Int {
//    if dF! <= dFMax {
//        return dF!
//    }else{
//        return 0
//    }
//}
//    func checkpD() -> Int {
//        if pD! <= pDMax{
//            return pD!
//        }else{
//            return 0
//        }
//    }
//
//func checkwD() -> Int {
//    if wD! <= wDMax{
//        return wD!
//    }else{
//        return 0
//    }
    
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
    
    var lPValue = 0
    var pDValue = 0
    var wDValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
   // Do any additional setup after loading the view.
        
        for i in textFieldSet{
            i.delegate = self
            //print("\(i)")
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
        
        switch player2{
        case "knight":
            
            //stepDF.maximumValue = 10
            
            lPLabel.text = String(knight.lP)
            dFLabel.text = String(knight.dF)
            //dFLabel.text = String(knight.dF ?? 20)
            
//            if let text: String = dFLabel.text , Int(text)! >= 0 &&  Int(text)! <= knight.dFMax {
//                dFLabel.text = text
//            }else{
//                dFLabel.text = ""
//            }
            
//             if (Int(dFLabel.text!)! >= 0 && Int(dFLabel.text!)! <= knight.dFMax)
//            {
//                 dFLabel.text = String(knight.dF ?? 20)
//             }else{
//                 dFLabel.text = ""
//             }
            
            
         /*   if knight.dF != nil{
                if(Int(dFLabel.text) > knight.dFMax){
                    lPVar = Int(dFLabel.text)
                }else{
                    
                }
                
            }*/
            pDLabel.text = String(knight.pD)
//            if let str = pDLabel.text , Int(str)! >= 0 &&  Int(str)! <= knight.pDMax {
//                // render the non-optional string value in "str"
//            } else {
//                // show an empty label
//            }
            //String(knight.pD ?? 30)
           wDLabel.text = String(knight.wD)
            lPValue = knight.addLP
            pDValue = knight.addPD
            wDValue = knight.addWD
        case "wizard":
            lPLabel.text = String(wizard.lP )
            dFLabel.text = String(wizard.dF)
            //dFLabel.text = String(wizard.checkdF())
           //wizard.checkdF()=
            pDLabel.text = String(wizard.pD)
           wDLabel.text = String(wizard.wD)
            lPValue = wizard.addLP
            pDValue = wizard.addPD
            wDValue = wizard.addWD
        case "thief" :
            lPLabel.text = String(thief.lP)
            dFLabel.text = String(thief.dF)
            pDLabel.text = String(thief.pD)
           wDLabel.text = String(thief.wD)
            lPValue = thief.addLP
            pDValue = thief.addPD
            wDValue = thief.addWD
        default :
            print("Please enter the name of player 2 ")
        }
        
      
    }
    
 
      
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let rootVC = segue.destination as! ViewController
                
                rootVC.player2LabelName.text = namePlayer.text
                rootVC.player2LabelLP.text = lPLabel.text
                rootVC.player2LabelDF.text = dFLabel.text
                rootVC.player2LabelPD.text = pDLabel.text
                rootVC.player2LabelWD.text = wDLabel.text
                rootVC.player2LabelSC.text = sCLabel.text
                rootVC.addLPP2 = lPValue
                rootVC.addPDP2 = pDValue
                rootVC.addWDP2 = wDValue
                
        
            }
//    func alertView(maxv:Int){
//        let aleart = UIAlertController(title: "Error", message: "the number must be greater than\(maxv)", preferredStyle:.alert)
//        aleart.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
//    }
//
    @IBAction func stepLPAction(_ sender: UIStepper) {
        

        
        if(( (Int(pointPlayer2Label.text!)!) != 0 )){
            
             
            lPLabel.text = Int(sender.value).description
            pointPlayer2Label.text =  String((Int(pointPlayer2Label.text!)!)-1)
            
            //pointPlayer2Label.text = String(s-l)
        }
    }
    @IBAction func stepDFAction(_ sender: UIStepper) {
        if(( (Int(pointPlayer2Label.text!)!) != 0 )){
            
        dFLabel.text = Int(sender.value).description
            pointPlayer2Label.text =  String((Int(pointPlayer2Label.text!)!)-1)
            
        }
    }
    @IBAction func stepPDAction(_ sender: UIStepper) {
        if(( (Int(pointPlayer2Label.text!)!) != 0 )){
            
            
        pDLabel.text = Int(sender.value).description
            pointPlayer2Label.text =  String((Int(pointPlayer2Label.text!)!)-1)
        }
    }
    @IBAction func stepWDAction(_ sender: UIStepper) {
        if(( (Int(pointPlayer2Label.text!)!) != 0 )){
           
            
        wDLabel.text = Int(sender.value).description
            pointPlayer2Label.text =  String((Int(pointPlayer2Label.text!)!)-1)
        }
    }
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

extension ViewController2:UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //let nameDelegate = namePlayer.text
        //pointPlayer2Label.text = nameDelegate.points
        //sCLabel.text = nameDelegate.sC
        
       if namePlayer.text == "knight" {
            pointPlayer2Label.text = String(knight.points-100)
            sCLabel.text = String(knight.sC)
       
              stepDF.maximumValue = Double(knight.dFMax)
              stepPD.maximumValue = Double(knight.pDMax)
              stepWD.maximumValue = Double(knight.wDMax)
           
           
           
           stepLP.isUserInteractionEnabled = true
           stepDF.isUserInteractionEnabled = true
           stepPD.isUserInteractionEnabled = true
           stepWD.isUserInteractionEnabled = true
           buttonOutlet.isUserInteractionEnabled = true
           
        }
        else if namePlayer.text == "wizard" {
            pointPlayer2Label.text = String(wizard.points-50)
            sCLabel.text = String(wizard.sC)
            
            stepDF.maximumValue = Double(wizard.dFMax)
            stepPD.maximumValue = Double(wizard.pDMax)
            stepWD.maximumValue = Double(wizard.wDMax)
            
            stepLP.isUserInteractionEnabled = true
            stepDF.isUserInteractionEnabled = true
            stepPD.isUserInteractionEnabled = true
            stepWD.isUserInteractionEnabled = true
            buttonOutlet.isUserInteractionEnabled = true
            
        }
        else if namePlayer.text == "thief" {
            pointPlayer2Label.text = String(thief.points-75)
            sCLabel.text = String(thief.sC)
            
            stepDF.maximumValue = Double(thief.dFMax)
            stepPD.maximumValue = Double(thief.pDMax)
            stepWD.maximumValue = Double(thief.wDMax)
            
            stepLP.isUserInteractionEnabled = true
            stepDF.isUserInteractionEnabled = true
            stepPD.isUserInteractionEnabled = true
            stepWD.isUserInteractionEnabled = true
            buttonOutlet.isUserInteractionEnabled = true
        }
      
        
        namePlayer2.text = namePlayer.text
        
        
        textField.resignFirstResponder()
        return true
        
    }
    
}

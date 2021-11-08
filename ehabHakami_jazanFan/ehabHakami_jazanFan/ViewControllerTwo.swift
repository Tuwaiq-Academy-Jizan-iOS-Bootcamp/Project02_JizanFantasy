//
//  ViewControllerTwoViewController.swift
//  ehabHakami_jazanFan
//
//  Created by Ehab Hakami on 28/03/1443 AH.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var textFieldLp: UITextField!
   
    @IBOutlet weak var textFieldDf: UITextField!
    
    @IBOutlet weak var textFieldPd: UITextField!
    
    @IBOutlet weak var textFieldLpWd: UITextField!
    
    @IBOutlet weak var cS: UITextField!
    
    @IBOutlet weak var imageChrcter: UIImageView!
    
    @IBOutlet weak var allPointHero: UILabel!
    
    @IBOutlet weak var nameHeroSSS: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //delegate textfield
        textFieldLp.delegate = self
        textFieldDf.delegate = self
        textFieldPd.delegate = self
        textFieldLpWd.delegate = self
        cS.delegate = self
        
      //end viewDidLoad
    }
    
    
    
    // Send Value to luebel in ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let rootVC = segue.destination as! ViewController
        
        
        
        rootVC.labelDfValue.text = textFieldDf.text
        
        rootVC.labelVa.text = textFieldLp.text
        rootVC.labelPdValue.text = textFieldPd.text
        
        rootVC.labelWdValue.text = textFieldLpWd.text
        
        rootVC.labelsCValue.text = cS.text
        
        rootVC.labelNameValue.text = nameHeroSSS.text
        
        rootVC.imageHero.image = imageChrcter.image
                
        // Pass the selected object to the new view controller.
    }
    
    
    
    /// Bottun knight add value
    @IBAction func knightAddValue(_ sender: Any) {
        textFieldLp.text = "\(60)"
        textFieldDf.text = "\(20)"
        textFieldPd.text = "\(30)"
        textFieldLpWd.text = "\(40)"
        cS.text = "\(100)"
        
        allPointHero.text = "250 points to dispatch "
        
        nameHeroSSS.text = "knight"
        
        imageChrcter.image = UIImage(named: "ragner")
        
        
    }
    
    
    /// Bottun wizard add value
    @IBAction func wizardAddValue(_ sender: Any) {
        textFieldLp.text = "\(90)"
        textFieldDf.text = "\(15)"
        textFieldPd.text = "\(70)"
        textFieldLpWd.text = "\(20)"
        cS.text = "\(50)"
        allPointHero.text = "245 points to dispatch "
        nameHeroSSS.text = "wizard"
        imageChrcter.image = UIImage(named: "wizard")
    }
    
    
    /// Bottun thif add value
    @IBAction func thifAddValue(_ sender: Any) {
        
        textFieldLp.text = "\(65)"
        textFieldDf.text = "\(25)"
        textFieldPd.text = "\(15)"
        textFieldLpWd.text = "\(30)"
        cS.text = "\(55)"
        allPointHero.text = "210 points to dispatch "
        nameHeroSSS.text = "thif"
        
        imageChrcter.image = UIImage(named: "Lupin")
        
    }
    
}


extension ViewControllerTwo:UITextFieldDelegate{
    
    // Return keybord
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        
        return true
    }
    
    
    
    //// Func  max point chracter
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        
        ///Max knight
        if nameHeroSSS.text == "knight" {
            
            if Int(textField.text!)! > 20{
            textFieldDf.text = "\(Int(20))"
            textFieldPd.text = "\(Int(30))"
            textFieldLpWd.text = "\(Int(40))"
            textFieldLp.text = "\(Int(60))"
                cS.text = "\(Int(100))"
            
        }
            //end if max value knight
    }
        ///Max wizard
        if nameHeroSSS.text == "wizard" {
            
            if Int(textField.text!)! > 15{
            textFieldDf.text = "\(Int(15))"
            textFieldPd.text = "\(Int(70))"
            textFieldLpWd.text = "\(Int(20))"
            textFieldLp.text = "\(Int(90))"
                cS.text = "\(Int(50))"
            
        }
            //end if max value wizard
    }
        ///Max thif
        if nameHeroSSS.text == "thif" {
            
            if Int(textField.text!)! > 15{
            textFieldDf.text = "\(Int(25))"
            textFieldPd.text = "\(Int(15))"
            textFieldLpWd.text = "\(Int(30))"
            textFieldLp.text = "\(Int(65))"
                cS.text = "\(Int(55))"
            
         }
       //end if max value thif
     }
        
        //end func max Value
 }
    
  //end class
}

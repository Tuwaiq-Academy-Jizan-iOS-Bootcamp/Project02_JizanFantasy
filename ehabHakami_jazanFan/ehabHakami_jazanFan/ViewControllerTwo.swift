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
        textFieldLp.delegate = self
        textFieldDf.delegate = self
        textFieldPd.delegate = self
        textFieldLpWd.delegate = self
        cS.delegate = self
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
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
    
    @IBAction func knightAddValue(_ sender: Any) {
        textFieldLp.text = "\(60)"
        textFieldDf.text = "\(20)"
        textFieldPd.text = "\(30)"
        textFieldLpWd.text = "\(40)"
        cS.text = "\(100)"
        allPointHero.text = "250 points to dispatch "
        nameHeroSSS.text = "knight"
        imageChrcter.image = UIImage(named: "ragner")
        
        //imageDice.image = UIImage(named: ehab[rollingDice()])
    }
    
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

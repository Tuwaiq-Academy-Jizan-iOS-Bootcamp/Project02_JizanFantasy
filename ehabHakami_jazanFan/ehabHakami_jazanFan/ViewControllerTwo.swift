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
        
        // Pass the selected object to the new view controller.
    }
    

}

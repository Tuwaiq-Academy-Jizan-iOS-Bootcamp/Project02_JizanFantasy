//
//  ViewController.swift
//  170
//
//  Created by Nasser Aseeri on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    //textfield.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged)
 
  //  override func viewWillAppear(_ animated: Bool) {
        
    
   // override func viewDidAppear(_ animated: Bool) {
        
    
    
    
    @IBOutlet weak var livePoint: UITextField!
    
    @IBOutlet weak var demag: UITextField!
    
    @IBOutlet weak var power: UITextField!
    
    @IBOutlet weak var weap: UITextField!
    
    @IBOutlet weak var SP: UITextField!
    
    @IBOutlet weak var storytxt: UILabel!
    

    @IBOutlet weak var Username: UITextField!
  
    @IBOutlet weak var newplayar: UILabel!
 
    @IBOutlet weak var enter: UIButton!
    
    
    @IBOutlet var nassssss: [UIImageView]!
  
    override func viewDidLoad() {
        super.viewDidLoad()

     
        // Do any additional setup after loading the view.
    
        func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
        {
            // text hasn't changed yet, you have to compute the text AFTER the edit yourself
       

            // do whatever you need with this updated string (your code)


            // always return true so that changes propagate
            return true
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




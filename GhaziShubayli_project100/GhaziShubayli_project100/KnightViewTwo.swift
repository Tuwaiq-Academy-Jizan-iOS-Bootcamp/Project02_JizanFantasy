//
//  ViewControllerTwo.swift
//  GhaziShubayli_project100
//
//  Created by ماك بوك on 30/03/1443 AH.
//

import UIKit

class KnightView: UIViewController{
    //Image//
    var warriorImage = 1
    //Text Field//

    @IBOutlet weak var playerTextField: UITextField!
    //Skill Points//
  
    @IBOutlet weak var playerSP: UILabel!
    var stateSP = 150
    

    
    
    //PW//
       
    @IBOutlet weak var addPD: UIButton!
    
    @IBOutlet weak var minusPD: UIButton!
   
    @IBOutlet weak var playerPD: UILabel!
    var statePD = 0
    
    //dff//
    
    @IBOutlet weak var addDEF: UIButton!
    
    @IBOutlet weak var minusDEF: UIButton!
    
    @IBOutlet weak var playerDEF: UILabel!
    
    var stateDEF = 0
   
    
    @IBOutlet weak var addLP: UIButton!
    
    
    @IBOutlet weak var minusLP: UIButton!
    
    
    @IBOutlet weak var playerLP: UILabel!
    
    
    
    //WD//
    

    @IBOutlet weak var addWD: UIButton!
    
    @IBOutlet weak var minusWD: UIButton!
    
     
    @IBOutlet weak var playerWD: UILabel!
    
    var stateWD = 0
    
    override func viewDidLoad() {
        
    }
    

}

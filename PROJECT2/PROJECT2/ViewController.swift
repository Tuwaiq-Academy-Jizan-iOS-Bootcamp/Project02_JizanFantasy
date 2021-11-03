//
//  ViewController.swift
//  PROJECT2
//
//  Created by زهور حسين on 28/03/1443 AH.
//

import UIKit
class Heroes {
    var lifePoint: Int
    var Defenes: Int
    var powerDamage: Int
    var weapondamage:Int
    var specialcapacity:Int
    init(lifePoint:Int,Defenes:Int,powerDamage:Int,weapondamage:Int,specialcapacity:Int){
        self.lifePoint = lifePoint
        self.Defenes = Defenes
        self.powerDamage = powerDamage
        self.weapondamage = weapondamage
        self.specialcapacity = specialcapacity
    }
    
}
class Boss {
    var lifePoint: Int
    var Defenes: Int
    var powerDamage: Int
    var weapondamage: Int
    var specialcapacity: Int
    init(lifePoint:Int,Defenes:Int,powerDamage:Int,weapondamage:Int,specialcapacity:Int){
        self.lifePoint = lifePoint
        self.Defenes = Defenes
        self.powerDamage = powerDamage
        self.weapondamage = weapondamage
        self.specialcapacity = specialcapacity
        
    }
}




class ViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    var Knight = Knight(lifePoint:60,Defenes:20,powerDamage:30,weapondamage:40,specialcapacity:100)
    var Wizard = Wizard (lifePoint:90,Defenes:15,powerDamage:70,weapondamage:20,specialcapacity:50)
    var Thaif = Thaif (lifePoint:65,Defenes:25,powerDamage:15,weapondamage:30,specialcapacity:75)
    
    
    var Boss1 = Boss1 (lifePoint:250,Defenes:30,powerDamage:20,weapondamage:45,specialcapacity:110)
    var Boss1 = Boss2 (lifePoint:170,Defenes:25,powerDamage:15,weapondamage:30,specialcapacity:75)

    }

    super.viewDidload()
    func BossRandom(){
        for BossRandom (in 1..2){
           
        }
                
    }
}
}


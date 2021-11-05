//
//  KnightViewController.swift
//  ProjectBoss
//
//  Created by يوسف جابر المالكي on 28/03/1443 AH.
//

import UIKit

class KnightViewController: UIViewController {

//    name of knight

    @IBOutlet weak var nameOfKnight: UITextField!
    //     point
    var lifeSkills = 250
    @IBOutlet weak var points: UILabel!

   // >>>>>>>>>> life point<<<<<<<<<<<<
    var lifePoint = 0
    @IBOutlet weak var lifePointLabel: UILabel!
    @IBOutlet weak var lifePointPlus: UIButton!
    @IBOutlet weak var lifePointMins: UIButton!
   //  >>>>>>>>>>>>Defense<<<<<<<<<<<<<<<
        var defense = 0
    @IBOutlet weak var defensPlus: UIButton!
    @IBOutlet weak var defensLabel: UILabel!
    @IBOutlet weak var defensMins: UIButton!
    //    >>>>>>>>>>>>Power Damage<<<<<<<<<<<<<<<
    var powerDamage = 0
    @IBOutlet weak var powerDamagePlus: UIButton!
    @IBOutlet weak var powerDamgeLable: UILabel!
    @IBOutlet weak var powerDamgeMins: UIButton!
    //    >>>>>>>>>>>>Weapon Damage<<<<<<<<<<<<<<<
    var weponDamge = 0
    @IBOutlet weak var weponDamgePlus: UIButton!
    @IBOutlet weak var weponDamgeLable: UILabel!
    @IBOutlet weak var weponDamgeMins: UIButton!
    //>>>>>>>>>>>>Story of knight<<<<<<<<<<<<<<<
    @IBOutlet weak var storyOfKnight: UILabel!
    // >>>>>>>>>>>>image Of knight <<<<<<<<<<<<<<<
    @IBOutlet weak var imageOfKnight: UIImageView!
   
    
    
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//    }
//
//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    



    

}

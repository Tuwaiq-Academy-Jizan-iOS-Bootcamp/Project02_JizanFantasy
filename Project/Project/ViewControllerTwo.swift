//
//  ViewControllerTwo.swift
//  Project
//
//  Created by Ahlam Ahlam on 28/03/1443 AH.
//

import Foundation
import UIKit

class ViewControllerTwo:UIViewController{
    
    
    @IBOutlet weak var Item: UIButton!
    
    @IBOutlet weak var PointNumber: UILabel!
    
    
    @IBOutlet weak var Lp: UITextField!
    
    @IBOutlet weak var Df: UITextField!
    
    @IBOutlet weak var Pd: UILabel!
    
    @IBOutlet weak var Wd: UILabel!
    
    @IBOutlet weak var Se: UILabel!
    
}

      override func ViewDidLoad() {
    super.ViewDidLoad()
   }

override func prepare(for segue: UIStoryboardSegue, sender: Any?)
{
    
   let user1 = segue.destination as! ViewController
    user1.userLp2.text=
    
}

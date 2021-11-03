//
//  ViewController.swift
//  Project
//
//  Created by Abdulrahman Gazwani on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var imageN = ["",""]
    @IBOutlet weak var Boosimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading
        
        Boosimage.image = UIImage(named: imageN[Int.random(in:0...1)])
    }

    @IBAction func rollDice(_ sender: Any) {
    }
    @IBOutlet weak var rollResult: UILabel!
    
    
    @IBAction func nextPage(_ sender: Any) {
        performSegue(withIdentifier: "GoToVC2", sender: self)
    }
    
}


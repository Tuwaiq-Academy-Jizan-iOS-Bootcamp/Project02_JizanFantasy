//
//  ViewController.swift
//  Project
//
//  Created by Abdulrahman Gazwani on 28/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    //PLAYER 1
    @IBOutlet weak var lpPlayer1: UILabel!
    @IBOutlet weak var dfPlayer1: UILabel!
    @IBOutlet weak var pdPlayer1: UILabel!
    @IBOutlet weak var wdPlayer1: UILabel!
    @IBOutlet weak var scPlayer1: UILabel!
    
    //PLAYER 2
    
    @IBOutlet weak var imagePlayer2: UIImageView!
    
    @IBOutlet weak var lPPlayer2: UILabel!
    @IBOutlet weak var dFPlayer2: UILabel!
    @IBOutlet weak var pdPlayer2: UILabel!
    @IBOutlet weak var wdPlayer2: UILabel!
    @IBOutlet weak var scPlayer2: UILabel!
    
    
    // VIEW IMAGE
    var imageN = ["",""]
    @IBOutlet weak var boosimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading
        
        boosimage.image = UIImage(named: imageN[Int.random(in:0...1)])
    }
      
    @IBOutlet weak var diceNumber: UILabel!
    @IBAction func rollDice(_ sender: Any) {
        diceNumber.text = "\(rollNumber())"
        func rollNumber()-> Int
            {
        var dice: Int
              dice = Int.random(in: 1...20)
              print("Dice = \(dice)")
              return dice
            }
      
       
    }
   
    @IBAction func nextPage(_ sender: Any) {
        performSegue(withIdentifier: "GoToVC2", sender: self)
    }
    @IBAction func saveName(segue:UIStoryboardSegue)
      {
      }
   
}


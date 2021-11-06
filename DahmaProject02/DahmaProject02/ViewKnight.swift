//
//  ViewKnight.swift
//  DahmaProject02
//
//  Created by dahma alwani on 02/04/1443 AH.
//

import Foundation
import UIKit

class ViewKnight : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
    @IBOutlet weak var labelLp: UILabel!
    @IBAction func stepperLp(_ sender: UIStepper) {
        labelLp.text = String (sender.value)
    }
    @IBOutlet weak var labelDf: UILabel!
    @IBAction func stepperDf(_ sender: UIStepper) {
        labelDf.text = String (sender.value)
    }
    @IBOutlet weak var labelPd: UILabel!
    @IBAction func stepperPd(_ sender: UIStepper) {
        labelPd.text = String (sender.value)
    }
    @IBOutlet weak var labelWd: UILabel!
    @IBAction func stepperWd(_ sender: UIStepper) {
        labelWd.text = String (sender.value)
    }
    @IBOutlet weak var labelSc: UILabel!
    @IBAction func stepperSc(_ sender: UIStepper) {
        labelSc.text = String (sender.value)
    }
    @IBAction func creatChallenger1 (_ sender: UIStoryboardSegue) {
        performSegue(withIdentifier: "creatSegue", sender: sender)
    }
//    @IBAction func nextView (segue: UIStoryboardSegue){
//        print ("d")
//    }
}

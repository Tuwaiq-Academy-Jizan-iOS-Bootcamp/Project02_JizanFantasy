//
//  ViewController2.swift
//  DahmaJaber_TheBigProject_02
//
//  Created by dahma alwani on 28/03/1443 AH.
//

import Foundation
import UIKit


class ViewController2 : UIViewController {
    
    
    override func viewDidLoad () {
        super.viewDidLoad()
    }
    @IBOutlet weak var imageForNewPlayer: UIImageView!
    
    @IBOutlet weak var textFieldName: UITextField!
//    override func viewDidLoad() {
//        textFieldName.delegate = self
//    override func prepare ( for segue : UIStoryboardSegue, sender : Any?) {
//        let root = segue.destination as! ViewController1
//    }
//
//        theRoot.text = textFieldName.text
//    }
//}
    @IBOutlet weak var PointCanDistribute: UILabel!
    
    @IBOutlet weak var textFieldLp: UITextField!
    @IBOutlet weak var textFieldDf: UITextField!
    @IBOutlet weak var textFieldWd: UITextField!
    @IBOutlet weak var textFieldwWp: UITextField!
    @IBOutlet weak var textFieldPd: UITextField!
    
    @IBOutlet weak var storyTheNewChalaaenger: UILabel!
    
    @IBAction func createNewChallenger(_ sender: Any) {
//        performSegue(withIdentifier: "goTovc1", sender: self)
    }
//override func viewDidLoad () {
//    super.viewDidLoad()
//override func viewDidLoad() {
//       textFieldName.delegate = self
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let user = segue.destination as! ViewController
      user.lifePoint2.text = textFieldDf.text
//        let user2 = segue.destination as! ViewController
      user.defancd2.text = textFieldDf.text
//        let user3 = segue.destination as! ViewController
      user.powerDamage2.text = textFieldWd.text
//        let user4 = segue.destination as! ViewController
      user.weaponDamage2.text = textFieldwWp.text
//        let user5 = segue.destination as! ViewController
      user.specialEffect2.text = textFieldPd.text
      }
}
extension ViewController2 :UITextFieldDelegate {

    func textFieldShouldReturn (_ textField : UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

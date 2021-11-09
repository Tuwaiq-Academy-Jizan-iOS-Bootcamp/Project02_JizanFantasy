//
//  ViewControllerTwo.swift
//  Project
//
//  Created by Ahlam Ahlam on 28/03/1443 AH.
//

//import Foundation
//import UIKit
//
//class ViewControllerTwo:UIViewController{
//    
//    @IBOutlet weak var HeroImage: UIImageView!
//    @IBOutlet weak var PointNumber: UILabel!
//    
//    @IBOutlet weak var Lp: UITextField!
//    
//    @IBOutlet weak var Df: UITextField!
//    
//    @IBOutlet weak var Pd: UITextField!
//    
//    @IBOutlet weak var Wd: UITextField!
//    
//    @IBOutlet weak var Sc: UITextField!
//    
//    @IBOutlet weak var TextLabel: UILabel!
//    
//    @IBAction func plusandminas(_ sender: UIStepper) {
//        Lp.text = String (sender.value)
//        
//        
//    }
//    
//    @IBAction func Plusandminas2(_ sender: UIStepper) {
//        Df.text = String (sender.value)
//    }
//      
//    @IBAction func Plusandminas3(_ sender: UIStepper) {
//        Pd.text = String (sender.value)
//    }
//    @IBAction func Plusandminas4(_ sender:UIStepper) {
//
//        Wd.text = String (sender.value)
//    }
//    
//    @IBAction func Plusandminas5(_ sender: UIStepper) {
//    
//    Sc.text = String (sender.value)
//    }
//       
//    
// override func viewDidLoad() {
//    super.viewDidLoad()
// }
//
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
//    {
//      let user1 = segue.destination as! ViewController
//        user1.heroLp.text = Lp.text
//       let user2 = segue.destination as! ViewController
//        user2.heroDf.text = Df.text
//       let user3 = segue.destination as! ViewController
//        user3.heroPd.text = Df.text
//     let user4 = segue.destination as! ViewController
//        user4.heroWd.text = Wd.text
//       let user5 = segue.destination as! ViewController
//        user5.HeroSc.text = Sc.text
//       
//}
//    
//
// 
//    }
//
//extension ViewControllerTwo:UITextViewDelegate{
//    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
//        textField.resignFirstResponder()
//         return true
//    }
//}



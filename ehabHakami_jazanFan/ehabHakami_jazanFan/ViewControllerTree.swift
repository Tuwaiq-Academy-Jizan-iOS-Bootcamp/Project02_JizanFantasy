//
//  ViewControllerTree.swift
//  ehabHakami_jazanFan
//
//  Created by Ehab Hakami on 03/04/1443 AH.
//

import UIKit

class ViewControllerTree: UIViewController {
    
    @IBOutlet weak var pickerNameHero: UIPickerView!
    
    @IBOutlet weak var textField_LivePoint: UITextField!
    
    @IBOutlet weak var textField_Dafance: UITextField!
    
    @IBOutlet weak var TextField_PowerDamge: UITextField!
    
    @IBOutlet weak var TextField_WeabonDamge: UITextField!
    
    @IBOutlet weak var TextField_sC: UITextField!
    
    @IBOutlet weak var nameHero: UILabel!
    
    @IBOutlet weak var ImageHeroInViewTree: UIImageView!
    
    
    var arrayMyHero = ["knight","wizard","thif"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerNameHero.delegate = self
        pickerNameHero.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

     //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let rootVC = segue.destination as! ViewController
        
        
        rootVC.labelNameValue.text = nameHero.text
        rootVC.labelVa.text = textField_LivePoint.text
        rootVC.labelDfValue.text = textField_Dafance.text
        rootVC.labelPdValue.text = TextField_PowerDamge.text
        rootVC.labelWdValue.text = TextField_WeabonDamge.text
        rootVC.labelsCValue.text = TextField_sC.text
        rootVC.imageHero.image = ImageHeroInViewTree.image
        
        

    }
    

}

extension ViewControllerTree: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayMyHero.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayMyHero[row]
    
    
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            let selectedHero = pickerNameHero.selectedRow(inComponent: 0)
        
        if selectedHero == 0 {
            textField_LivePoint.text = "\(Int(60))"
            textField_Dafance.text = "\(Int(20))"
            TextField_PowerDamge.text = "\(Int(30))"
            TextField_WeabonDamge.text = "\(Int(40))"
            TextField_sC.text = "\(Int(100))"
            nameHero.text = "knight"
            ImageHeroInViewTree.image = UIImage(named: "ragner")
            
        } else if selectedHero == 1 {
            textField_LivePoint.text = "\(Int(90))"
            textField_Dafance.text = "\(Int(15))"
            TextField_PowerDamge.text = "\(Int(70))"
            TextField_WeabonDamge.text = "\(Int(20))"
            TextField_sC.text = "\(Int(50))"
            nameHero.text = "wizard"
            ImageHeroInViewTree.image = UIImage(named: "wizard")
        }else{
            textField_LivePoint.text = "\(Int(65))"
            textField_Dafance.text = "\(Int(25))"
            TextField_PowerDamge.text = "\(Int(15))"
            TextField_WeabonDamge.text = "\(Int(30))"
            TextField_sC.text = "\(Int(55))"
            nameHero.text = "thif"
            ImageHeroInViewTree.image = UIImage(named: "Lupin")
        }
            
        
}
}
//
//                                  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//                                      if pickerClass.selectedRow(inComponent: 0) == 0 {
//                                        performSegue(withIdentifier: "toWarrior", sender: self)
//                                      }else if pickerClass.selectedRow(inComponent: 0) == 1 {
//                                        performSegue(withIdentifier: "toMage", sender: self)
//                                      }else {
//                                        performSegue(withIdentifier: "toRouge", sender: self)
//                                      }

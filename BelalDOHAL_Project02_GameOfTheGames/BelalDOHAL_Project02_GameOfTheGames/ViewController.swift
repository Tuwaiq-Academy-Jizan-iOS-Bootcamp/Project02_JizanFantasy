import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pickerClass: UIPickerView!
    //Override//
    let arrayOfClasses = ["Warrior","Mage","Rouge"]
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerClass.delegate = self
        pickerClass.dataSource = self
    }
}
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfClasses.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayOfClasses[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerClass.selectedRow(inComponent: 0) == 0 {
            performSegue(withIdentifier: "toWarrior", sender: self)
        }else if pickerClass.selectedRow(inComponent: 0) == 1 {
            performSegue(withIdentifier: "toMage", sender: self)
        }else {
            performSegue(withIdentifier: "toRouge", sender: self)
        }
    }
}


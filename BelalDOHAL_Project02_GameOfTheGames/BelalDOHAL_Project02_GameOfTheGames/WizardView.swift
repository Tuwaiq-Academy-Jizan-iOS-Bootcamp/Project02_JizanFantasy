import UIKit

class WizardView: UIViewController {
    @IBOutlet weak var mageSaveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mageSaveButton.layer.cornerRadius = 20

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}

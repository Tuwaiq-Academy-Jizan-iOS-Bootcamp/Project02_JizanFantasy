import UIKit

class ThiefView: UIViewController {
    @IBOutlet weak var rougeSaveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rougeSaveButton.layer.cornerRadius = 20
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}

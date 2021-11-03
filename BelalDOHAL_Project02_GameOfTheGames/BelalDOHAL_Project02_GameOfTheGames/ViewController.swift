import UIKit

class ViewController: UIViewController {
    //Outlets//
    @IBOutlet weak var warriorButton: UIButton!
    @IBOutlet weak var mageButton: UIButton!
    @IBOutlet weak var rougeButton: UIButton!
    //Override//
    override func viewDidLoad() {
        super.viewDidLoad()
        warriorButton.layer.cornerRadius = 40
        mageButton.layer.cornerRadius = 40
        rougeButton.layer.cornerRadius = 40
    }
}


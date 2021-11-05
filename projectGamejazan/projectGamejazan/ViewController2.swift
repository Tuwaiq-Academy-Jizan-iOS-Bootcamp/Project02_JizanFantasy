//
//  ViewController2.swift
//  projectGamejazan
//
//  Created by grand ahmad on 28/03/1443 AH.
//

import Foundation
import UIKit

//desccribtion.LP.text = FieldLP.text

class ViewController2: UIViewController{
    var name = "hello"
    var arra = ["knight1","thief1","wiz100"]
//    ربط الصوره
    @IBOutlet weak var createImage: UIImageView!
    //    اسم الجديد
    @IBOutlet weak var createName: UITextField!
//    بيانات
    @IBOutlet weak var createLPLabel: UITextField!
    @IBOutlet weak var createDFLabel: UITextField!
    @IBOutlet weak var createPDlabel: UITextField!
    @IBOutlet weak var createWDlabel: UITextField!
    @IBOutlet weak var createSClabel: UITextField!
//    stoty
    @IBOutlet weak var storyPlayer: UILabel!
    
    override func viewDidLoad() {
//        add()
        createName.delegate = self
        createLPLabel.delegate = self
        createDFLabel.delegate = self
        createPDlabel.delegate = self
        createWDlabel .delegate = self
        createSClabel.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controlsSegue = segue.destination as? ViewController {
            controlsSegue.namePlayer2.text = createName.text
            controlsSegue.playerLPLabel.text =  createLPLabel.text
            controlsSegue.playerDFLabel.text = createDFLabel.text
            controlsSegue.playerPDLabel.text = createPDlabel.text
            controlsSegue.playerWDLabel.text = createWDlabel.text
            controlsSegue.playerSCLabel.text = createSClabel.text
            controlsSegue.playerImage.image = createImage.image
    }
}
}

extension ViewController2: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func imageViewC() {
        let images2: Int = .random(in: 0...arra.count - 1)
        createImage.image = UIImage(named: arra[images2])
    }
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        let maxed: Int?
//        if textField.tag == 3 {
//        maxed: Int"\(createDFLabel.text)"
//            }
//        }
    }
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        print("0")
//        if textField.tag == 3{
//            let num = Int(textField.text)!
//            
//        }
//
//    }
    
//    func add() {
//        let added: Int = .random(in: 1...3)
//        switch added {
//        case 1:
//            createLPLabel.text = "\(knight.lifePoint)"
//            createSClabel.text = "\(knight.specialCapcity)"
//        case 2:
//            createLPLabel.text = "\(wizard.lifePoint)"
//            createSClabel.text = "\(wizard.specialCapcity)"
//        case 3:
//            createLPLabel.text = "\(thief.lifePoint)"
//            createSClabel.text = "\(thief.specialCapcity)"
//        default:
//            print(0)
//        }
//    }


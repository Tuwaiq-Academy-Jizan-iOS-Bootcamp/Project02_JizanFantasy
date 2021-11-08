//
//  ViewController2.swift
//  projectGamejazan
//
//  Created by grand ahmad on 28/03/1443 AH.
//

import Foundation
import UIKit

class ViewController2: UIViewController{
    var name = "hello"
    var heroesNames = ["knight","thief","wizard"]
    var selectedHero: Boss!
    var defense: Int = 0
    var power: Int = 0
    var weapon: Int = 0
    //    ربط الصوره
    @IBOutlet weak var pointsLabel: UILabel!
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
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var storyPlayer: UILabel!
    @IBOutlet weak var storyText: UITextView!
    
    override func viewDidLoad() {
        createName.delegate = self
        createLPLabel.delegate = self
        createDFLabel.delegate = self
        createPDlabel.delegate = self
        createWDlabel.delegate = self
        createSClabel.delegate = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard (_:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controlsSegue = segue.destination as? ViewController {
            controlsSegue.namePlayer2.text = createName.text
            selectedHero.defense = defense
            selectedHero.powerDamage = power
            selectedHero.weaponDamage = weapon
            controlsSegue.playerLPLabel.text = createLPLabel.text
            controlsSegue.playerDFLabel.text = "\(defense)"
            controlsSegue.playerPDLabel.text = "\(power)"
            controlsSegue.playerWDLabel.text = "\(weapon)"
            controlsSegue.playerSCLabel.text = createSClabel.text
            controlsSegue.playerImage.image = createImage.image
            controlsSegue.rollDiceButton.isEnabled = true
            controlsSegue.hero = selectedHero
        }
    }
//    max
    func checkValues() -> Bool {
        
        if selectedHero == nil {
            return false
        }
        if defense < 1 || defense > selectedHero.maxDefense {
            return false
        }
        if power < 1 || power > selectedHero.maxPowerDamage {
            return false
        }
        if weapon < 1 || weapon > selectedHero.maxWeaponDamage {
            return false
        }
        
        let total = selectedHero.lifePoint + selectedHero.specialCapacity + defense + power + weapon
        if total > selectedHero.points {
            return false
        }
        
        return true
    }
    func loadHero() {
        createDFLabel.isEnabled = true
        createPDlabel.isEnabled = true
        createWDlabel.isEnabled = true
        createName.text = selectedHero.name
        createImage.image = UIImage(named: selectedHero.imageName)
        pointsLabel.text = "\(selectedHero.points)"
        createLPLabel.text = "\(selectedHero.lifePoint)"
        createSClabel.text = "\(selectedHero.specialCapacity)"
    }
    
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        createDFLabel.resignFirstResponder()
        createPDlabel.resignFirstResponder()
        createWDlabel.resignFirstResponder()
        storyText.resignFirstResponder()
    }
}
extension ViewController2: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        switch textField.tag{
        case 1:
            guard let heroName = textField.text else {
//                createButton.isEnabled = false
                createButton.isEnabled = true
                return
            }
            let trimmed = heroName.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
            if heroesNames.contains(trimmed) {
                switch trimmed {
                case "knight": selectedHero = knight
                case "thief": selectedHero = thief
                case "wizard": selectedHero = wizard
                default:
                    print(0)
                }
                loadHero()
            }
        case 3:
            if let dfText = textField.text {
                defense = Int(dfText) ?? 0
            }
        case 4:
            if let pdText = textField.text {
                power = Int(pdText) ?? 0
            }
        case 5:
            if let wdText = textField.text {
                weapon = Int(wdText) ?? 0
            }
        default:
            print(0)
        }
        if checkValues() {
            createButton.isEnabled = true
            print("Grand Ahmad")
        }
    }
}



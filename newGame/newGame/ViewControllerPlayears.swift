//
//  ViewControllerPlayears.swift
//  newGame
//
//  Created by Abdulrhman Abuhyyh on 29/03/1443 AH.
//

import UIKit
class ViewControllerPlayears: UIViewController {
    
    @IBOutlet weak var namePlayerW: UILabel!
    @IBOutlet weak var namePlayerkn: UILabel!
    @IBOutlet weak var namePlayerTh: UILabel!
    @IBOutlet weak var imageW: UIImageView!
    @IBOutlet weak var imageK: UIImageView!
    @IBOutlet weak var imageT: UIImageView!
    @IBOutlet weak var buW: UIButton!
    @IBOutlet weak var buK: UIButton!
    @IBOutlet weak var buT: UIButton!
    @IBOutlet weak var PlayerPickerView: UIPickerView!
    var name1 = "Wizard"
    var name2 = "Knight"
    var name3 = "Thief"
    var namePlayersOfGame = ["Wizard","Knight","Thief"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PlayerPickerView.delegate = self
        PlayerPickerView.dataSource = self
//        namePlayerW.text = name1
//        namePlayerkn.text = name2
//        namePlayerTh.text = name3
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}
extension ViewControllerPlayears: UIPickerViewDelegate,UIPickerViewDataSource{
    
func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return namePlayersOfGame.count
 }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return namePlayersOfGame[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedHero = PlayerPickerView.selectedRow(inComponent: 0)
        if selectedHero == 0 {
            namePlayerW.text = "Wizard"
            imageW.image = UIImage(named: "Wiz")
        }else if selectedHero == 1 {
            namePlayerkn.text = "Knight"
            imageK.image = UIImage(named: "knight")
        }else {
            namePlayerTh.text = "Thief"
            imageT.image = UIImage(named: "thi")
        }
    }
}

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
    var name1 = "Wizard"
    var name2 = "Knight"
    var name3 = "Thief"
    override func viewDidLoad() {
        super.viewDidLoad()
        namePlayerW.text = name1
        namePlayerkn.text = name2
        namePlayerTh.text = name3
    }
}


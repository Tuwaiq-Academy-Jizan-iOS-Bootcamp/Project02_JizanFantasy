//
//  ViewController2.swift
//  AfafAlqahtani_Project02_JizanFantasy
//
//  Created by Afaf Yahya on 28/03/1443 AH.
//

import Foundation
import UIKit
class viewController2: UIViewController {
    
    @IBOutlet weak var imageHero: UIImageView!
    
    @IBOutlet weak var nameHerro: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var lfVc2: UITextField!
    @IBOutlet weak var dfVc2: UITextField!
    @IBOutlet weak var pdVc2: UITextField!
    @IBOutlet weak var wdVc2: UITextField!
    @IBOutlet weak var seVc2: UITextField!
    @IBOutlet weak var storryTheChallenger: UILabel!
    
   override func viewDidLoad() {
    super.viewDidLoad()
       
}
    override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let rootViewController = segue.destination  as! ViewController
    rootViewController.lfR.text = nameHerro.text
    rootViewController.dfR.text = nameHerro.text
    rootViewController.pdR.text = nameHerro.text
    rootViewController.wdR.text = nameHerro.text
    rootViewController.seR.text = nameHerro.text

}
}




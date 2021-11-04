//
//  ViewController.swift
//  DoaaAlageel_project
//
//  Created by Dua'a ageel on 27/03/1443 AH.
//

import UIKit
protocol rollGameUser{
    var name:String {get}
    var points:Int {get set}
    var lifepoint:Int? {get set}
    var defend:Int? {get set}
    var powerdamage:Int? {get set}
    var weapondamage:Int? {get set}
    var specialeffect:Int {get set}
}

class User:rollGameUser {
  
    var name: String
    
    var points: Int
    var lifepoint: Int?
    var defend: Int?
    var powerdamage: Int?
    var weapondamage: Int?
    var specialeffect: Int

    var dFMax:Int
    var pDMax:Int
    var wDMax:Int
    
    init(name: String,points:Int,lifepoint:Int?,defend:Int?,powerdamage:Int?,weapondamage:Int?,specialeffect:Int,dFMax:Int,pDMax:Int,wDMax:Int){
        self.name=name
        self.points=points
        self.lifepoint=lifepoint
        self.defend=defend
        self.powerdamage=powerdamage
        self.weapondamage=weapondamage
        self.specialeffect=specialeffect
       
       self.dFMax=dFMax
       self.pDMax=pDMax
       self.wDMax=wDMax
    }

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lableUserName: UILabel!
    
    @IBOutlet weak var lableLP: UILabel!
    
    @IBOutlet weak var lableDF: UILabel!
    
    @IBOutlet weak var lablePD: UILabel!
    
    @IBOutlet weak var lableWD: UILabel!
    
    @IBOutlet weak var lableSC: UILabel!
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPlus(_ sender: Any) {
        performSegue(withIdentifier: "link", sender: self)
    }
    @IBAction func unwindToRootViewController(segue: UIStoryboardSegue){
        print("to Root View Controller")
    }
  
    

}

}


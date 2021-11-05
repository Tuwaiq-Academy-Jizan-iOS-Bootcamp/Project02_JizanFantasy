//
//  StartGameViewController.swift
//  ProjectBoss
//
//  Created by يوسف جابر المالكي on 28/03/1443 AH.
//

import UIKit

                               //player One And Two in the start app BOOT
class Boot{
    
    var name :String
    var defance:Int
    var powerDamge:Int
    var weaponDamge:Int
    var spscialCapasity:Int
    var livePoint:Int
    init(name: String, defance: Int, powerDamge: Int, weaponDamge: Int, spscialCapasity: Int,livePoint:Int){
        self.name=name
        self.defance=defance
        self.powerDamge=powerDamge
        self.weaponDamge=weaponDamge
        self.spscialCapasity=spscialCapasity
        self.livePoint=livePoint
        
        
        
    }
     
}
                                 //If you Choose Hero
class Hero {
    
    var name :String
    var defance:Int
    var powerDamge:Int
    var weaponDamge:Int
    var spscialCapasity:Int
    var livePoint:Int
    init (name: String, defance: Int, powerDamge: Int, weaponDamge: Int, spscialCapasity: Int, livePoint: Int){
        
        self.name=name
        self.defance=defance
        self.powerDamge=powerDamge
        self.weaponDamge=weaponDamge
        self.spscialCapasity=spscialCapasity
        self.livePoint=livePoint
        
            }
    
}
class StartGameViewController: UIViewController {
    
    var index: Int = 0
    var myImages2 = ["Wizard","knight"]

    @IBOutlet weak var bootImage: UIImageView!
    
    var player1 = Boot.init(name: "BootOne", defance: 30, powerDamge: 20, weaponDamge: 45, spscialCapasity: 110,livePoint:250)
    
    var player2 = Boot.init(name: "", defance: 30, powerDamge: 20, weaponDamge: 45, spscialCapasity: 110, livePoint: 250)
    
    
    var myHero = Hero.init(name: "BootTwo", defance: 25, powerDamge: 15, weaponDamge: 30, spscialCapasity: 75, livePoint: 170)
   var turnNumber = 0
    var dead = 0
    
//.......................................Main game................

    
    
    @IBOutlet weak var returnNumber: UILabel!
    
    func Turn (){
        print("Turn Number \(turnNumber)")
    }
    @IBAction func rollDiceBtn(_ sender: Any) {
        
        turnNumber+=1
        let random1To9 = [1,2,3,4,5,6,7,8,9]
        let randome = random1To9.randomElement()
        print("Turn Number \(randome)")
        
        if randome == random1To9.count {
            print("\(player1.name)")
            player1.weaponDamge
            player2.livePoint += player1.weaponDamge
            
        }
    }
    
    

    override func viewDidLoad() {
        

    super.viewDidLoad()
        
       bootImage.image = UIImage(named: myImages2[Int.random(in: 0...1)])


        
    // Do any additional setup after loading the view.
}

    @IBAction func unwindToOne(_ sender : UIStoryboardSegue){}

}



    




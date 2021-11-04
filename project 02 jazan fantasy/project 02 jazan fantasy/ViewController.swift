//
//  ViewController.swift
//  project 02 jazan fantasy
//
//  Created by موسى مسملي on 03/11/2021.
//

import UIKit
class Hero {
var name :String
var lifePoint: Int
var  defense: Int
var powerDamage : Int
var weaponeDamage : Int
var specialcapacity :Int

init(name:String,lifepoint:Int,defense:Int,powerdamage:Int,weaponedamage:Int,specialcapacity:Int)  {

self.name = name
self.lifePoint = lifepoint
self.defense = defense
self.powerDamage = powerdamage
self.weaponeDamage = powerdamage
self.specialcapacity = specialcapacity
    
}
    class Wizard:Hero{
    }
    class Knight:Hero{
    }
    class Thief:Hero {
    }
    class Boss1:Hero {
    }
    class Boss2: Hero {
    }
}

class ViewController: UIViewController {
    
    
    
    
    
    

    
    
    
    
    
    
    
   // تعريف لكل كلاس تم توريثه مع خصائصه //
    var Wizard = Hero(name: "wizard", lifepoint: 90, defense: 15, powerdamage: 70, weaponedamage: 20, specialcapacity: 50)
    var Knight = Hero(name: "Knight", lifepoint: 60 ,defense: 20, powerdamage: 30, weaponedamage: 40, specialcapacity: 100)
    var Thief = Hero (name: "Thife", lifepoint: 65, defense: 25, powerdamage: 15, weaponedamage: 30, specialcapacity: 75)
    var Boss1 = Hero(name: "Boss1", lifepoint: 250, defense: 30, powerdamage: 20, weaponedamage: 45, specialcapacity: 110)
    var Boss2 = Hero(name: "Boss2", lifepoint: 170, defense: 25, powerdamage: 15, weaponedamage: 30, specialcapacity: 75)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        boosimage.image = UIImage (named: imagename[Int.random(in:0...1)])
        // Do any additional setup after loading the view.
    }
   
   

}

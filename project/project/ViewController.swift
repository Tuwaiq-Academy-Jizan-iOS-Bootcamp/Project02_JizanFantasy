//
//  ViewController.swift
//  project
//
//  Created by Ahmad Barqi on 28/03/1443 AH.
//
//
class Hero {
var Name:String
    var LifePoint:Int
    var Defense: Int
    var PowerDamage:Int
    var Weapondamage:Int
    var Specialcapacity:Int
    init(Name:String, LifePoint:Int, Defense:Int, PowerDamage:Int,Weapondamage:Int, Specialcapacity:Int ){
        self.Name = Name
        self.LifePoint = LifePoint
        self.Defense = Defense
        self.PowerDamage = PowerDamage
        self.Weapondamage = Weapondamage
        self.Specialcapacity=Specialcapacity
        
    }
    
}

import Foundation
import UIKit
var Array:[String] = ["dice1","dice2","dice3","dice4","dice5"]
func logicOfTheGame(){
var Dice = Int.random(in:1...20)
switch Dice {
case 1:
    print("At this moment he attacks Knight")
case 2:
    print("At this moment he attacks Wizard")
case 3:
    print("At this moment he attacks Thief")
case 4:
    print("At this moment he attacks Boss1 ")
case 5:
    print("At this moment he attacks Boss2 ")

    
default:
 print( "proplem")
    
}
    
    class Boss1 {
        var Dice = Int.random(in:1...2)
    var Name:String
        var LifePoint:Int
        var Defense: Int
        var PowerDamage:Int
        var Weapondamage:Int
        var Specialcapacity:Int
        init(Name:String, LifePoint:Int, Defense:Int, PowerDamage:Int,Weapondamage:Int, Specialcapacity:Int ){
            self.Name = Name
            self.LifePoint = LifePoint
            self.Defense = Defense
            self.PowerDamage = PowerDamage
            self.Weapondamage = Weapondamage
            self.Specialcapacity=Specialcapacity
            
    
    }
        class Boss2 {
            var Dice = Int.random(in:1...2)
        var Name:String
            var LifePoint:Int
            var Defense: Int
            var PowerDamage:Int
            var Weapondamage:Int
            var Specialcapacity:Int
            init(Name:String, LifePoint:Int, Defense:Int, PowerDamage:Int,Weapondamage:Int, Specialcapacity:Int ){
                self.Name = Name
                self.LifePoint = LifePoint
                self.Defense = Defense
                self.PowerDamage = PowerDamage
                self.Weapondamage = Weapondamage
                self.Specialcapacity=Specialcapacity
                
    
}

}
 Dice = Int.random(in:1...2)
if Dice <=2{
    print("Boss1")
}else{
    Dice<=1
    print("Boss2")
    
            }
        
        }
        
    }

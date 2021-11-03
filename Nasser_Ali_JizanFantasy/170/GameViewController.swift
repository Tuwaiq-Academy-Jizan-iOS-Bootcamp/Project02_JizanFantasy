//
//  ViewController.swift
//  170
//
//  Created by Nasser Aseeri on 28/03/1443 AH.
//

import UIKit

class ViewController2: UIViewController {


    @IBAction func aaaa1(_ sender: UIStepper) {
    }
    @IBAction func aaaa2(_ sender: UIStepper) {
    }
    
    @IBAction func aaaa3(_ sender: UIStepper) {
    }
    
    @IBAction func aaaa4(_ sender: Any) {
    }
    
    @IBAction func aaaa5(_ sender: UIStepper) {
    }
    
    
    
override func viewDidLoad() {

    
super.viewDidLoad()

    
}

    
    
}


        class Boos1 {
            var name: String
            var lifePoint: Int
            var defen: String
            var level: Int
            var weaponDamage : Int
            var specialCapacity : Int
            init(name: String, lifePoint: Int, defen: String, level: Int, weaponDamage: Int, specialCapacity:Int){
                self.name = name
                self.lifePoint = lifePoint
                self.defen = defen
                self.level = level
                self.weaponDamage = weaponDamage
                self.specialCapacity = specialCapacity
                func boos1() {
                    self.lifePoint -= lifePoint
                   print("................. \(name)........... \(lifePoint) ...............")
    }
            }
            
        }

        class Boos2 {
            var name: String
            var lifePoint: Int
            var defen: String
            var level: Int
            var weaponDamage : Int
            var specialCapacity : Int
            init(name: String, lifePoint: Int, defen: String, level: Int, weaponDamage: Int, specialCapacity:Int){
                self.name = name
                self.lifePoint = lifePoint
                self.defen = defen
                self.level = level
                self.weaponDamage = weaponDamage
                self.specialCapacity = specialCapacity
                func boos2() {
                    self.lifePoint -= lifePoint
                 ///   print("................. \(name)........... \(lifePoint) ...............")

                }
            }
        }

                    
        class newPlayar {
            var name: String
            var lifePoint: Int
            var defen: String
            var level: Int
            var weaponDamage : Int
            var specialCapacity : Int
            init(name: String, lifePoint: Int, defen: String, level: Int, weaponDamage: Int, specialCapacity: Int){
                self.name = name
                self.lifePoint = lifePoint
                self.defen = defen
                self.level = level
                self.weaponDamage = weaponDamage
                self.specialCapacity = specialCapacity
                func newPlayar() {
                    self.lifePoint -= lifePoint
               //     print("................. \(name)........... \(lifePoint) ...............")
                
                }
            }
        }


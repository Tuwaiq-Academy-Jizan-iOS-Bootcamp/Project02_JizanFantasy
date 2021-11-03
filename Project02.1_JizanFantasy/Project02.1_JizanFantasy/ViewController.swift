//  Created by حمد الحريصي on 03/11/2021.
import UIKit

class ViewController: UIViewController
{
    var index: Int = 0
    var myImages2 = ["boss1","boss2"]
    
    @IBOutlet var heroImageinVC1: UIImageView!
    @IBOutlet var bossImage: UIImageView!
    @IBOutlet var diceLabel: UILabel!
    
    override func viewDidLoad()
    {
    super.viewDidLoad()
        if myImages2[index] == myImages2[0]
        {
        let boss1LP1 = 250
        bossLP1.text = "\(boss1LP1)"
        let boss1DF1 = 30
        bossDF1.text = "\(boss1DF1)"
        }else{
        let boss1LP2 = 170
        bossLP1.text = "\(boss1LP2)"
        let boss1DF2 = 25
        bossDF1.text = "\(boss1DF2)"
        }
        bossImage.image = UIImage(named: myImages2[Int.random(in: 0...1)] )
    print("\(String(describing: bossImage))")
    }
    
    
    @IBOutlet var bossLP1: UILabel!
    @IBOutlet var bossDF1: UILabel!
    
//    func boss()
//    {
//        for _ in myImages2
//        {
//        switch myImages2
//        {
//        case ["boss1"]:
//
//        let boss1LP1 = 250
//                bossLP1.text = "\(boss1LP1)"
//        let boss1DF1 = 30
//                bossDF1.text = "\(boss1DF1)"
//        case ["boss2"]:
//        let boss1LP1 = 170
//                    bossLP1.text = "\(boss1LP1)"
//        let boss1DF1 = 30
//                    bossDF1.text = "\(boss1DF1)"
//
//        default:
//            print("ERORR ?!$##%#$%^@$^@")
//        }
//        }
//
//func boss()
//    {
 //   if myImages2[index] == myImages2[0]
 //  {
 
//    else if myImages2[index] == myImages2[1]
//    {
//    let boss1LP2 = 170
//    bossLP1.text = "\(boss1LP2)"
//    let boss1DF2 = 25
//    bossDF1.text = "\(boss1DF2)"
//    print("1241235462562")
//
//    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func rollDiceButton(_ sender: UIButton)
    {
        diceLabel.text = "Dice = \(rollingDice())"
        func rollingDice() -> Int
        {
            var dice: Int
            dice = Int.random(in: 1...20)
            print("Dice = \(dice)")
            
            return dice
        }
    }
    @IBAction func toHeroesPage(_ sender: Any)
    {
        
        performSegue(withIdentifier: "fromVC1toVC2", sender: self)
    }
    
@IBAction func textFieldfromLP(segue:UIStoryboardSegue)
{
}
    
}

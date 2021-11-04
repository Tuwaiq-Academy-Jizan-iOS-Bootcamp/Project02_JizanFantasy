//
//  ViewControllerTwo.swift
//  Project
//
//  Created by Abdulrahman Gazwani on 28/03/1443 AH.
//

import UIKit

class ViewControllerTwo:UIViewController {
    
    @IBOutlet weak var myTextLP: UITextField!
    @IBOutlet weak var myTextDF: UITextField!
    @IBOutlet weak var myTextPD: UITextField!
    @IBOutlet weak var myTextWD: UITextField!
    @IBOutlet weak var myTextSC: UITextField!
    
    @IBOutlet weak var point: UILabel!
    
    // IMAGE & NAME
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabl: UILabel!
    var imageName = ""
    var buttonActions = 0
    var index: Int = 0
    var arrayphot1 = ["Knight","Thief","Wizard"]
    @IBAction func nextButton(_ sender: Any) {
        if index < arrayphot1.count - 1 {
            index += 1
        }else {
            index = 0
        }
        imageView.image = UIImage(named: arrayphot1[index] )
        nameLabl.text = arrayphot1[index]
    }
    @IBAction func backButton(_ sender: Any) {
        if index > 0 {
            index -= 1
        }else {
            index = arrayphot1.count - 1
        }
        imageView.image = UIImage(named: arrayphot1[index] )
       nameLabl.text = arrayphot1[index]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: arrayphot1[0] )
       nameLabl.text = arrayphot1[0]
        
          super.viewDidLoad()
        
       myTextLP.delegate = self
        }
    @IBAction func creat(_ sender: Any) {
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let saveName
        = segue.destination as! ViewController
        saveName.imagePlayer2.image = imageView.image
        saveName.lPPlayer2.text = myTextLP.text
        saveName.dFPlayer2.text = myTextDF.text
        saveName.pdPlayer2.text = myTextPD.text
        saveName.wdPlayer2.text = myTextWD.text
        saveName.scPlayer2.text = myTextSC.text
      }
        
    }

    extension ViewControllerTwo : UITextFieldDelegate
{
  func textFieldShouldReturn(_ textField: UITextField) -> Bool
  {
      imageView.resignFirstResponder()
      myTextLP.resignFirstResponder()
      myTextDF.resignFirstResponder()
      myTextPD.resignFirstResponder()
      myTextWD.resignFirstResponder()
      myTextSC.resignFirstResponder()
      
      
    return true
  }
}
        
    
    
    
    
    
    
    





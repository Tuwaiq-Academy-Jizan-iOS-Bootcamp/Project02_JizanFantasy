//
//  HeroViewController.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import UIKit

class HeroViewController: UIViewController {
    
    var viewModel: ViewModel!
    var selectedHero: Hero! {
        didSet {
            self.displayHero(selectedHero)
        }
    }
    
    override func viewDidLoad() {
        let heroView = HeroView()
        
        self.view = heroView
        self.navigationItem.title = "Hero Selection"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        heroView.delegate = self
        self.selectedHero = Knight()
    }
    
    
    func displayHero(_ hero: Hero) {
        guard let view = self.view as? HeroView else { return }
        
        view.nameLabel.text = hero.name
        view.lifePointPropertyView.maxValue = Double(hero.lifePoint)
        view.defensePropertyView.maxValue = Double(hero.defense)
        view.powerDamagePropertyView.maxValue = Double(hero.powerDamage)
        view.weaponDamagePropertyView.maxValue = Double(hero.weapon)
        view.specialCapacityValue.text = hero.specialCapacity
        
        if let imageName = hero.imageName {
            view.image.image = UIImage(named: imageName)
        }
        
        view.selectHeroButton.setTitle("Select \(hero.name)", for: .normal)
    }
}

extension HeroViewController: HeroViewDelegate {
    
    func handleSegmentedControllChanged(_ sender: UISegmentedControl) {
        let heros = ["Knight", "Wizard", "Theif"]
        let selectdHeroName = heros[sender.selectedSegmentIndex]
        
        switch selectdHeroName {
            case "Knight":
                self.selectedHero = Knight()
            case "Wizard":
                self.selectedHero = Wizard()
            case "Theif":
                self.selectedHero = Thief()
                
            default:
                assert(true, "We should nevet reach this case 😦")
        }
    }
    
    func handleSelectHeroButtonTapped(_ sender: UIButton) {
        self.viewModel.selectedHero = self.selectedHero
        self.navigationController?.popViewController(animated: true)
    }
    
    func handleProperyValueChanged(property: String, newValue: Double) {
        switch property {
            case "Life Point":
                self.selectedHero.lifePoint = Int(newValue)
            case "Defense":
                self.selectedHero.defense = Int(newValue)
            case "Power Damage":
                self.selectedHero.powerDamage = Int(newValue)
            case "Weapon Damage":
                self.selectedHero.weapon = Int(newValue)
            default:
                assert(true, "We should not get this property 😧. Receiving \(property)")
        }
    }
    
}

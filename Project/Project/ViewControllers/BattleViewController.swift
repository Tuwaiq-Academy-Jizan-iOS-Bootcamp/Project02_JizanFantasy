//
//  BattleViewController.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import UIKit

class BattleViewController: UIViewController {
    
    var viewModel = ViewModel()
        
    override func loadView() {
        self.view = UIView()

        self.view.backgroundColor = .systemBackground
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        self.navigationItem.title = "Jizan Fantasy"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let battleView = BattleView()
        
        
        battleView.delegate = self
        
        self.view = battleView
        
        self.navigationItem.rightBarButtonItem = .init(title: "Select Hero", style: .plain, target: self, action: #selector(self.handleBarButtonItemTapped))
        
        let boss = viewModel.getRandomBoss()
        self.displayBoss(boss)
        
        if let hero = viewModel.selectedHero {
            self.displayHero(hero)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let hero = viewModel.selectedHero {
            guard let view = self.view as? BattleView else { return }
            
            self.displayHero(hero)
            
            if hero.lifePoint > 0 {
                view.rollingDiceButton.isEnabled = true
            }
        }
    }
    
    func displayHero(_ hero: Hero) {
        guard let view = self.view as? BattleView else { return }
        
        view.heroName.text = hero.name
        view.heroLifePoint.text = String(hero.lifePoint)
        view.heroDefinse.text = String(hero.defense)
        view.heroPowerDamage.text = String(hero.powerDamage)
        view.heroWeaponDamage.text = String(hero.weapon)
        view.heroSpecialCapacity.text = String(hero.specialCapacity)
        
        if let imageName = hero.imageName {
            view.heroUIImage.image = UIImage(named: imageName)
        }
    }
    
    func displayBoss(_ boss: Boss) {
        guard let view = self.view as? BattleView else { return }
        
        view.bossName.text = boss.name
        view.bossLifePoint.text = String(boss.lifePoint)
        view.bossDefinse.text = String(boss.defense)
        view.bossPowerDamage.text = String(boss.powerDamage)
        view.bossWeaponDamage.text = String(boss.weapon)
        view.bossSpecialCapacity.text = String(boss.specialCapacity)
    }
    
    @objc
    func handleBarButtonItemTapped(_ sender: UIBarButtonItem) {
        
        let heroViewController = HeroViewController()
        heroViewController.viewModel = self.viewModel
        
        self.navigationController?.pushViewController(heroViewController, animated: true)
    }
}

extension BattleViewController: BattleViewDelegate {
    func handleRoleDiceButtonTapped(sender: UIButton) {
        let (value, text) = self.viewModel.dice()
        
        guard let view = self.view as? BattleView else { return }
        
        view.rollingDescriptionValue.text = text
        view.rollingResultValue.text = String(value)
        
        guard let boss = self.viewModel.selectedBoss, let hero = self.viewModel.selectedHero else { return }
        
        if boss.lifePoint <= 0 {
            view.rollingDiceButton.setTitle("\(hero.name) Wins!", for: .disabled)
            view.rollingDiceButton.isEnabled = false
        } else if hero.lifePoint <= 0 {
            view.rollingDiceButton.setTitle("\(boss.name) Wins!", for: .disabled)
            view.rollingDiceButton.isEnabled = false
        }
        
        self.displayBoss(boss)
        self.displayHero(hero)
    }
}


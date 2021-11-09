//
//  BattleView.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import UIKit
import SnapKit

protocol BattleViewDelegate: AnyObject {
    func handleRoleDiceButtonTapped(sender: UIButton)
}


// Parent View
class BattleView: UIView {
    
    weak var delegate: BattleViewDelegate?
    
    // Child Views
    var bossName: UILabel = {
        let label = UILabel()
        
        label.text = "Boss Name"
        label.textColor = .black
        
        return label
    }()
    var bossUIImage: UIImageView = .init(image: UIImage(named: "Boss1"))
    var bossLifePoint: UILabel = .init()
    var bossDefinse: UILabel = .init()
    var bossPowerDamage: UILabel = .init()
    var bossWeaponDamage: UILabel = .init()
    var bossSpecialCapacity: UILabel = .init()
    
    var heroName: UILabel = {
        let label = UILabel()
        
        label.text = "Not selected"
        label.textColor = .black
        
        return label
    }()
    var heroUIImage: UIImageView = .init(image: UIImage(systemName: "questionmark"))
    var heroLifePoint: UILabel = {
        let label = UILabel()
        
        label.text = "-"
        label.textColor = .black
        
        return label
    }()
    var heroDefinse: UILabel = {
        let label = UILabel()
        
        label.text = "-"
        label.textColor = .black
        
        return label
    }()
    var heroPowerDamage: UILabel = {
        let label = UILabel()
        
        label.text = "-"
        label.textColor = .black
        
        return label
    }()
    var heroWeaponDamage: UILabel = {
        let label = UILabel()
        
        label.text = "-"
        label.textColor = .black
        
        return label
    }()
    var heroSpecialCapacity: UILabel = {
        let label = UILabel()
        
        label.text = "-"
        label.textColor = .black
        
        return label
    }()
    
    
    // Fixed labels
    var lifePointLabel: UILabel = {
        let label = UILabel()
        label.text = "Life Point"
        
        return label
    }()
    var defenseLabel: UILabel = {
        let label = UILabel()
        label.text = "Defense"
        
        return label
    }()
    var powerDamageLabel: UILabel = {
        let label = UILabel()
        label.text = "Power Damage"
        
        return label
    }()
    var weaponDamageLabel: UILabel = {
        let label = UILabel()
        label.text = "Weapon Damage"
        
        return label
    }()
    var specialCapacityLabel: UILabel = {
        let label = UILabel()
        label.text = "Special Capacity"
        
        return label
    }()
    
    var rollingDiceButton: UIButton = {
       let button = UIButton()
        
        button.setTitle("Role the dice", for: .normal)
        button.setTitle("Please select a hero", for: .disabled)
        button.backgroundColor = .blue
        return button
    }()
    
    @objc
    func handleRoleDiceButtonTapped(_ sender: UIButton) {
        self.delegate?.handleRoleDiceButtonTapped(sender: sender)
    }
    
    var rollingDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Description"
        return label
    }()
    var rollingDescriptionValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        return label
    }()
    
    var rollingResultLabel: UILabel = {
        let label = UILabel()
        label.text = "Rolling Result"
        return label
    }()
    var rollingResultValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        return label
    }()
    
    convenience init() {
        self.init(frame: .zero)
        self.backgroundColor = .systemBackground
        
        // 1. Add the child views to parent view
        self.addSubviews(
            self.bossName,
            self.bossUIImage,
            self.heroName,
            self.heroUIImage,
            
            // Fixed
            self.lifePointLabel,
            self.defenseLabel,
            self.powerDamageLabel,
            self.weaponDamageLabel,
            self.specialCapacityLabel,
            
            // Boss Props
            self.bossLifePoint,
            self.bossDefinse,
            self.bossPowerDamage,
            self.bossWeaponDamage,
            self.bossSpecialCapacity,
            
            // Hero Props
            self.heroLifePoint,
            self.heroDefinse,
            self.heroPowerDamage,
            self.heroWeaponDamage,
            self.heroSpecialCapacity,
            self.rollingResultLabel,
            self.rollingResultValue,
            self.rollingDescriptionLabel,
            self.rollingDescriptionValue,
            
            // Actions
            self.rollingDiceButton
        )
        
        self.makeBossConstrains()
        self.makeFixedConstrains()
        self.makeKeroConstrains()
        
        self.rollingDescriptionLabel.snp.makeConstraints {
            make in
            
            make.top.equalTo(self.specialCapacityLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
        }
        
        self.rollingDescriptionValue.snp.makeConstraints {
            make in
            
            make.top.equalTo(self.rollingDescriptionLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
        }
        
        self.rollingResultLabel.snp.makeConstraints {
            make in
            
            make.bottom.equalTo(self.rollingDiceButton.snp.top).offset(-10)
            make.leading.equalToSuperview().offset(15)
        }
        
        self.rollingResultValue.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.rollingResultLabel.snp.centerY)
            make.leading.equalTo(self.rollingResultLabel.snp.trailing).offset(15)
        }
        
        
        self.rollingDiceButton.addTarget(self, action: #selector(self.handleRoleDiceButtonTapped), for: .touchUpInside)
        
        self.rollingDiceButton.snp.makeConstraints {
            make in
            
            make.bottom.equalToSuperview().offset(-80)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
        }
        
        
    }
    
    private func makeFixedConstrains() {
        // Fixed
        self.lifePointLabel.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.bossUIImage.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        self.defenseLabel.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.lifePointLabel.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        self.powerDamageLabel.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.defenseLabel.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        self.weaponDamageLabel.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.powerDamageLabel.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        self.specialCapacityLabel.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.weaponDamageLabel.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
    }
    
    private func makeBossConstrains() {
        
        // Image
        self.bossUIImage.contentMode = .scaleAspectFit
        
        // 2. Add constrains to child views
        self.bossName.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.snp.topMargin).offset(10)
            make.leading.equalToSuperview().offset(15)
        }
        self.bossUIImage.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.bossName.snp.bottom).offset(10)
            make.height.equalTo(100)
            make.width.equalTo(100)
            make.leading.equalTo(self.bossName.snp.leading)
        }
        
        // Boss Props
        self.bossLifePoint.snp.makeConstraints {
            make in
            
            make.leading.equalTo(self.bossName.snp.leading)
            make.centerY.equalTo(self.lifePointLabel.snp.centerY)
        }
        self.bossDefinse.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.defenseLabel.snp.centerY)
            make.leading.equalTo(self.bossName.snp.leading)
        }
        self.bossPowerDamage.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.powerDamageLabel.snp.centerY)
            make.leading.equalTo(self.bossName.snp.leading)
        }
        self.bossWeaponDamage.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.weaponDamageLabel.snp.centerY)
            make.leading.equalTo(self.bossName.snp.leading)
        }
        self.bossSpecialCapacity.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.specialCapacityLabel.snp.centerY)
            make.leading.equalTo(self.bossName.snp.leading)
        }
    }
    
    private func makeKeroConstrains() {
        
        self.heroUIImage.contentMode = .scaleAspectFit
        
        self.heroName.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.snp.topMargin).offset(10)
            make.trailing.equalToSuperview().offset(-15)
        }
        self.heroUIImage.snp.makeConstraints {
            make in
            
            make.topMargin.equalTo(self.heroName.snp.bottom).offset(10)
            make.height.equalTo(100)
            make.width.equalTo(100)
            make.trailing.equalToSuperview().offset(-15)
        }
        
        self.heroLifePoint.snp.makeConstraints {
            make in
            
            make.trailing.equalTo(self.heroName.snp.trailing)
            make.centerY.equalTo(self.lifePointLabel.snp.centerY)
        }
        self.heroDefinse.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.defenseLabel.snp.centerY)
            make.trailing.equalTo(self.heroName.snp.trailing)
        }
        self.heroPowerDamage.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.powerDamageLabel.snp.centerY)
            make.trailing.equalTo(self.heroName.snp.trailing)
        }
        self.heroWeaponDamage.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.weaponDamageLabel.snp.centerY)
            make.trailing.equalTo(self.heroName.snp.trailing)
        }
        self.heroSpecialCapacity.snp.makeConstraints {
            make in
            
            make.centerY.equalTo(self.specialCapacityLabel.snp.centerY)
            make.trailing.equalTo(self.heroName.snp.trailing)
        }
    }
    
    
    
}


// ltr
// Leading = Left
// Trailing = Right

// rtl
// Leading = Right
// Trailing = Left


//
//  HeroView.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import UIKit
import SnapKit

protocol HeroViewDelegate: AnyObject {
    func handleSegmentedControllChanged(_ sender: UISegmentedControl)
    func handleSelectHeroButtonTapped(_ sender: UIButton)
    func handleProperyValueChanged(property: String, newValue: Double)
}

class HeroView: UIView {
    
    weak var delegate: HeroViewDelegate?
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "-"
        
        return label
    }()
    var image: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "questionmark"))
        
        return imageView
    }()
    
    
    lazy var lifePointPropertyView: HeroPropertyView = {
        let heroPropertyView = HeroPropertyView(name: "Life Point", currentValue: 0, maxValue: 0)
        heroPropertyView.delegate = self
        return heroPropertyView
    }()
    
    lazy var defensePropertyView: HeroPropertyView = {
        let heroPropertyView = HeroPropertyView(name: "Defense", currentValue: 0, maxValue: 0)
        heroPropertyView.delegate = self
        return heroPropertyView
    }()
    
    lazy var powerDamagePropertyView: HeroPropertyView = {
        let heroPropertyView = HeroPropertyView(name: "Power Damage", currentValue: 0, maxValue: 0)
        heroPropertyView.delegate = self
        return heroPropertyView
    }()
    
    lazy var weaponDamagePropertyView: HeroPropertyView = {
        let heroPropertyView = HeroPropertyView(name: "Weapon Damage", currentValue: 0, maxValue: 0)
        heroPropertyView.delegate = self
        return heroPropertyView
    }()
    
    var specialCapacityLabel: UILabel = {
        let label = UILabel()
        label.text = "Special Capacity"
        
        return label
    }()
    
    var specialCapacityValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        
        return label
    }()
    
    var heroStoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Story The New Challenger"

        return label
    }()
    var heroStoryValue: UILabel = {
        let label = UILabel()
        label.text = "-"

        return label
    }()

    var selectHeroButton: UIButton = {
        let button = UIButton()

        button.setTitle("Select ?", for: .normal)
        button.setTitle("No Hero", for: .disabled)

        return button
    }()
    
    var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: [
            "Knight",
            "Wizard",
            "Theif"
        ])
        
        segmentedControl.selectedSegmentIndex = 0
        
        return segmentedControl
    }()
    
    
    convenience init() {
        self.init(frame: .zero)
        
        self.backgroundColor = .systemBackground
        
        
        self.addSubviews(
            self.segmentedControl,
            self.image,
            self.nameLabel,
            self.lifePointPropertyView,
            self.defensePropertyView,
            self.powerDamagePropertyView,
            self.weaponDamagePropertyView,
            self.specialCapacityLabel,
            self.specialCapacityValue,
            self.heroStoryLabel,
            self.heroStoryValue,
            self.selectHeroButton
        )
        
        
        self.segmentedControl.snp.makeConstraints {
            make in
            
            make.topMargin.equalToSuperview().offset(10)
            make.centerX.equalToSuperview()
        }
        self.image.snp.makeConstraints {
            make in
            
            make.top.equalTo(self.segmentedControl.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(15)
            make.height.equalTo(100)
            make.width.equalTo(100)
        }
        
        self.image.contentMode = .scaleAspectFit
        
        self.nameLabel.snp.makeConstraints {
            make in
            
            make.leading.equalTo(self.image.snp.trailing).offset(10)
            make.top.equalTo(self.image.snp.top)
        }

        self.lifePointPropertyView.snp.makeConstraints {
            make in
            
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
            make.height.equalTo(40)
            
            make.top.equalTo(self.image.snp.bottom).offset(10)
        }
        
        self.defensePropertyView.snp.makeConstraints {
            make in
            
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
            make.height.equalTo(40)
            
            make.top.equalTo(self.lifePointPropertyView.snp.bottom).offset(10)
        }
        
        self.powerDamagePropertyView.snp.makeConstraints {
            make in
            
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
            make.height.equalTo(40)
            
            make.top.equalTo(self.defensePropertyView.snp.bottom).offset(10)
        }
        
        self.weaponDamagePropertyView.snp.makeConstraints {
            make in
            
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
            make.height.equalTo(40)
            
            make.top.equalTo(self.powerDamagePropertyView.snp.bottom).offset(10)
        }
        
        self.specialCapacityLabel.snp.makeConstraints {
            make in
            
            make.leading.equalToSuperview().offset(15)
            
            make.top.equalTo(self.weaponDamagePropertyView.snp.bottom).offset(10)
        }
        
        self.specialCapacityValue.snp.makeConstraints {
            make in
            
            make.trailing.equalToSuperview().offset(-15)
            make.centerY.equalTo(self.specialCapacityLabel.snp.centerY)
        }
        
        self.heroStoryLabel.snp.makeConstraints {
            make in
            
            make.top.equalTo(self.specialCapacityLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(15)
        }
        self.heroStoryValue.snp.makeConstraints {
            make in
            
            make.leading.equalTo(self.heroStoryLabel.snp.leading)
            make.top.equalTo(self.heroStoryLabel.snp.bottom).offset(10)
        }
        self.selectHeroButton.snp.makeConstraints {
            make in
            
            make.bottom.equalToSuperview().offset(-80)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-15)
        }
        
        selectHeroButton.backgroundColor = .blue
        
        selectHeroButton.addTarget(self, action: #selector(self.handleSelectHeroButtonTapped), for: .touchUpInside)
        segmentedControl.addTarget(self, action: #selector(self.handleSegmentedControlChanged), for: .valueChanged)
    }
    
    @objc
    func handleSegmentedControlChanged(_ sender: UISegmentedControl) {
        self.delegate?.handleSegmentedControllChanged(sender)
    }
    
    @objc
    func handleSelectHeroButtonTapped(_ sender: UIButton) {
        self.delegate?.handleSelectHeroButtonTapped(sender)
    }
    
}

extension HeroView: HeroProperyViewDelegate {
    func stepperValueIncreased(_ newValue: Double, heroPropertyView: HeroPropertyView) {
        self.delegate?.handleProperyValueChanged(property: heroPropertyView.nameLabel.text!, newValue: newValue)
    }
}

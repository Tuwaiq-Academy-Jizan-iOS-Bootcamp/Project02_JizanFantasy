//
//  HeroProperty.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//

import UIKit
import SnapKit

protocol HeroProperyViewDelegate: AnyObject {
    func stepperValueIncreased(_ newValue: Double, heroPropertyView: HeroPropertyView)
}

class HeroPropertyView: UIView {
    
    weak var delegate: HeroProperyViewDelegate?
    var maxValue: Double! {
        didSet {
            self.stepper.maximumValue = maxValue
            self.stepper.value = maxValue
            self.valueLabel.text = String(maxValue)
        }
    }
    
    var nameLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    var valueLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.maximumValue = self.maxValue
        stepper.stepValue = 1
        
        
        stepper.addTarget(self, action: #selector(self.handleValueChanged), for: .valueChanged)
        
        return stepper
    }()
    
    convenience init(name: String, currentValue: Double, maxValue: Double) {
        self.init(frame: .zero)
        self.maxValue = maxValue
        
        self.addSubviews(
            self.nameLabel,
            self.valueLabel,
            self.stepper
        )
        
        stepper.value = currentValue
        
        self.nameLabel.text = name
        self.valueLabel.text = String(self.stepper.value)
        
        
        self.nameLabel.snp.makeConstraints {
            make in
            
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        self.stepper.snp.makeConstraints {
            make in
            
            make.trailing.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        self.valueLabel.snp.makeConstraints {
            make in
            
            make.trailing.equalTo(self.stepper.snp.leading).offset(-10)
            make.centerY.equalToSuperview()
        }
    }
    
    @objc
    func handleValueChanged(_ stepper: UIStepper) {
        self.valueLabel.text = String(stepper.value)
        self.delegate?.stepperValueIncreased(stepper.value, heroPropertyView: self)
    }
}

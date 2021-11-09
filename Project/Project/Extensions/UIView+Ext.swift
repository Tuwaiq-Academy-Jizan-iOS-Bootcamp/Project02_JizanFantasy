//
//  UIView+Ext.swift
//  Project
//
//  Created by Ahlam Ahlam on 01/04/1443 AH.
//
import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            self.addSubview(view)
        }
    }
}


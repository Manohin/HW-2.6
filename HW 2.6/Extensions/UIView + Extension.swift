//
//  UIViewExtension.swift
//  HW 2.6
//
//  Created by Alexey Manokhin on 28.11.2023.
//

import UIKit

extension UIView {
    func applyBackgroundColor() {
        self.backgroundColor = UIColor(
            red: 0.941,
            green: 0.941,
            blue: 0.941,
            alpha: 1
        )
    }
    
    func translatesAutoresizingMaskIsFalse() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}



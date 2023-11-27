//
//  ReusableView.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/23.
//

import UIKit

protocol ReusableView: AnyObject {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

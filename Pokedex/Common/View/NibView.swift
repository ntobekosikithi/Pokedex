//
//  NibView.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/23.
//

import UIKit

protocol NibView: AnyObject {}

extension NibView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

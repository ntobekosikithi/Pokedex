//
//  UICollectionView+Extensions.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/23.
//

import Foundation
import UIKit

extension UICollectionView {

    func register<T: UICollectionViewCell & ReusableView & NibView>(_: T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell & ReusableView>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Unable to dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}

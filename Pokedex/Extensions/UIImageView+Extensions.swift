//
//  UIImageView+Extensions.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/26.
//

import Foundation
import UIKit

extension UIImageView {
    
    func loadImage(from url: URL) {
        AsynchronousProvider.runOnConcurrent {
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil else {
                    print("Error loading image: \(error?.localizedDescription ?? "Unknown error")")
                    return
                }
                AsynchronousProvider.runOnMain {
                    if let image = UIImage(data: data) {
                        self.image = image
                    } else {
                        print("Invalid image data")
                    }
                }
            }.resume()
        }
    }
}

//
//  String+Extensions.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/25.
//

import Foundation
import UIKit

extension String {
    func pokeColor() -> UIColor {
        switch self {
        case "fire": return .systemRed
        case "poison": return .systemGreen
        case "water": return .systemBlue
        case "electric": return .systemYellow
        case "physic": return .systemPurple
        case "normal": return .systemOrange
        case "ground": return .systemGray
        case "flying": return .systemTeal
        case "bug": return .systemTeal
        case "fairy": return .systemPink
        case "grass": return .systemGreen
        default: return .systemIndigo
        }
    }
}

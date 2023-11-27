//
//  Resolving.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation

protocol Resolving {
    static func resolve<T>(dependency: T.Type) -> T
    static func reset()
}

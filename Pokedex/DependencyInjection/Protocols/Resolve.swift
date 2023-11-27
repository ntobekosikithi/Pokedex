//
//  Resolve.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation

protocol Resolve {
    func resolve<T>(_ dependency: T.Type) -> T
    func reset()
}

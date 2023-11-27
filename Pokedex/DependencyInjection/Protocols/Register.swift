//
//  Register.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation
import Swinject

protocol Register {
    func register<T>(dependency: T.Type,
                     implementation: @escaping (_ resolver: Resolve) -> T,
                     objectScope: ObjectScope)
}

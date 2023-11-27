//
//  ResolverFactory.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation
import Swinject

class ResolverFactory {
    private static var container: Resolve = DIContainer.instance
}

extension ResolverFactory: Resolving {
    static func resolve<T>(dependency: T.Type) -> T {
        return container.resolve(dependency)
    }
    static func reset() {
        container.reset()
    }
}

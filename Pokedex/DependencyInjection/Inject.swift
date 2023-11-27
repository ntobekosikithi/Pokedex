//
//  Inject.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation

@propertyWrapper public struct Inject<T> {
    public var wrappedValue: T {
        return instance
    }

    private var instance: T
    public init() {
        instance = ResolverFactory.resolve(dependency: T.self)
    }
}

//
//  DependencyRegister.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation
import ServiceLayer

func registerAllDependencies() {
    let container = DIContainer.instance
    container.register(dependency: ServiceLayer.self, implementation: { _ in
        ServiceLayerImplementation()
    }, objectScope: .weak)

    container.register(dependency: PokemonRepository.self, implementation: {
        _ in
        return PokemonRepositoryImplementation()
    }, objectScope: .weak)
}

//
//  PokemonRepository.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import ServiceLayer
import Foundation

protocol PokemonRepository: AnyObject {
    func getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)
    
}

class PokemonRepositoryImplementation: PokemonRepository {
    
    @Inject private var service: ServiceLayer
    
    func getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void) {
        let url = (Constants.baseURL + EndPoints.pokemon + id)
        service.makeRequest(url: url, method: .get, headers: nil, parameters: nil,
            success: {(response: PokemonDetails) in
                completion(Result.success(response))
        }, error: {(error: ServiceError) in
            completion(Result.failure(error))
        })
    }
}

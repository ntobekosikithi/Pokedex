//
//  PokemonsListViewModel.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/23.
//

import Foundation

class PokemonsListViewModel {
    
    @Inject private var repository: PokemonRepository
    private weak var view: PokemonsListView?
    private var pokemons = [PokemonDetails]()
    
    init(view: PokemonsListView) {
        self.view = view
    }
    
    func getPokemons() {
        self.view?.showLoadingIndicator()
        AsynchronousProvider.runOnConcurrent { [weak self] in
            guard let self = self else { return }
            for id in 1...100 {
                var responseError: Error?
                self.repository.getPokemons(id: String(id)){ results in
                    AsynchronousProvider.runOnMain {
                        switch results {
                        case let .success(response):
                            self.handlePokemonResponse(pokemon: response)
                        case let .failure(error):
                            responseError = error
                            self.view?.hideLoadingIndicator()
                            self.view?.showError(errorMessage: error.localizedDescription)
                        }
                    }
                }
                if let _ = responseError { break }
            }
        }
    }
    
    func handlePokemonResponse(pokemon: PokemonDetails) {
        self.pokemons.append(pokemon)
        if pokemons.count > 99 {
            self.view?.hideLoadingIndicator()
            self.view?.reloadViewWith(pokemons: self.pokemons)
        }
    }
}

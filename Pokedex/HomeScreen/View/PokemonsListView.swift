//
//  PokemonsListView.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/23.
//

import Foundation

protocol PokemonsListView: AnyObject  {
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func reloadViewWith(pokemons: [PokemonDetails])
    func showError(errorMessage: String)
}

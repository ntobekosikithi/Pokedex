//
//  PokemonViewController.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/23.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private let searchBar = UISearchBar()
    private let searchBarPlaceholder = "Search"
    private var pokemons: [PokemonDetails] = []
    private var filteredPokemons: [PokemonDetails] = []
    private let collectionViewEdgeInsets:CGFloat = 8
    private let collectionViewCellHeight:CGFloat = 230
    private let collectionViewMinimumLineSpacing:CGFloat = 10
    private lazy var viewModel: PokemonsListViewModel = {
        return PokemonsListViewModel(view: self)
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getPokemons()
        setupSearchBar()
        setCollectionView()
    }
    
    func setupSearchBar() {
        searchBar.placeholder = searchBarPlaceholder
        searchBar.delegate = self
        navigationItem.titleView = searchBar
    }
    
    func setCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(PokemonCollectionViewCell.self)
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = UIEdgeInsets(top: 0, left: collectionViewEdgeInsets, bottom: 0, right: collectionViewEdgeInsets)
        }
    }
}

// MARK: UICollectionViewDataSource
extension PokemonViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.filteredPokemons.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as PokemonCollectionViewCell
        let pokemon = filteredPokemons[indexPath.row]
        cell.configure(pokemon: pokemon)
        return cell
    }
}

// MARK: UICollectionViewDelegate
extension PokemonViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let pokemonDetails = filteredPokemons[indexPath.row]
        let viewController = PokemonDetailsViewController(pokemonDetails: pokemonDetails)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

//MARK: - UICollectionViewDelegateFlowLayout Methods
extension PokemonViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacing: CGFloat = (collectionViewEdgeInsets * 2) + collectionViewMinimumLineSpacing
        let collectionViewWidth = collectionView.frame.width
        let cellWidth = (collectionViewWidth - spacing) / 2
        return CGSize(width: cellWidth, height: collectionViewCellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return collectionViewMinimumLineSpacing
    }
}

// MARK: UISearchBarDelegate
extension PokemonViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            filteredPokemons = pokemons
            collectionView.reloadData()
            return
        }
        filteredPokemons = pokemons.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        collectionView.reloadData()
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        filteredPokemons = pokemons
        collectionView.reloadData()
    }
}

// MARK: PokemonsListView
extension PokemonViewController: PokemonsListView {
    func showLoadingIndicator() {
        self.showActivityIndicatory()
    }
    
    func hideLoadingIndicator() {
        self.hideActivityIndicatory()
    }
    
    func reloadViewWith(pokemons: [PokemonDetails]) {
        self.pokemons = pokemons
        self.filteredPokemons = pokemons
        collectionView.reloadData()
    }
    
    func showError(errorMessage: String) {
        
    }
}

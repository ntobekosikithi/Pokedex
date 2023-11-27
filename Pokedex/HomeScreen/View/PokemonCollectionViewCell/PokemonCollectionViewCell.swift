//
//  PokemonCollectionViewCell.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/25.
//

import UIKit

class PokemonCollectionViewCell: UICollectionViewCell,  NibView, ReusableView {

    @IBOutlet weak var containerView: UIView!{
        didSet {
            containerView.clipsToBounds = true
            containerView.layer.cornerRadius = 6
            containerView.layer.borderWidth = 2
        }
    }
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(pokemon: PokemonDetails) {
        lblTitle.text = pokemon.name
        lblHeight.text = "\(pokemon.height)"
        lblWeight.text = "\(pokemon.weight)"
        if let color = pokemon.types.first?.type.name.pokeColor() { 
            containerView.layer.borderColor = color.cgColor
        }
        
        if let url = URL(string: pokemon.sprite.url) {
            pokemonImage.loadImage(from: url)
        }
    }
}

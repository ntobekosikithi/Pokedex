//
//  PokemonDetailsViewController.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/25.
//

import UIKit

class PokemonDetailsViewController: UIViewController {

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var statsStackView: UIStackView!
    @IBOutlet weak var barChartView: BarChartView!
    
    private var pokemonDetails: PokemonDetails
    private var pokemonDetailsNibName = "PokemonDetailsViewController"
    private var screenTitle = "Pokemons Details"
    
    init(pokemonDetails: PokemonDetails) {
        self.pokemonDetails = pokemonDetails
        super.init(nibName: pokemonDetailsNibName, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        navigationItem.title = screenTitle
        lblName.text = pokemonDetails.name
        lblHeight.text = "\(pokemonDetails.height)"
        lblWeight.text = "\(pokemonDetails.weight)"
        let values:[CGFloat] = pokemonDetails.stats.map { CGFloat($0.baseStat) }
        let dataPoints:[String] = pokemonDetails.stats.map { $0.stat.name }
        barChartView.dataPoints = dataPoints
        barChartView.values = values
        
        if let color = pokemonDetails.types.first?.type.name.pokeColor() {
            
            barChartView.color = color
        }
        
        barChartView.setNeedsDisplay()
        if let url = URL(string: pokemonDetails.sprite.url) {
            pokemonImage.loadImage(from: url)
        }
        
    }
}

//
//  PokemonsModel.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation

struct PokemonDetails: Codable {
    let id: Int
    let name: String
    let weight: Int
    let height: Int
    let baseExperience: Int
    let sprite: Sprite
    let types: [Types]
    let stats: [Stat]

    enum CodingKeys: String, CodingKey {
        case id, name, weight, height, types, stats
        case baseExperience = "base_experience"
        case sprite = "sprites"
    }
}

struct Sprite: Codable {
    let url: String
    enum CodingKeys: String, CodingKey {
        case url = "front_default"
    }
}

struct Types: Codable {
    let type: Ptype
    
    struct Ptype: Codable {
        let name: String
    }
}

struct Stat: Codable {
    let baseStat: Int
    let effort: Int
    let stat: Pstat
    
    struct Pstat: Codable {
        let name: String
    }
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort, stat
    }
}

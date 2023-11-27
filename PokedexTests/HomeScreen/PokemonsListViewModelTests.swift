//
//  PokemonsListViewModelTests.swift
//  PokedexTests
//
//  Created by Ntobeko Sikithi on 2023/11/27.
//

import Foundation
import XCTest
import Cuckoo
import ServiceLayer
@testable import Pokedex

final class PokemonsListViewModelTests: XCTestCase {
    private var serviceUnderTest: PokemonsListViewModel!
    private var mockView: MockPokemonsListView!
    private var mockRepository: MockPokemonRepository!
    private var container: DIContainer = DIContainer.instance
    
    override func setUp() {
        super.setUp()
        container.reset()
        container = DIContainer.instance
        AsynchronousProvider.setAsyncRunner(MockAsynchronousRunner())
        container.register(dependency: PokemonRepository.self, implementation: { _ in
            return self.mockRepository
        })
        mockView = MockPokemonsListView()
        mockRepository = MockPokemonRepository()
        serviceUnderTest = PokemonsListViewModel(view: mockView)
        setUpStubs()
    }
    
    override func tearDown() {
        serviceUnderTest = nil
        mockView = nil
        mockRepository = nil
        container.reset()
        AsynchronousProvider.reset()
        super.tearDown()
    }
    
    func setUpStubs() {
        stub(mockView) { mock in
            mock.showLoadingIndicator().thenDoNothing()
            mock.hideLoadingIndicator().thenDoNothing()
        }
    }
    
    func testGetPokemonsIsSuccessfulAndShowList() {
        stub(mockRepository) {  mock in
            mock.getPokemons(id: anyString(), completion: any()).then({ (_, completion) in
                completion(.success(self.mockPokemon))
            })
        }
        
        stub(mockView) { mock in
            mock.reloadViewWith(pokemons: any()).then { (mockPokemons) in
                XCTAssertTrue(mockPokemons.count > 99)
            }
        }
        
        serviceUnderTest.getPokemons()
        
        verify(mockView, times(1)).showLoadingIndicator()
        verify(mockRepository, times(100)).getPokemons(id: anyString(), completion: any())
        verify(mockView, times(1)).hideLoadingIndicator()
        verify(mockView, times(1)).reloadViewWith(pokemons: any())
    }
    
    func testGetPokemonsFailsAndShowsError() {
        stub(mockRepository) {  mock in
            mock.getPokemons(id: anyString(), completion: any()).then({ (_, completion) in
                completion(.failure(mockServiceError.requestFailed))
            })
        }
        
        stub(mockView) { mock in
            mock.showError(errorMessage: anyString()).then { (error) in
                XCTAssertNotNil(error)
            }
        }
        
        serviceUnderTest.getPokemons()
        
        verify(mockView, times(1)).showLoadingIndicator()
        verify(mockRepository, times(1)).getPokemons(id: anyString(), completion: any())
        verify(mockView, times(1)).hideLoadingIndicator()
        verify(mockView, times(1)).showError(errorMessage: anyString())
    }
    
    
    private var mockPokemon: PokemonDetails {
        let sprite = Sprite(url: "mock-url")
        let types = Types(type: Types.Ptype(name: "mock-typeName"))
        let stats = Stat(baseStat: 69, effort: 8, stat: Stat.Pstat(name: "mock-statName"))
        return PokemonDetails(id: 1,
                              name: "mock-name",
                              weight: 48,
                              height: 20,
                              baseExperience: 63,
                              sprite: sprite,
                              types: [types], stats: [stats])
    }
    
 enum mockServiceError: Error {
        case requestFailed
        var localizedDescription: String {
            switch self {
            case .requestFailed: return "Request Failed"
            }
        }
    }
}

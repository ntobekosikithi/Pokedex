// MARK: - Mocks generated from file: Pokedex/HomeScreen/View/PokemonsListView.swift at 2023-11-27 20:26:52 +0000

//
//  PokemonsListView.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/23.
//

import Cuckoo
@testable import Pokedex

import Foundation


 class MockPokemonsListView: PokemonsListView, Cuckoo.ProtocolMock {
    
     typealias MocksType = PokemonsListView
    
     typealias Stubbing = __StubbingProxy_PokemonsListView
     typealias Verification = __VerificationProxy_PokemonsListView

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PokemonsListView?

     func enableDefaultImplementation(_ stub: PokemonsListView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showLoadingIndicator()  {
        
    return cuckoo_manager.call("showLoadingIndicator()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showLoadingIndicator())
        
    }
    
    
    
     func hideLoadingIndicator()  {
        
    return cuckoo_manager.call("hideLoadingIndicator()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.hideLoadingIndicator())
        
    }
    
    
    
     func reloadViewWith(pokemons: [PokemonDetails])  {
        
    return cuckoo_manager.call("reloadViewWith(pokemons: [PokemonDetails])",
            parameters: (pokemons),
            escapingParameters: (pokemons),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.reloadViewWith(pokemons: pokemons))
        
    }
    
    
    
     func showError(errorMessage: String)  {
        
    return cuckoo_manager.call("showError(errorMessage: String)",
            parameters: (errorMessage),
            escapingParameters: (errorMessage),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showError(errorMessage: errorMessage))
        
    }
    

	 struct __StubbingProxy_PokemonsListView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showLoadingIndicator() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonsListView.self, method: "showLoadingIndicator()", parameterMatchers: matchers))
	    }
	    
	    func hideLoadingIndicator() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonsListView.self, method: "hideLoadingIndicator()", parameterMatchers: matchers))
	    }
	    
	    func reloadViewWith<M1: Cuckoo.Matchable>(pokemons: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([PokemonDetails])> where M1.MatchedType == [PokemonDetails] {
	        let matchers: [Cuckoo.ParameterMatcher<([PokemonDetails])>] = [wrap(matchable: pokemons) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonsListView.self, method: "reloadViewWith(pokemons: [PokemonDetails])", parameterMatchers: matchers))
	    }
	    
	    func showError<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonsListView.self, method: "showError(errorMessage: String)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PokemonsListView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showLoadingIndicator() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showLoadingIndicator()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func hideLoadingIndicator() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("hideLoadingIndicator()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func reloadViewWith<M1: Cuckoo.Matchable>(pokemons: M1) -> Cuckoo.__DoNotUse<([PokemonDetails]), Void> where M1.MatchedType == [PokemonDetails] {
	        let matchers: [Cuckoo.ParameterMatcher<([PokemonDetails])>] = [wrap(matchable: pokemons) { $0 }]
	        return cuckoo_manager.verify("reloadViewWith(pokemons: [PokemonDetails])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showError<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return cuckoo_manager.verify("showError(errorMessage: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PokemonsListViewStub: PokemonsListView {
    

    

    
     func showLoadingIndicator()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func hideLoadingIndicator()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func reloadViewWith(pokemons: [PokemonDetails])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showError(errorMessage: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Pokedex/Repository/PokemonRepository.swift at 2023-11-27 20:26:52 +0000

//
//  PokemonRepository.swift
//  Pokedex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Cuckoo
@testable import Pokedex

import Foundation
import ServiceLayer


 class MockPokemonRepository: PokemonRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = PokemonRepository
    
     typealias Stubbing = __StubbingProxy_PokemonRepository
     typealias Verification = __VerificationProxy_PokemonRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PokemonRepository?

     func enableDefaultImplementation(_ stub: PokemonRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)  {
        
    return cuckoo_manager.call("getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)",
            parameters: (id, completion),
            escapingParameters: (id, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getPokemons(id: id, completion: completion))
        
    }
    

	 struct __StubbingProxy_PokemonRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getPokemons<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(id: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (Result<PokemonDetails, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<PokemonDetails, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<PokemonDetails, Error>) -> Void)>] = [wrap(matchable: id) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonRepository.self, method: "getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PokemonRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getPokemons<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(id: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<PokemonDetails, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<PokemonDetails, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<PokemonDetails, Error>) -> Void)>] = [wrap(matchable: id) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PokemonRepositoryStub: PokemonRepository {
    

    

    
     func getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockPokemonRepositoryImplementation: PokemonRepositoryImplementation, Cuckoo.ClassMock {
    
     typealias MocksType = PokemonRepositoryImplementation
    
     typealias Stubbing = __StubbingProxy_PokemonRepositoryImplementation
     typealias Verification = __VerificationProxy_PokemonRepositoryImplementation

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: PokemonRepositoryImplementation?

     func enableDefaultImplementation(_ stub: PokemonRepositoryImplementation) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)  {
        
    return cuckoo_manager.call("getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)",
            parameters: (id, completion),
            escapingParameters: (id, completion),
            superclassCall:
                
                super.getPokemons(id: id, completion: completion)
                ,
            defaultCall: __defaultImplStub!.getPokemons(id: id, completion: completion))
        
    }
    

	 struct __StubbingProxy_PokemonRepositoryImplementation: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getPokemons<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(id: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, (Result<PokemonDetails, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<PokemonDetails, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<PokemonDetails, Error>) -> Void)>] = [wrap(matchable: id) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonRepositoryImplementation.self, method: "getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_PokemonRepositoryImplementation: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getPokemons<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(id: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<PokemonDetails, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<PokemonDetails, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<PokemonDetails, Error>) -> Void)>] = [wrap(matchable: id) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class PokemonRepositoryImplementationStub: PokemonRepositoryImplementation {
    

    

    
     override func getPokemons(id: String, completion: @escaping (Result<PokemonDetails, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


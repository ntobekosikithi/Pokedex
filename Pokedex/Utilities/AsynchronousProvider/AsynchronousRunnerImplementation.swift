//
//  AsynchronousRunnerImplementation.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation

class AsynchronousRunnerImplementation: NSObject, AsynchronousRunner {
    
    public func runOnConcurrent(_ action: @escaping () -> Void) {
        DispatchQueue.global(qos: .background).async(execute: action)
    }
    
    public func runOnMain(_ action: @escaping () -> Void) {
        DispatchQueue.main.async(execute: action)
    }
    
}

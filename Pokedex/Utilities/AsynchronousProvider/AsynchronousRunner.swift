//
//  AsynchronousRunner.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation

public protocol AsynchronousRunner {

    func runOnConcurrent(_ action: @escaping () -> Void)
    
    func runOnMain(_ action: @escaping () -> Void)
    
}

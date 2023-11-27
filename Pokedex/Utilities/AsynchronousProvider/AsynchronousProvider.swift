//
//  AsynchronousProvider.swift
//  Pokédex
//
//  Created by Ntobeko Sikithi on 2023/11/22.
//

import Foundation

public struct AsynchronousProvider {

    private static var asyncRunner : AsynchronousRunner = AsynchronousRunnerImplementation()

    public static func runOnConcurrent(_ action: @escaping () -> Void) {
        asyncRunner.runOnConcurrent(action)
    }
    
    public static func runOnMain(_ action: @escaping () -> Void) {
        asyncRunner.runOnMain(action)
    }

    public static func setAsyncRunner(_ asyncRunner: AsynchronousRunner) {
        self.asyncRunner = asyncRunner
    }
    
    public static func reset() {
        asyncRunner = AsynchronousRunnerImplementation()
    }

}

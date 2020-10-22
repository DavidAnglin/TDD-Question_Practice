//
//  File.swift
//  tdd_practice
//
//  Created by David Anglin on 10/22/20.
//

import Foundation

internal protocol Stubbable: Identifiable {
    static func stub(withId id: Int) -> Self
}

internal extension Stubbable {
    func setting<T>(_ keyPath: WritableKeyPath<Self, T>, to value: T) -> Self {
        var stub = self
        stub[keyPath: keyPath] = value
        return stub
    }
}

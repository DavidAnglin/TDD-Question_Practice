//
//  Array+Extensions.swift
//  tdd_practice
//
//  Created by David Anglin on 10/22/20.
//

import Foundation

extension Array where Element: Stubbable {
    static func stub(withCount count: Int) -> Array {
        return (0..<count).map {
            .stub(withId: $0)
        }
    }
}

extension MutableCollection where Element: Stubbable {
    func setting<T>(_ keyPath: WritableKeyPath<Element, T>,
                    to value: T) -> Self {
        var collection = self
        
        for index in collection.indices {
            let element = collection[index]
            collection[index] = element.setting(keyPath, to: value)
        }
        
        return collection
    }
}

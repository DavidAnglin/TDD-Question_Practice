//
//  Question.swift
//  tdd_practice
//
//  Created by David Anglin on 10/22/20.
//

import Foundation

struct Question: Codable, Equatable, Identifiable {
    let id: Int
    var question: String
}

extension Question: Stubbable {
    static func stub(withId id: Int) -> Question {
        return Question(id: 1,
                        question: "What is a View?")
    }
}

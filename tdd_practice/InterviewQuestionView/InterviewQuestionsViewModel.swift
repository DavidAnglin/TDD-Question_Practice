//
//  InterviewQuestionsViewModel.swift
//  tdd_practice
//
//  Created by David Anglin on 10/22/20.
//

import Foundation

protocol InterviewQuestionsVMContract {
    var questions: [Question] { get set }
    var questionsUpdated: () -> Void { get set }
}

class InterviewQuestionsViewModel: InterviewQuestionsVMContract {
    var questions: [Question] {
        didSet {
            self.questionsUpdated()
        }
    }
    
    public var questionsUpdated: (() -> Void) = {}
    
    init() {
        self.questions = [
            Question
                .stub(withId: 1)
                .setting(\.question, to: "What is a View?"),
            Question
                .stub(withId: 1)
                .setting(\.question, to: "What is a Class?"),
            Question
                .stub(withId: 1)
                .setting(\.question, to: "What is a Struct?"),
            Question
                .stub(withId: 1)
                .setting(\.question, to: "What is an Optional?"),
            Question
                .stub(withId: 1)
                .setting(\.question, to: "What is a protocol?"),
            Question
                .stub(withId: 1)
                .setting(\.question, to: "Where is Waldo?")
        
        ]
    }
}



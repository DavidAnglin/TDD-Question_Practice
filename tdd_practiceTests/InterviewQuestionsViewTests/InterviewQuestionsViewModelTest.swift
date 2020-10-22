//
//  InterviewQuestionsTest.swift
//  tdd_practiceTests
//
//  Created by David Anglin on 10/22/20.
//

@testable import tdd_practice
import XCTest

class InterviewQuestionsViewModelTest: XCTestCase {
    
    var sut: InterviewQuestionsViewModel!

    override func setUp() {
        super.setUp()
        sut = InterviewQuestionsViewModel()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_initialized_viewModel() {
        XCTAssertNotNil(sut)
    }
    
    func test_init_settingQuestions() {
        let questions = [Question]
            .stub(withCount: 3)
            .setting(\.question, to: "What is a View?")
        sut.questions = questions
        XCTAssertEqual(sut.questions, questions)
    }
    
    func test_questionsUpdated() {
        let questionsUpdatedException = expectation(description: "Questions Updated")
        let questions = [Question]
            .stub(withCount: 3)
            .setting(\.question, to: "What is a View?")
        
        sut.questionsUpdated = questionsUpdatedException.fulfill
        
        sut.questions = questions
        waitForExpectations(timeout: 0.2)
    }
}

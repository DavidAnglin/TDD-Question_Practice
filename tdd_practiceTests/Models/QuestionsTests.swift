//
//  QuestionsTests.swift
//  tdd_practiceTests
//
//  Created by David Anglin on 10/22/20.
//

@testable import tdd_practice
import XCTest

class QuestionsTests: XCTestCase {
    
    var sut: Question!

    override func setUp() {
        super.setUp()
        getQuestion()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func getQuestion() {
        sut = Question
            .stub(withId: 1)
            .setting(\.question, to: "What is a view?")
    }
    
    func test_conformsTo_decodable() {
        XCTAssertTrue((sut as Any) is Decodable)
    }
    
    func test_conformsTo_Equatable() {
        XCTAssertEqual(sut, sut)
    }
    
    func test_question_id() {
        XCTAssertEqual(sut.id, 1)
    }
    
    func test_question_question() {
        XCTAssertEqual(sut.question, "What is a view?")
    }
}

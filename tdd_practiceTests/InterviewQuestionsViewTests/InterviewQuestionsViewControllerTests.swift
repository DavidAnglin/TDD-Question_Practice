//
//  InterviewQuestionsViewControllerTests.swift
//  tdd_practiceTests
//
//  Created by David Anglin on 10/22/20.
//

@testable import tdd_practice
import XCTest

class InterviewQuestionsViewControllerTests: XCTestCase {
    
    var sut: InterviewQuestionsTableViewController!

    override func setUp() {
        super.setUp()
        let viewModel = InterviewQuestionsViewModel()
        sut = InterviewQuestionsTableViewController(viewModel: viewModel)
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_viewController_initializedWithViewModel() {
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.viewModel)
    }
    
    func test_titleIsSet_onViewDidLoad() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.title, "Questions")
    }
}

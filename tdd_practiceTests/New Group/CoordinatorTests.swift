//
//  CoordinatorTests.swift
//  tdd_practiceTests
//
//  Created by David Anglin on 10/22/20.
//

@testable import tdd_practice
import XCTest

class CoordinatorTests: XCTestCase {
    
    var sut: MainCoordinator!

    override func setUpWithError() throws {
        super.setUp()
        let navigationController = UINavigationController()
        sut = MainCoordinator(navigationController: navigationController)
    }

    override func tearDownWithError() throws {
        sut = nil
        super.tearDown()
    }
    
    func testCoordinator_whenInitialized_childCoordinatorIsEmpty() {
        XCTAssertTrue(sut.childCoordinators.isEmpty)
    }
    
    func testCoordinator_whenInitialized_navigationControllerInited() {
        XCTAssertNotNil(sut.navigationController)
    }
    
    func testCoordinator_onStart_viewControllerInNavController() {
        sut.start()
        XCTAssertTrue(sut.navigationController.viewControllers.count == 1)
    }
}

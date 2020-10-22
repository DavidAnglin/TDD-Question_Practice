//
//  MainCoordinator.swift
//  tdd_practice
//
//  Created by David Anglin on 10/22/20.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = InterviewQuestionsViewModel()
        let viewController = InterviewQuestionsTableViewController(viewModel: viewModel)
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
}

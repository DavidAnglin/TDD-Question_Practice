//
//  Coordinator.swift
//  tdd_practice
//
//  Created by David Anglin on 10/22/20.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

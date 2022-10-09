//
//  MainCoordinator.swift
//  ZemogaChallenge
//
//  Created by Carlos Obregon on 09/10/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.view.backgroundColor = .systemBackground
    }

    func start() {

    }
    
    
}

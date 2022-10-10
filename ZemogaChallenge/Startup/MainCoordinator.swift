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
        configureAppearance()
        let postController = PostViewController()
        navigationController.viewControllers = [postController]
    }
    
    
}

extension MainCoordinator {
    
    func configureAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemBackground
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        self.navigationController.navigationBar.tintColor = .black
        self.navigationController.navigationBar.standardAppearance = appearance
        self.navigationController.navigationBar.compactAppearance = appearance
        self.navigationController.navigationBar.scrollEdgeAppearance = appearance
    }
    
}

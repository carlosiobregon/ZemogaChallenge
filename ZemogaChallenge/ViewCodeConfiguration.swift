//
//  ViewCodeConfiguration.swift
//  ZemogaChallenge
//
//  Created by Carlos Obregon on 09/10/22.
//

import Foundation

protocol ViewCodeConfiguration {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodeConfiguration {

    func configureViews() {}
    
    func applyViewCode() {
        buildHierarchy()
        setupConstraints()
        configureViews()
    }
}

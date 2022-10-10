//
//  LoadingActivityView.swift
//  ZemogaChallenge
//
//  Created by Carlos Obregon on 09/10/22.
//

import UIKit

class LoadingActivityView: UIView {
    
    //MARK: - Atributes
    private lazy var activity: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.style = .large
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndicator
    }()
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyViewCode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyViewCode()
    }
    
}

//MARK: - ViewCodeConfiguration
extension LoadingActivityView: ViewCodeConfiguration {
    func buildHierarchy() {
        addSubview(activity)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            activity.centerXAnchor.constraint(equalTo: centerXAnchor),
            activity.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
    }
    
    func configureViews() {
        activity.startAnimating()
    }
    
}

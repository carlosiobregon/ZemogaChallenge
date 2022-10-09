//
//  LoadingActivityView.swift
//  ZemogaChallenge
//
//  Created by Carlos Obregon on 09/10/22.
//

import UIKit

class LoadingActivityView: UIView {
    
    //Mark: - Atributes
    private lazy var activity: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        view.style = .large
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //Mark: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyViewCode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyViewCode()
    }
    
}

//Mark: - ViewCodeConfiguration
extension LoadingActivityView: ViewCodeConfiguration {
    func buildHierarchy() {
        addSubview(activity)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            activity.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activity.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
    }
    
    func configureViews() {
        activity.startAnimating()
    }
    
}

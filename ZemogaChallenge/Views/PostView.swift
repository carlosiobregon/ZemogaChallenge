//
//  PostView.swift
//  ZemogaChallenge
//
//  Created by Carlos Obregon on 9/10/22.
//

import UIKit

class PostView: UIView {

    //MARK: - Atributes
    private lazy var preloadView: LoadingActivityView = {
        let view = LoadingActivityView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = false
        return view
    }()
    
    private lazy var noPostView: NoPostView = {
        let view = NoPostView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = true
        return view
    }()
    
    private lazy var postTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isHidden = true
        return tableView
    }()
    
    var type: PostViewStatus?
    
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
extension PostView: ViewCodeConfiguration {
    func buildHierarchy() {
        addSubviews(preloadView, noPostView, postTableView)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            preloadView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            preloadView.leadingAnchor.constraint(equalTo: leadingAnchor),
            preloadView.trailingAnchor.constraint(equalTo: trailingAnchor),
            preloadView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            noPostView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            noPostView.leadingAnchor.constraint(equalTo: leadingAnchor),
            noPostView.trailingAnchor.constraint(equalTo: trailingAnchor),
            noPostView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            postTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            postTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            postTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            postTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
    }
    
    func configureViews() {
        
    }
    
}

// Mark: - AuxiliarView
extension PostView {
    public func configureView(byStatus status: PostViewStatus) {
        switch status {
        case .preload:
            preloadView.isHidden = false
            postTableView.isHidden = true
            noPostView.isHidden = true
            
        case .posts:
            preloadView.isHidden = true
            postTableView.isHidden = false
            noPostView.isHidden = true
            
        case .empty:
            preloadView.isHidden = true
            postTableView.isHidden = true
            noPostView.isHidden = false
        }
    }
}

enum PostViewStatus {
    case preload
    case empty
    case posts
}

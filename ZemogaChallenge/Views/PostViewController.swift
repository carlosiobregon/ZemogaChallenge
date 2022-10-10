//
//  PostViewController.swift
//  ZemogaChallenge
//
//  Created by Carlos Obregon on 8/10/22.
//

import UIKit

class PostViewController: UIViewController {

    //MARK: - Attributes
    var shareView =  PostView()

    
    //MARK: - Lifecycle
    override func loadView() {
        view = shareView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Posts"
        shareView.configureView(byStatus: .preload)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}


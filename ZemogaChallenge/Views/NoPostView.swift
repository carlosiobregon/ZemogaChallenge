//
//  NoPostView.swift
//  ZemogaChallenge
//
//  Created by Carlos Obregon on 9/10/22.
//

import UIKit

protocol INoPostView {
    func retryButtonTouched()
}

class NoPostView: UIView {
    
    //MARK: - Attributes
    private let lateralMargin: CGFloat = 35
    private let verticalMargin: CGFloat = 20
    private let buttonHeight: CGFloat = 35
    private let buttonWidth: CGFloat = 32
    
    
    //MARK: - Outlets
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Not post avaibable"
        return label
      }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .zero
        label.text = "Not post avaibable, please try again"
        return label
    }()
    
    private lazy var customButton: UIButton = {
        let button = UIButton()
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        button.layer.shadowOffset = CGSize(width: .zero, height: 8)
        button.layer.shadowRadius = 16
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = false
        button.setTitle("Retry", for: .normal)
        button.addTarget(self, action: #selector(retryButtonTouched), for: .touchUpInside)
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Delegate
    var delegate: INoPostView?
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyViewCode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyViewCode()
    }
    
    //Mark: - Actions
    @objc private func retryButtonTouched() {
        delegate?.retryButtonTouched()
    }
    
}


//Mark: - ViewCodeConfiguration
extension NoPostView: ViewCodeConfiguration {
    func buildHierarchy() {
        addSubviews(titleLabel, subtitleLabel, customButton)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            subtitleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            subtitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: lateralMargin),
            subtitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -lateralMargin)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: subtitleLabel.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: subtitleLabel.trailingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: subtitleLabel.topAnchor, constant: -verticalMargin)
        ])
        
        NSLayoutConstraint.activate([
            customButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            customButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            customButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: verticalMargin)
        ])
        
        guard let width = customButton.titleLabel?.intrinsicContentSize.width else {return}
        NSLayoutConstraint.activate([
            customButton.widthAnchor.constraint(equalToConstant: width + buttonWidth)
        ])
        
    }
    
}



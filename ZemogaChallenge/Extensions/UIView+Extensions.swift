//
//  UIView+Extensions.swift
//
//  Created by Carlos Obregon on 20/02/21.
//

import UIKit

public extension UIView {
  func addSubviews(_ views: UIView...) {
    for view in views {
      addSubview(view)
    }
  }
}

extension UIView {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}

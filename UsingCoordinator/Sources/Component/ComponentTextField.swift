//
//  CreateTextField.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

class ComponentTextField: UITextField {
    
    init(background: UIColor, placeholderTf: String) {
        super.init(frame: .zero)
        self.frame = .zero
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = background
        self.placeholder = placeholderTf
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UIView {
    public func setConstraintsTextField(subView: UITextField, areaTop: UILayoutGuide, topAnchor: CGFloat, leftAnchor: CGFloat, rightAnchor: CGFloat, heightAnchor: CGFloat  ) {
        addSubview(subView)
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: areaTop.topAnchor, constant: topAnchor),
            subView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: leftAnchor ),
            subView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: rightAnchor),
            subView.heightAnchor.constraint(equalToConstant: heightAnchor)
        ])
    }
}

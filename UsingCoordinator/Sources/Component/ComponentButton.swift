//
//  ButtonComponent.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

class ComponentButton: UIButton {
    
    init(title: String, background: UIColor = .clear, colorTitle: UIColor) {
        super.init(frame: .zero)
        self.frame = .zero
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = background
        self.setTitle(title, for: .normal)
        self.setTitleColor(colorTitle, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UIView {
    public func setConstraints(subView: UIButton, areaTop: UILayoutGuide, topAnchor: CGFloat, leftAnchor: CGFloat, rightAnchor: CGFloat, heightAnchor: CGFloat  ) {
        addSubview(subView)
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: areaTop.topAnchor, constant: topAnchor),
            subView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: leftAnchor ),
            subView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: rightAnchor),
            subView.heightAnchor.constraint(equalToConstant: heightAnchor)
        ])
    }
}

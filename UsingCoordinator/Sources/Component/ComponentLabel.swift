//
//  LabelComponent.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

class ComponentLabel: UILabel {
    
    init(_ title: String = String.empty, fontSize: UIFont = UIFont(name: "Georgia", size: 20)! ,fontColor: UIColor = .black, textAlign: NSTextAlignment = .left, frameL: CGRect = .zero) {
        super.init(frame: frameL)
        self.text = title
        self.textAlignment = textAlign
        self.font = fontSize
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = fontColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UIView {
    public func setConstraintsLabel(subView: UILabel, areaTop: UILayoutGuide, topAnchor: CGFloat, leftAnchor: CGFloat, rightAnchor: CGFloat, heightAnchor: CGFloat  ) {
        addSubview(subView)
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: areaTop.topAnchor, constant: topAnchor),
            subView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: leftAnchor ),
            subView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: rightAnchor),
        ])
    }
}

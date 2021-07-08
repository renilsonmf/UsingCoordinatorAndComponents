//
//  MainScreenView.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

class MainScreenView: UIView {
    
    var onScreenSelected: ((_ selected: SelectedScreen) -> Void)?
    
    //MARK: Starting creations
    override init(frame: CGRect){
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Creation View
    func createView() {
        self.backgroundColor = .systemGray
        setButtonOne()
        setButtonTree()
    }

    
    //MARK: Button One
    lazy var buttonOne: UIButton = {ComponentButton(title: "Botão One", background: .systemGreen, colorTitle: .brown)}()
    func setButtonOne() {
        setConstraints(subView: buttonOne, areaTop: self.safeAreaLayoutGuide, topAnchor: 100, leftAnchor: 20, rightAnchor: -20, heightAnchor: 50)
        
        buttonOne.addTarget(self, action: #selector(actionButtonOne), for: .touchUpInside)
    }
    
    @objc
    func actionButtonOne(sender: UIButton!) {
        onScreenSelected?(.ScreenOne)
    }
    
    //MARK: Button Tree
    lazy var buttonTree: UIButton = {ComponentButton(title: "Botão Tree", background: .systemRed, colorTitle: .black)}()
    func setButtonTree() {
        setConstraints(subView: buttonTree, areaTop: self.safeAreaLayoutGuide, topAnchor: 160, leftAnchor: 20, rightAnchor: -20, heightAnchor: 50)
        buttonTree.addTarget(self, action: #selector(actionButtonTree), for: .touchUpInside)
    }
    
    @objc
    func actionButtonTree(sender: UIButton!) {
        onScreenSelected?(.ScreenTree)
    }
    
}


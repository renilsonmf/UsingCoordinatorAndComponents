//
//  ScreenTwoView.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

class ScreenTwoView: UIView {
    
    
    
    var onButtonSelectedTwo: (() -> Void)?
    override init(frame: CGRect){
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView(){
        self.backgroundColor = .systemOrange
        setButtonScreenOne()
        setlabelScreenTwoName()
    }
    
    //MARK: Button
    lazy var buttonScreenTwo: UIButton = {ComponentButton(title: " X ", background: .systemBlue, colorTitle: .white)}()
    func setButtonScreenOne(){
        buttonScreenTwo.addTarget(self, action: #selector(actionButtonScreenTwo), for: .touchUpInside)
        setConstraints(subView: buttonScreenTwo, areaTop: self.safeAreaLayoutGuide, topAnchor: 5, leftAnchor: 2, rightAnchor: -300, heightAnchor: 30)
    }
    
    @objc
    func actionButtonScreenTwo(sender: UIButton!) {
        onButtonSelectedTwo?()
    }
    
    //MARK: Label
    lazy var labelScreenTwoName: UILabel = {ComponentLabel("Seja Bem vindo, \(NameUser.name)", textAlign: .center)}()
    func setlabelScreenTwoName(){
        setConstraintsLabel(subView: labelScreenTwoName, areaTop: self.safeAreaLayoutGuide, topAnchor: 100, leftAnchor: 20, rightAnchor: -20, heightAnchor: 50)
    }
}

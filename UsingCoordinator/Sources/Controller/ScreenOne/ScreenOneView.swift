//
//  ScreenOneView.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

class ScreenOneView: UIView {
    
    var onButtonSelected: (() -> Void)?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        createView()
        setButtonScreenOne()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView(){
        self.backgroundColor = .systemGreen
    }
    
    //MARK: Button Clique aqui tela ScreenOne
    lazy var buttonScreenOne: UIButton = {ComponentButton(title: "Clique para preencher seu nome", background: .orange, colorTitle: .black)}()
    func setButtonScreenOne(){
        buttonScreenOne.addTarget(self, action: #selector(actionButtonScreenOne), for: .touchUpInside)
        setConstraints(subView: buttonScreenOne, areaTop: self.safeAreaLayoutGuide, topAnchor: 200, leftAnchor: 20, rightAnchor: -20, heightAnchor: 50)
    }
    
    @objc
    func actionButtonScreenOne(sender: UIButton!) {
        print("ButtonScreenOne funcionou")
        setTextFieldName()
        setButtonSubmit()

    }
    
    //MARK: TextField One
    lazy var textFieldName: UITextField = {ComponentTextField(background: .white, placeholderTf: "Qual seu nome?")}()
    func setTextFieldName() {
        setConstraintsTextField(subView: textFieldName, areaTop: self.safeAreaLayoutGuide, topAnchor: 270, leftAnchor: 20, rightAnchor: -20, heightAnchor: 60)
    }
    
    //MARK: Button enviar
    lazy var buttonSubmit: UIButton = {ComponentButton(title: "Enviar", background: .blue, colorTitle: .white)}()
    func setButtonSubmit(){
        buttonSubmit.addTarget(self, action: #selector(actionButtonSubmit), for: .touchUpInside)
        setConstraints(subView: buttonSubmit, areaTop: self.safeAreaLayoutGuide, topAnchor: 350, leftAnchor: 20, rightAnchor: -20, heightAnchor: 50)
    }
    
    @objc
    func actionButtonSubmit(sender: UIButton!) {
        onButtonSelected?()
    }
}




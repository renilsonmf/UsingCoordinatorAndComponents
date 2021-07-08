//
//  ScreenTreeViewController.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//


import UIKit

class ScreenTreeViewController: UIViewController {
    
    var onButtonAddSelected: (() -> Void)?
    let screenTreeView = ScreenTreeView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButtonsBar()
        
    }
    
    deinit{
      print("ScreenTreeViewController saiu da memoria")
    }
    
    override func loadView() {
        self.view = screenTreeView
    }
    
    private func createButtonsBar() {
        
        let register = UIBarButtonItem(title: "Cadastrar", style: .plain, target: self, action: #selector(playTapped))
        register.tintColor = .black
        navigationItem.rightBarButtonItems = [register]
    }
    
    @objc
    func playTapped(sender: UIButton!) {
        print("funcionou")
        onButtonAddSelected?()
    }
}

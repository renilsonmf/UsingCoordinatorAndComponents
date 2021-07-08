//
//  ScreenOneViewController.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

class ScreenOneViewController: UIViewController {
    
    let screenOneView = ScreenOneView(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Primeira tela"
        setActionsButtons()
    }
    
    deinit{
      print("ScreenOneViewController saiu da memoria")
    }
    
    override func loadView() {
        self.view = screenOneView
    }
    
    private func setActionsButtons() {
        screenOneView.onButtonSelected = {
            guard let name = self.screenOneView.textFieldName.text else {return}
            NameUser.name = name
            self.navigationScrenTwo()
        }
    }
    
    func navigationScrenTwo() {
        let screenTwoViewController = ScreenTwoViewController()
        let navigationScreenTwo = UINavigationController(rootViewController: screenTwoViewController)
        navigationScreenTwo.modalPresentationStyle = .fullScreen
        navigationScreenTwo.modalTransitionStyle = .flipHorizontal
        self.present(navigationScreenTwo, animated: true, completion: nil)
    }

    
}

//
//  ScreenTwoViewController.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

class ScreenTwoViewController: UIViewController {
    
    let screenTwoView = ScreenTwoView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Segunda tela"
        setActionButton()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    deinit{
      print("ScreenTwoViewController saiu da memoria")
    }
    
    override func loadView() {
        self.view = screenTwoView
    }
    
    private func setActionButton() {
        screenTwoView.onButtonSelectedTwo = {
            self.dismiss(animated: true, completion: nil)
        }
    }
}

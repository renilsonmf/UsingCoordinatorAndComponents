//
//  ViewController.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

class MainScreenViewController: UIViewController {
    var onScreenSelected: ((_ selected: SelectedScreen) -> Void)?
    var mainScreenView = MainScreenView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setActionsButtons()
        self.title = "Tela principal"
    }
    
    deinit{
      print("MainScreenController saiu da memoria")
    }
 
    override func loadView() {
        self.view = mainScreenView
    }
    private func setActionsButtons() {
        mainScreenView.onScreenSelected = { selected in
            self.onScreenSelected?(selected)
        }
    }

}


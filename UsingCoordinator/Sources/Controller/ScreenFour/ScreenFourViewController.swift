//
//  ScreenFourViewController.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

class ScreenFourViewController: UIViewController {
    
    let screenFourView = ScreenFourView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Quarta tela"
    }
    
    deinit{
      print("ScreenFourViewController saiu da memoria")
    }
    
    override func loadView() {
        self.view = screenFourView
    }
    

}

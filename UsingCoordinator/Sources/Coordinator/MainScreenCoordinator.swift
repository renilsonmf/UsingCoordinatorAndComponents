//
//  MyOneCoordinator.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

public class MainScreenCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let mainScreenViewController = MainScreenViewController()
        
        mainScreenViewController.onScreenSelected = {screenSelected in
            self.setOptions(screenSelected: screenSelected)
        }
        self.navigationController.pushViewController(mainScreenViewController, animated: true)
    }
    
    private func setOptions(screenSelected: SelectedScreen) {
        switch screenSelected {
        case .ScreenOne:
            let coordinator = ScreenOneCoordinator(navigation: self.navigationController)
            coordinator.start()
        case .ScreenTree:
            let coordinator = ScreenTreeCoordinator(navigation: self.navigationController)
            coordinator.start()
        }
        
    }

}

//
//  ScreenTreeCoordinator.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

public class ScreenTreeCoordinator: Coordinator {
 
    let navigation: UINavigationController

    init(navigation: UINavigationController) {
        self.navigation = navigation
    }

    public func start() {
        let screenTreeViewController = ScreenTreeViewController()
    
        screenTreeViewController.onButtonAddSelected = {
            let screenFourViewController = ScreenFourCoordinator(navigation: self.navigation)
            screenFourViewController.start()
        }
        self.navigation.pushViewController(screenTreeViewController, animated: true)
        
    }
}

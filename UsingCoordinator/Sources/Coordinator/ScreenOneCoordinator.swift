//
//  ScreenOneCoordinator.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 07/07/21.
//

import UIKit

public class ScreenOneCoordinator: Coordinator {
 
    let navigation: UINavigationController
     
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    public func start() {
        DispatchQueue.main.async {
            let screenOneViewController = ScreenOneViewController()
            self.navigation.pushViewController(screenOneViewController, animated: true)
        }
    }
}

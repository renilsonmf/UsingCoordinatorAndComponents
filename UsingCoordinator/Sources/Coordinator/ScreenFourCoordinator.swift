//
//  ScreenFourCoordinator.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

public class ScreenFourCoordinator: Coordinator {
 
    let navigation: UINavigationController
     
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    public func start() {
        DispatchQueue.main.async {
            let screenFourViewController = ScreenFourViewController()
            self.navigation.pushViewController(screenFourViewController, animated: true)
        }
    }
}

//
//  ScreenTreeView.swift
//  UsingCoordinator
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

class ScreenTreeView: UIView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView(){
        self.backgroundColor = .red
    }
   
   
  
}

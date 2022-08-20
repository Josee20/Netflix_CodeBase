//
//  MainScreenViewController.swift
//  Netflix_CodeBase
//
//  Created by 이동기 on 2022/08/21.
//

import UIKit

class MainScreenViewController: BaseViewController {
    
    let mainView = MainScreenView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
}

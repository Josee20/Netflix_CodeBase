//
//  ViewController.swift
//  Netflix_CodeBase
//
//  Created by 이동기 on 2022/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let vc = MainScreenViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }


}


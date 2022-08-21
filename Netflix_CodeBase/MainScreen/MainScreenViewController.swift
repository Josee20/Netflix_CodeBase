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
    
        mainView.nButton.addTarget(self, action: #selector(NbuttonClicked), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(registerButtonNotificationObserver(notification:)), name: .registerButton, object: nil)
    }
    
    @objc func registerButtonNotificationObserver(notification: NSNotification) {
        if let backgroundPosterImage = notification.userInfo?["backgroundPosterImage"] as? String {
            mainView.backgroundPosterImage.image = UIImage(named: backgroundPosterImage)
        }
    }
    
    @objc func NbuttonClicked() {
        let vc = LoginScreenViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }

}

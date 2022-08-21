//
//  LoginScreenViewController.swift
//  Netflix_CodeBase
//
//  Created by 이동기 on 2022/08/21.
//

import UIKit

extension NSNotification.Name {
    static let registerButton = NSNotification.Name("registerButtonNotification")
}

class LoginScreenViewController: BaseViewController {
    
    var movieList = ["7번방의선물", "겨울왕국2", "광해", "괴물", "국제시장", "극한직업", "도둑들", "명량", "베테랑", "부산행", "아바타", "알라딘", "암살", "어벤져스엔드게임", "왕의남자", "태극기휘날리며", "택시운전사", "해운대"]
    
    let mainView = LoginScreenView()
    
    override func loadView() {
        self.view = mainView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.registerButton.addTarget(self, action: #selector(registerButtonClicked), for: .touchUpInside)
        
    }
    
    @objc func registerButtonClicked() {
        NotificationCenter.default.post(name: .registerButton, object: nil, userInfo: ["backgroundPosterImage":movieList.randomElement()!])
        
        dismiss(animated: true)
    }
    
    
}

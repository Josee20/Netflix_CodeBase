//
//  LoginScreenView.swift
//  Netflix_CodeBase
//
//  Created by 이동기 on 2022/08/21.
//

import UIKit
import SnapKit

class LoginScreenView: BaseView {
    
    let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let JACKFLIXLabel: UILabel = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 30)
        view.text = "JACKFLIX"
        view.textColor = .red
        view.textAlignment = .center
        return view
    }()
    
    let emailOrNumberTextField: TextFieldStyle = {
        let view = TextFieldStyle()
        view.placeholder = "이메일 주소 또는 전화번호"
        view.setTextFieldStyle()
        return view
    }()
    
    let passwordTextField: TextFieldStyle = {
        let view = TextFieldStyle()
        view.placeholder = "비밀번호"
        view.isSecureTextEntry = true
        view.setTextFieldStyle()
        return view
    }()
    
    let nicknameTextField: TextFieldStyle = {
        let view = TextFieldStyle()
        view.placeholder = "닉네임"
        view.setTextFieldStyle()
        return view
    }()
    
    let locationTextField: TextFieldStyle = {
        let view = TextFieldStyle()
        view.placeholder = "위치"
        view.setTextFieldStyle()
        return view
    }()
    
    let inputRecommendCodeTextField: TextFieldStyle = {
        let view = TextFieldStyle()
        view.placeholder = "추천 코드 입력"
        view.setTextFieldStyle()
        return view
    }()
    
    let registerButton: UIButton = {
        let view = UIButton()
        view.setTitle("회원가입", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        return view
    }()
    
    let inputMoreInfoLabel: UILabel = {
        let view = UILabel()
        view.text = " 추가 정보 입력 "
        view.textColor = .white
        view.font = .systemFont(ofSize: 17)
        view.textAlignment = .left
        return view
    }()
    
    let toggleSwitch: UISwitch = {
        let view = UISwitch()
        view.backgroundColor = .gray
        view.onTintColor = .red
        view.layer.cornerRadius = 15
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [backgroundView, JACKFLIXLabel, emailOrNumberTextField, passwordTextField, nicknameTextField, locationTextField, inputRecommendCodeTextField, registerButton, inputMoreInfoLabel, toggleSwitch].forEach { value in
            self.addSubview(value)
        }
    }
    
    override func setConstraints() {
        
        backgroundView.snp.makeConstraints {
            $0.height.equalTo(UIScreen.main.bounds.height)
            $0.width.equalTo(UIScreen.main.bounds.width)
        }
        
        JACKFLIXLabel.snp.makeConstraints {
            $0.height.equalTo(30)
            $0.width.equalTo(150)
            $0.centerX.equalTo(UIScreen.main.bounds.width / 2)
            $0.topMargin.equalTo(30)
        }
        
        emailOrNumberTextField.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.centerY.equalTo(UIScreen.main.bounds.height * 0.3)
            $0.height.equalTo(36)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(36)
            $0.topMargin.equalTo(emailOrNumberTextField.snp.bottom).offset(24)
        }
        
        nicknameTextField.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(36)
            $0.topMargin.equalTo(passwordTextField.snp.bottom).offset(24)
        }
        
        locationTextField.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(36)
            $0.topMargin.equalTo(nicknameTextField.snp.bottom).offset(24)
        }
        
        inputRecommendCodeTextField.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(36)
            $0.topMargin.equalTo(locationTextField.snp.bottom).offset(24)
        }
        
        registerButton.snp.makeConstraints {
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20)
            $0.height.equalTo(48)
            $0.topMargin.equalTo(inputRecommendCodeTextField.snp.bottom).offset(24)
        }
        
        inputMoreInfoLabel.snp.makeConstraints {
            $0.width.equalTo(120)
            $0.height.equalTo(30)
            $0.leadingMargin.equalTo(20)
            $0.topMargin.equalTo(registerButton.snp.bottom).offset(30)
        }
        
        toggleSwitch.snp.makeConstraints {
            $0.topMargin.equalTo(registerButton.snp.bottom).offset(27)
            $0.trailingMargin.equalTo(-20)
        }
        
        
    }
    
    
}

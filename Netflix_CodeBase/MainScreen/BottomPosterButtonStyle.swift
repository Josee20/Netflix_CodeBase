//
//  BottomPosterButtonStyle.swift
//  Netflix_CodeBase
//
//  Created by 이동기 on 2022/08/21.
//

import UIKit

class BottomPosterButtonStyle: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.imageView?.layer.cornerRadius = (UIScreen.main.bounds.width / 3 - 10) / 2
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 3
        self.layer.cornerRadius = (UIScreen.main.bounds.width / 3 - 10) / 2
    }
}

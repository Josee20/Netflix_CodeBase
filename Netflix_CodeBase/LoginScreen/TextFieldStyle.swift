//
//  TextFieldStyle.swift
//  Netflix_CodeBase
//
//  Created by 이동기 on 2022/08/21.
//

import UIKit

class TextFieldStyle: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setTextFieldStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setTextFieldStyle() {
        self.textAlignment = .center
        self.backgroundColor = .gray
        self.layer.cornerRadius = 5
        self.attributedPlaceholder = NSAttributedString(string: "\(self.placeholder ?? "need placeholder")", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
    }
    
}

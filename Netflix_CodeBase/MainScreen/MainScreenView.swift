//
//  MainScreenView.swift
//  Netflix_CodeBase
//
//  Created by 이동기 on 2022/08/21.
//

import UIKit
import SnapKit

class MainScreenView: BaseView {
    
    var backgroundPosterImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "어벤져스엔드게임")
        return view
    }()
    
    let backgroundBlackimage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "background")
        return view
    }()
    
    let nButton: UIButton = {
        let view = UIButton()
        view.titleLabel?.font = .boldSystemFont(ofSize: 54)
        view.setTitle("N", for: .normal)
        return view
    }()
    
    let tvProgramBtn: UIButton = {
        let view = UIButton()
        view.titleLabel?.font = .systemFont(ofSize: 16)
        view.setTitle("TV프로그램", for: .normal)
        return view
    }()
    
    let movieBtn: UIButton = {
        let view = UIButton()
        view.titleLabel?.font = .systemFont(ofSize: 16)
        view.setTitle("영화", for: .normal)
        return view
    }()
    
    let topMyContentsBtn: UIButton = {
        let view = UIButton()
        view.titleLabel?.font = .systemFont(ofSize: 16)
        view.setTitle("내가 찜한 콘텐츠", for: .normal)
        return view
    }()
    
    let bottomMyContentsBtn: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "check"), for: .normal)
        return view
    }()
    
    let bottomMyContentsLabel: UILabel = {
        let view = UILabel()
        view.text = "내가 찜한 컨텐츠"
        view.textColor = .white
        view.font = .systemFont(ofSize: 14)
        view.textAlignment = .center
        return view
    }()
    
    let playButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "play_normal"), for: .normal)
        return view
    }()
    
    let infoButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "info"), for: .normal)
        return view
    }()
    
    let infoLabel: UILabel = {
        let view = UILabel()
        view.text = "정보"
        view.textColor = .white
        view.font = .systemFont(ofSize: 14)
        view.textAlignment = .center
        return view
    }()
    
    let previewLabel: UILabel = {
        let view = UILabel()
        view.text = "미리보기"
        view.font = .boldSystemFont(ofSize: 18)
        view.textColor = .white
        return view
    }()
    
    let firstBtn: BottomPosterButtonStyle = {
        let view = BottomPosterButtonStyle()
        view.setImage(UIImage(named: "겨울왕국2"), for: .normal)
        return view
    }()
    
    let secondBtn: BottomPosterButtonStyle = {
        let view = BottomPosterButtonStyle()
        view.setImage(UIImage(named: "알라딘"), for: .normal)
        return view
    }()
    
    let thirdBtn: BottomPosterButtonStyle = {
        let view = BottomPosterButtonStyle()
        view.setImage(UIImage(named: "아바타"), for: .normal)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [backgroundPosterImage, backgroundBlackimage, nButton, tvProgramBtn, movieBtn, topMyContentsBtn, bottomMyContentsBtn, bottomMyContentsLabel, playButton, infoButton, infoLabel, previewLabel, firstBtn, secondBtn, thirdBtn].forEach { self.addSubview($0) }
    }
    
    override func setConstraints() {
        
        backgroundPosterImage.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width)
            $0.height.equalTo(UIScreen.main.bounds.height)
        }
        
        backgroundBlackimage.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width)
            $0.height.equalTo(UIScreen.main.bounds.height)
        }
        
        nButton.snp.makeConstraints {
            $0.leadingMargin.equalTo(10)
            $0.topMargin.equalTo(10)
            
        }
        
        topMyContentsBtn.snp.makeConstraints {
            $0.topMargin.equalTo(40)
            $0.trailingMargin.equalTo(-20)
        }
        
        movieBtn.snp.makeConstraints {
            $0.topMargin.equalTo(40)
            $0.trailingMargin.equalTo(topMyContentsBtn.snp.leading).offset(-36)
        }
        
        tvProgramBtn.snp.makeConstraints {
            $0.topMargin.equalTo(40)
            $0.trailingMargin.equalTo(movieBtn.snp.leading).offset(-36)
        }
        
        playButton.snp.makeConstraints {
            $0.width.equalTo(90)
            $0.height.equalTo(30)
            $0.centerX.equalTo(UIScreen.main.bounds.width / 2 )
            $0.centerY.equalTo(UIScreen.main.bounds.height * 0.72)
        }
        
        bottomMyContentsBtn.snp.makeConstraints {
            $0.width.equalTo(70)
            $0.height.equalTo(30)
            $0.topMargin.equalTo(playButton.snp.topMargin).offset(-10)
            $0.centerX.equalTo(UIScreen.main.bounds.width / 5 )
        }
        
        bottomMyContentsLabel.snp.makeConstraints {
            $0.width.equalTo(100)
            $0.height.equalTo(15)
            $0.centerX.equalTo(bottomMyContentsBtn)
            $0.topMargin.equalTo(bottomMyContentsBtn.snp.bottom).offset(10)
        }
        
        infoButton.snp.makeConstraints {
            $0.width.equalTo(30)
            $0.height.equalTo(30)
            $0.centerX.equalTo(UIScreen.main.bounds.width * 0.8)
            $0.topMargin.equalTo(playButton.snp.topMargin).offset(-10)
        }
        
        infoLabel.snp.makeConstraints {
            $0.width.equalTo(30)
            $0.height.equalTo(15)
            $0.topMargin.equalTo(infoButton.snp.bottom).offset(10)
            $0.centerX.equalTo(infoButton)
        }
        
        previewLabel.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(20)
            $0.leadingMargin.equalTo(0)
            $0.topMargin.equalTo(bottomMyContentsLabel.snp.bottom).offset(50)
        }
        
        secondBtn.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.width / 3 - 10)
            $0.height.equalTo(secondBtn.snp.width)
            $0.centerX.equalTo(UIScreen.main.bounds.width / 2)
            $0.topMargin.equalTo(previewLabel.snp.bottom).offset(15)
        }
        
        firstBtn.snp.makeConstraints {
            $0.width.equalTo(secondBtn)
            $0.height.equalTo(secondBtn)
            $0.trailingMargin.equalTo(secondBtn.snp.leading).offset(-15)
            $0.topMargin.equalTo(secondBtn.snp.topMargin)
        }
        
        thirdBtn.snp.makeConstraints {
            $0.width.equalTo(secondBtn)
            $0.height.equalTo(secondBtn)
            
            $0.leadingMargin.equalTo(secondBtn.snp.trailing).offset(15)
            $0.topMargin.equalTo(secondBtn.snp.topMargin)
        }
        
    }
    
    
    
}

//
//  HeadCollectionViewCell.swift
//  MockSpotify
//
//  Created by Kacio Batista on 29/03/20.
//  Copyright © 2020 Kacio Batista. All rights reserved.
//

import UIKit

class HeadCollectionViewCell: UICollectionViewCell {
    static let identifier = "headViewId"
    lazy var title:UILabel = {
        let title = UILabel(frame: .zero)
        title.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        title.textColor = .white
        title.text = "Good Night"
        title.translatesAutoresizingMaskIntoConstraints = false
        title.sizeToFit()
        return title
    }()
    
    lazy var v1:UIView = {
        let v = UIView()
        v.backgroundColor = .red
        return v
    }()
    
    lazy var v2:UIView = {
        let v = UIView()
        v.backgroundColor = .blue
        return v
    }()
    
    lazy var hStack:UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 5
        stack.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(LikedGroupBandsButton(frame: .zero))
        stack.addArrangedSubview(LikedGroupBandsButton(frame: .zero))
        return stack
    }()
    lazy var vStack:UIStackView = {
         let stack = UIStackView(frame: .zero)
         stack.axis = .vertical
         stack.distribution = .fillEqually
         stack.alignment = .fill
         stack.spacing = 10
         stack.autoresizingMask = [.flexibleWidth, .flexibleHeight]
         stack.translatesAutoresizingMaskIntoConstraints = false
         return stack
     }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    fileprivate func makeStackView() -> UIStackView {
        let stack = UIStackView(frame: .zero)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 10
        stack.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(LikedGroupBandsButton())
        stack.addArrangedSubview(LikedGroupBandsButton())
        return stack
    }
    fileprivate func setupUI(){
        addSubview(title)
        title.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        title.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        
//        vStack.addArrangedSubview(makeStackView())
        vStack.addArrangedSubview(makeStackView())
        vStack.addArrangedSubview(makeStackView())
        vStack.addArrangedSubview(makeStackView())

        addSubview(vStack)
        vStack.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10).isActive = true
        vStack.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        vStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        vStack.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        vStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

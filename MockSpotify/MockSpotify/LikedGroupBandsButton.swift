//
//  LikedGroupBandsButton.swift
//  MockSpotify
//
//  Created by Kacio Batista on 29/03/20.
//  Copyright © 2020 Kacio Batista. All rights reserved.
//

import UIKit

class LikedGroupBandsButton: UIButton {
    let imagemView:UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    let title:UILabel = {
        let view = UILabel(frame: .zero)
        view.textColor = .white
        view.text = "artic monkeys"
        view.numberOfLines = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        setupUI()
    }
    fileprivate func setupUI() {
        addSubview(imagemView)
        imagemView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        imagemView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        imagemView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        imagemView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3).isActive = true
        addSubview(title)
        title.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: imagemView.rightAnchor, constant: 10).isActive = true
        title.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

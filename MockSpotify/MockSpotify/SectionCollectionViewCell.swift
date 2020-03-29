//
//  SectionCollectionViewCell.swift
//  MockSpotify
//
//  Created by Kacio Batista on 28/03/20.
//  Copyright © 2020 Kacio Batista. All rights reserved.
//

import UIKit

class SectionCollectionViewCell: UICollectionViewCell {

    static let reuseIdentifier = "Cell"
    let title:UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Descripition"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var collecionView:UICollectionView = {
        let layoutFlow = UICollectionViewFlowLayout()
        layoutFlow.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layoutFlow)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "SubCell")
        collectionView.backgroundColor = .black
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
        initLabelViewLayout()
        initCollectionViewLayout()
    }
    fileprivate func initLabelViewLayout() {
        addSubview(title)
        title.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        title.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
    }
    fileprivate func initCollectionViewLayout() {
        addSubview(collecionView)
        collecionView.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10).isActive = true
        collecionView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        collecionView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        collecionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension SectionCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collecionView.dequeueReusableCell(withReuseIdentifier: "SubCell", for: indexPath)
        cell.backgroundColor = .white
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 80)
    }
    
}

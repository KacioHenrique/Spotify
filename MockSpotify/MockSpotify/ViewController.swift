//
//  ViewController.swift
//  MockSpotify
//
//  Created by Kacio Batista on 28/03/20.
//  Copyright © 2020 Kacio Batista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    override func loadView() {
        self.initView()
        self.homeCollectionViewController()
    }
    fileprivate func homeCollectionViewController() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.4)
        let collectionViewControllerHome = HomeCollectionViewController(collectionViewLayout: flowLayout)
        self.addChild(collectionViewControllerHome)
        self.view.addSubview(collectionViewControllerHome.view)
    }
    fileprivate func initView(color:UIColor = #colorLiteral(red: 0.2019210458, green: 0.9368191957, blue: 0.4621445537, alpha: 1)) {
        let frame = UIScreen.main.bounds
        let view = UIView(frame: frame)
        view.backgroundColor = color
        self.view = view
    }

}


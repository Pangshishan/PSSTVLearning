//
//  MainViewController.swift
//  PSSTVLearning
//
//  Created by 山不在高 on 17/6/5.
//  Copyright © 2017年 Pangshishan. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVC("Home")
        addChildVC("Rank")
        addChildVC("Discover")
        addChildVC("Profile")
    }

    fileprivate func addChildVC(_ storyName: String) {
        // 1. 拿到控制器
        let child = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        // 2. 添加
        addChildViewController(child)
    }
}

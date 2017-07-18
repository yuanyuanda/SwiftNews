//
//  MainTabbarController.swift
//  SwiftPro
//
//  Created by kepuna on 2017/5/17.
//  Copyright © 2017年 kepuna. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        p_setBarAppearance()
        p_addAllChildViewController()
        
    }

    func p_addAllChildViewController() {
    
        p_addChildViewController(childController: HomeViewController(), title: "首页", imageName: "tab_home")
        p_addChildViewController(childController: VideoViewController(), title: "视频", imageName: "tab_message")
        p_addChildViewController(childController: HeadLineViewController(), title: "微头条", imageName: "tab_find")
        p_addChildViewController(childController: MineViewController(), title: "未登录", imageName: "tab_my")
    }

    
    func p_addChildViewController(childController:UIViewController, title:String, imageName:String) {
        childController.tabBarItem.title = title;
        childController.tabBarItem = UITabBarItem.init(title: title, image: UIImage(named:imageName), selectedImage: UIImage(named: imageName + "_pre"))
//        childController.tabBarItem.image = UIImage(named:imageName)
//        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_pre")
        let nav = NavigationViewController(rootViewController: childController)
        addChildViewController(nav)
    }
    
    func p_setBarAppearance() {
        let tabbar = UITabBar.appearance()
        tabbar.tintColor = MainColor
    }
    
}

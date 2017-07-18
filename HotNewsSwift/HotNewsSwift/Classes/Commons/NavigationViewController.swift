//
//  NavigationViewController.swift
//  SwiftPro
//
//  Created by kepuna on 2017/5/17.
//  Copyright © 2017年 kepuna. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {
    
    override class func initialize() {
        let nav = UINavigationBar.appearance()
        nav.tintColor = UIColor.darkGray
        
        let dict:[String : Any] = [NSForegroundColorAttributeName: UIColor.darkText,NSFontAttributeName : UIFont.boldSystemFont(ofSize: 18)]
        nav.titleTextAttributes = dict
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

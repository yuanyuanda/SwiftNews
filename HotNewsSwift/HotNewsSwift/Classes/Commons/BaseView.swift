//
//  BaseView.swift
//  SwiftPro
//
//  Created by kepuna on 2017/5/23.
//  Copyright © 2017年 kepuna. All rights reserved.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupUI()
        setLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {}
    func setLayout() {}
}

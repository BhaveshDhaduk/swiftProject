//
//  NJNavigationBar.swift
//  NJDouYu
//
//  Created by HuXuPeng on 2018/5/17.
//  Copyright © 2018年 njhu. All rights reserved.
//

import UIKit

class NJNavigationBar: UIView {
    
    public let bottomSepLineView = UIView()
    public let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        backgroundColor = UIColor.white
        addSubview(bottomSepLineView)
        addSubview(titleLabel)
        bottomSepLineView.backgroundColor = UIColor.lightGray
        titleLabel.numberOfLines = 0
        titleLabel.textColor = UIColor.black
        titleLabel.translatesAutoresizingMaskIntoConstraints = false;
        titleLabel.backgroundColor = UIColor.white
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.width, multiplier: 1, constant: 0));
        titleLabel.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.width, multiplier: 0, constant: 44))
        titleLabel.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.width, multiplier: 0.7, constant: 0))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.height, multiplier: 0, constant: UIApplication.shared.statusBarFrame.size.height))
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        bottomSepLineView.frame = CGRect(x: 0, y: frame.size.height, width: frame.size.width, height: 0.5)
    }
}

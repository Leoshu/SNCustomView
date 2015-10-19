//
//  SNCustomView.swift
//  SNCustomView
//
//  Created by Leo_hsu on 2015/10/19.
//  Copyright © 2015年 Leo_hsu. All rights reserved.
//

import UIKit
// Let (UILabel+image) align parent view X-center.
class SNCustomView: UIView {

    lazy var textLabel: UILabel = {
        let label = UILabel()
        self.addSubview(label)
        return label
        }()
    
    lazy var snButton: UIButton = {
        let snBtn = UIButton()
        snBtn.setImage(UIImage(named: "btn_share_n"), forState: UIControlState.Normal)
        snBtn.setImage(UIImage(named: "btn_share_p"), forState: UIControlState.Highlighted)
        self.addSubview(snBtn)
        return snBtn
        }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let image = snButton.imageView?.image
        let imageWidth: CGFloat = CGFloat(CGImageGetWidth(image?.CGImage))
        
        textLabel.sizeToFit()
        textLabel.center = CGPoint(x: self.frame.width / 2 - imageWidth/4, y: self.bounds.height / 2)
        snButton.frame = CGRectMake(0, 0, self.frame.width, self.frame.height)
        let leftOffset: CGFloat = textLabel.frame.size.width - imageWidth/2 + imageWidth/2
        snButton.imageEdgeInsets = UIEdgeInsetsMake(0.0, leftOffset, 0.0, 0.0)
    }

}

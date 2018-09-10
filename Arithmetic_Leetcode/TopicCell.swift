//
//  TopicCell.swift
//  Arithmetic_Leetcode
//
//  Created by Hanser on 2018/9/10.
//  Copyright © 2018 Mr.H. All rights reserved.
//

import UIKit

class TopicCell: UITableViewCell {
    var title: UILabel!

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        title = UILabel()
        title.text = "Hanser"
        title.sizeToFit()
        title.textAlignment = NSTextAlignment.center
        self .addSubview(title)
        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        title.frame = self.bounds
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

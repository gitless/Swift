//
//  SFCustumTabBar.swift
//  IShuHui
//
//  Created by v on 16/3/2.
//  Copyright © 2016年 v. All rights reserved.
//

import UIKit

class SFCustumTabBar: UIView {
    
    var items :[UITabBarItem]{
    
        set(newValue){
            for (index,value) in newValue.enumerate(){
                let  button = SFTabButton(type:.Custom)
                let  buttonW = CGRectGetWidth(self.bounds)/CGFloat(newValue.count)
                let  buttonX = CGFloat(index) * buttonW
                let  buttonH = CGRectGetHeight(self.bounds)
                button.frame = CGRect(x:buttonX , y: 0, width: buttonW, height: buttonH)
                button.backgroundColor = UIColor(red: 0.5, green: 0.2, blue: 0.2, alpha: 1)
                button.setTitle(value.title, forState: .Normal)
                button.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), forState: .Normal)
                self.addSubview(button)
            }
        }
        get{
            return self.items
        }
    
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(red: 0, green: 1, blue: 1, alpha: 0.5)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

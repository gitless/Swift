//
//  SFTabButton.swift
//  IShuHui
//
//  Created by v on 16/3/3.
//  Copyright © 2016年 v. All rights reserved.
//

import UIKit


protocol buttonClickDelegate: NSObjectProtocol{
    
    func buttonClick(SFTabButton: NSInteger)
}
class SFTabButton: UIButton {
    var Delegate: buttonClickDelegate?
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        self.Delegate?.buttonClick(2)
    }


}
 
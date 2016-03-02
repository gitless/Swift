//
//  SFTabController.swift
//  IShuHui
//
//  Created by v on 16/3/2.
//  Copyright © 2016年 v. All rights reserved.
//

import UIKit

class SFTabController: UITabBarController{
    

    lazy var items: [UITabBarItem] = {
            var i = [UITabBarItem]()
            return i
        
        }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addChildViewController(SFHomeController(), title: "漫画")
        self.addChildViewController(SFClassifyController(), title: "分类")
        self.addChildViewController(SFFeedBackController(), title: "反馈")
        self.addChildViewController(SFSubController(), title: "订阅")
        let custumTabBar = SFCustumTabBar(frame: self.tabBar.bounds)
        custumTabBar.items = self.items
        self.tabBar.addSubview(custumTabBar)
        self.view.bringSubviewToFront(custumTabBar)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func addChildViewController(childController: UIViewController ,title: String){
        let Nav = UINavigationController(rootViewController: childController)
        childController.tabBarItem.title = title
        self.items.append(childController.tabBarItem!)
        self.addChildViewController(Nav);
    }
    override func tabBar(tabBar: UITabBar, didBeginCustomizingItems items: [UITabBarItem]) {
        
    }
    override func tabBar(tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed: Bool) {
        
    }
    override func tabBar(tabBar: UITabBar, willBeginCustomizingItems items: [UITabBarItem]) {
        
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

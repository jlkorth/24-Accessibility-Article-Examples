//
//  TabBarController.swift
//  24A11y Article
//
//  Created by Jennifer Dailey on 9/18/18.
//  Copyright © 2018 Jennifer Dailey. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageLinkVC = UIStoryboard(name: "Name", bundle: nil).instantiateInitialViewController()!
        let switchVC = UIStoryboard(name: "Name", bundle: nil).instantiateViewController(withIdentifier: "Switch")
        let sliderVC = UIStoryboard(name: "Slider", bundle: nil).instantiateInitialViewController()!
        let stepperVC = UIStoryboard(name: "Stepper", bundle: nil).instantiateInitialViewController()!

        imageLinkVC.tabBarItem = UITabBarItem(title: "Example 1", image: nil, tag: 1)
        switchVC.tabBarItem = UITabBarItem(title: "Example 2", image: nil, tag: 2)
        sliderVC.tabBarItem = UITabBarItem(title: "Example 3", image: nil, tag: 3)
        stepperVC.tabBarItem = UITabBarItem(title: "Example 4", image: nil, tag: 4)
        
        self.setViewControllers([ imageLinkVC, switchVC, sliderVC, stepperVC ],
                                animated: true)
        
        self.selectedViewController = viewControllers!.first!
    }
    
}

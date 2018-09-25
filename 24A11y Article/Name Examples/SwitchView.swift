//
//  SwitchView.swift
//  24A11y Article
//
//  Created by Jennifer Dailey on 9/20/18.
//  Copyright © 2018 Jennifer Dailey. All rights reserved.
//

import UIKit

class SwitchView: UIView {
    
    @IBOutlet weak var switchLabel: UILabel!
    
    @IBAction func changeTheme(sender: UISwitch) {
        
        // Dark Theme Enabled
        if sender.isOn {
            switchLabel.textColor = UIColor.white
            self.backgroundColor = UIColor.darkGray

        } else {
            switchLabel.textColor = UIColor.black
            self.backgroundColor = UIColor.white
        }
    }
}
